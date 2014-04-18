def self.search(words, opts={})
	s= Book::Search.new(keywords, opts)
	return s.go!
end

class Book::Search
attr_accessor :phrase, :keys, :conditions, :query, :query_string, :results, :limit, :user_params, :book

def inititialize(phrase, opts ={})
	@phrase= phrase
	split_phrase
	if @keys.size > 0
		@keys.collect! {|k| k.upcase.strip}
		filter_soft_words
	end
	
	@fields = opts[:fields] ? opts[:field] : ["title", "body", "author"]
	raise "@fields must be an Array of strings" unless @fields.class = array
	
	@user = opts[:user] ? opts[:user] : : guest
	@limit = opts[:limit] ? opts[:limit] ; nil
	@limit = nil if ActsasNil.member?(@limit)
	
	end
	
	SoftWords = ["A", "IN", "IT", "AND", "OR", "TO", "FOR", "ON", "THE"]
	
	def go!
	return [] if @keys == [] || @keys == nil
	build_conditions_and_query
	adjust_query_for_user
	return get_map_weight_and_sort_results
	end
	
	def get_map_weight_and_sort_results 
	get_results
	map_results
	weight_map
	return sort_map_and_return_articles
	end
	
	def build_conditions_and_query
	@conditions = []
	@query= []
	
	@keys.each do |k|
		@fields.each {|sf| @query <<"upper(#{sf}) LIKE ?"}
		@fields.size.times {@conditiosn << "%#{k}%"}
		end
end

def get_results
	search_opts = {:conditions => [@query_string, @condition].flatten}
	search_opts[:limit] = @limit if @limit
	@results = Book.all(search_opts)
	end

def map_results
	@map = {} unless @map
	@results.each.do |a|
		@map[a][:instances] = 0
		@map[a][:matches] = 0
		@keys.each.do |k|
			total = 0
		[a.title, a.body, a.author].each do |text|
			total += self.count_words_in_text(k, text)
		end
		
		if total > 0
			@map[a][:instances] += total
			@map[a][:matches] +=1
			end
		end
	end
end

def weight_map(opts={})

	instance_weight = opts[:instances] ? opts[:matches] : 1.5
	match_weight = opts[:matches] ? opts[:matches] ; 1
	
	@map.each_key do |k|
		@map[k][:weighted] = (@map[k][:instances] * instance_weight) + (@map[k][:matches] * match_weight
		end
	end
def sort_map_and_return_articles
	@map.sort {|x,y| y[1][:weighted] <=> x[1][:weighted]}.collect{|r| r[0]}
  end
  
  def count_words_in_text(word, text)
    count = 0
    text.downcase! && word.downcase!
    while text.index(word)
      count += 1
      text = text[0, text.index(word)] + text[text.index(word) + word.size, text.size]
    end
    return count
  end    
   
  protected

  def split_phrase
    if @phrase.size > 0 && @phrase.match(/\w+/)
      @keys = @phrase.split(/\W+/)
    else
      []
    end
  end
  
  def assemble_query      
    @query_string = "(#{@query.join(" OR ")})"
  end

  def filter_soft_words
    # Filter out weak search terms
    SoftWords.each do |sw|
      @keys.delete sw 
    end
  end
end
		
