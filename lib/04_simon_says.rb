def echo(s)
    return s
end

def shout(s)
    return s.upcase
end

def repeat(s, n = 2)
    return Array.new(n, s).join(" ")
end

def start_of_word(s, i)
    return s[(0..i-1)]
end

def first_word(s)
    return s.split(" ")[0]
end

def titleize(s)
    return s.split(" ").map.with_index{|x,i| i != 0 && ["the", "and"].include?(x) ? x : x.capitalize}.join(" ")
end
