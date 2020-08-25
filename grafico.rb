def chart(arr)
    max = arr.max
    
    for i in arr
        print "|" + "**" * i
        puts
    end
    print ">" + "--" * max
    puts
    
    1.upto(max) do |n|
        n = n.to_s
        print ' ' + n
    end
    puts
end



chart([5, 3, 2, 5, 10])