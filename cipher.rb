def cipher(string, number)
    new_string = string.split("")
    new_string = new_string.map { |char| char.ord}
    new_string = new_string.map { |num| 
        if (num + number > 90 && num + number< 97) || (num + number > 122)
            num = (num + number) - 26
        else
            num = num + number
        end
        num = num.chr

    }
    return new_string.join("")

end

message = "Caesar cipher"
puts cipher(message, 5)