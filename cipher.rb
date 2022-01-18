def cipher(string, number)
    new_string = string.split("")
    new_string = new_string.map { |char| char.ord}
    new_string = new_string.map { |num| 
        num = num + number
        if (num > 90 && num < 97) || (num > 122)
            num = num - (number * 2)
        end
        num = num.chr
    }
    return new_string.join("")

end

message = "Hello"
puts cipher(message, 5)