function generate_ascii_art(text)
    characters = Dict(
        'A' => """
            AAA  
           A   A 
          AAAAA 
         A     A
        A       A
        """,
        'B' => """
        BBBB  
        B   B 
        BBBB  
        B   B 
        BBBB  
        """,
        # Add more characters here...
    )

    text = uppercase(text)

    ascii_art = ""
    for line in 1:5
        for char in text
            if char in keys(characters)
                ascii_art *= characters[char][((line-1)*9+1):(line*9)] * "  "
            else
                ascii_art *= "         "
            end
        end
        ascii_art *= "\n"
    end

    return ascii_art
end

text = "HELLO"
println(generate_ascii_art(text))
