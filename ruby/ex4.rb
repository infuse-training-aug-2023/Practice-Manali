class SportsHandler
  def skip_sports(sports, skip)
    result = []
    if skip >= sports.length
      puts "Error: Skip value is out of bounds"
      return result
    end

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
