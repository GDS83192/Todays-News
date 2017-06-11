class TodaysNews::CLI
def call
  start
end

def list
  puts ""
  puts "************* Todays Stories *************"
  puts ""
  TodaysNews::Story.all.each.with_index(1) do |story, i|
    puts "#{i}. #{story.name}"
  end
  puts ""
end

def print_story(story)
  puts ""
  puts "-------------- #{story.name} --------------"

  puts ""
  puts story.summary
  puts ""


end

def start
  list
  input = nil
  while input != "exit"
    puts ""
    puts "What article would you more information on?"
    puts ""
    puts "Enter list to see the articles again."
    puts "Enter exit to end the program."
    puts ""
    input = gets.strip
    if input == "list"
      list

    elsif input.to_i > 0
      if movie = NowPlaying::Movie.find(input.to_i)
        print_story(story)
        #So I can just skip the by name method
      end
    end
  end
  puts "Goodbye!!!"
end
end
