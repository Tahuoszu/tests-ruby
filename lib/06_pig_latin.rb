def translate(s)
    # Split string and call 'translate' recursively for each word
    words = s.split(" ")
    if words.count > 1
        translated_words = []
        words.each do |w|
            translated_words << translate(w)
        end
        return translated_words.join(" ")
    end
    # Start with a vowel
    if s.start_with?(/[aeiou]/)
        return s + "ay"
    # Start with a consonant except 'qu'
    elsif (not s.start_with?(/[aeiou]/)) &&
        s[1..-1].start_with?(/[aeiou]/) &&
        (not s.start_with?("qu"))
        return s[1..-1] + s[0] + "ay"
    # Start with 2 consonants or with 'qu'
    elsif (not s.start_with?(/[aeiou]{2}/)) &&
        (s[2..-1].start_with?(/[aeiou]/)) ||
        s.start_with?("qu")
        # Start with 1 consonants and 'qu'
        if s[1..2] == "qu"
            return s[3..-1] + s[0..2] + "ay"
        else
            return s[2..-1] + s[0..1] + "ay"
        end
    # Start with 3 consonants
    elsif not s.start_with?(/[aeiou]{3}/)
        return s[3..-1] + s[0..2] + "ay"
    end
end
