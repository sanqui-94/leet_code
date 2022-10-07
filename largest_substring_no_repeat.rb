def length_of_longest_substring(s)
    tamano = Array.new(s.length)
    max_length = 0
    substring = ""
    for i in 0...s.length do
        if !substring.include? s[i]
            substring << s[i]
            max_length = substring.length if substring.length > max_length
        else
            index = substring.index(s[i])
            aux = substring[index+1..-1]
            substring = aux
            substring << s[i]
        end
        
    end

    return max_length
end

# puts length_of_longest_substring("aabaab!bb")
# puts length_of_longest_substring("aab")