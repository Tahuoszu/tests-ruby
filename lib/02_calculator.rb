def add(a, b)
    return a + b
end

def subtract(a, b)
    return a - b
end

def sum(a)
    return a.sum
end

def multiply(a, b)
    return a * b
end

def power(a, b)
    return a ** b
end

def factorial(n)
    if n > 1
        return n * factorial(n - 1)
    else
        return 1
    end
end
