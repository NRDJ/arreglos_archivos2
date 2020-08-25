def nota_mas_alta(big_arr)

    new_arr = []
    for small_arr in big_arr
        only_integers = small_arr.map { |x| x.to_i}
        new_arr << only_integers
    end

    count = 0
    last_arr = []
    for small_arr in new_arr
        biggest = 0
        for n in small_arr
            if n > biggest
                biggest = n
            end
        end
        last_arr.insert(count, biggest)
        count+=1
    end
    return last_arr
end

def read_file(filename)
    data = open(filename).readlines
    data = data.map {|e| e.chomp}
    data = data.join(',').split(',').each_slice(5).to_a
    nota_mas_alta(data)
end

read_file("notas.data")
