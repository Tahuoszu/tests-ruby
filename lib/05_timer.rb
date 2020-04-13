def time_string(s)
    # Best solution
    # Convert seconds to Time object
    # Use UTC (ie. remove time zone)
    # Format output string
    # return Time.at(s).utc.strftime("%H:%M:%S")
    seconds = 0
    minutes = 0
    hours = 0
    if s < 60
        seconds = s
    elsif s < 3600
        seconds = s % 60
        minutes = s / 60
    elsif
        seconds = s % 60
        minutes = s % 3600 / 60
        hours = s / 3600
    end
    return "#{hours.to_s.rjust(2, "0")}:#{minutes.to_s.rjust(2, "0")}:#{seconds.to_s.rjust(2, "0")}"
end
