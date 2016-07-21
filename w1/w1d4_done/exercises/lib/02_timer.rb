class Timer
    def seconds
        @seconds = 0
    end
    def seconds=(seconds)
        @seconds = seconds
    end
    def time_string
        seconds = @seconds
        secs_array = []
        secs_strings = []
        secs_array[0] = (seconds/3600).floor
        secs_array[1] = ((seconds % 3600)/60).floor
        secs_array[2] = seconds % 60
        3.times  do |i| 
            if secs_array[i] > 9 
                secs_strings << secs_array[i].to_s
            else
                secs_strings << '0' +  secs_array[i].to_s
            end
        end
        secs_strings.join(":")
    end
end