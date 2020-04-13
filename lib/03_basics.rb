def who_is_bigger(a, b, c)
    if a == nil or b == nil or c == nil
        return "nil detected"
    end
    ary = [a, b, c]
    bigger = ary.max
    if bigger == a
        return "a is bigger"
    elsif bigger == b
        return "b is bigger"
    elsif bigger == c
        return "c is bigger"
    end
end

def reverse_upcase_noLTA(s)
    return s.reverse.upcase.delete "LTA"
end

def array_42(a)
    return a.index(42) != nil ? true : false
end

def magic_array(a)
    return a.flatten.sort.map{|x| x * 2}.delete_if{|x| x % 3 == 0}.uniq.sort
end
