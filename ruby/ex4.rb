class SportsHandler
    def skip_sports(sports, skip)
      result = []
      # In Ruby, the each_with_index method is used to iterate over a collection (such as an array or enumerable) while keeping track of the index of the current element
      sports.each_with_index do |sport, index|
        if index >= skip
          result << "#{index + 1}:#{sport}"
        end
      end
    
      result
    end
  end
  
  sports = ['Cricket', 'TT', 'Football', 'Hockey']
  skip = 2
  
  sports_handler = SportsHandler.new
  result = sports_handler.skip_sports(sports, skip)
  puts result.inspect
  