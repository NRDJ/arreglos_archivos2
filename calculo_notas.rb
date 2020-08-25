def nota_mas_alta(child_array)
    only_integers = child_array.map { |x| x.to_i}
    biggest_number = only_integers.inject(0) { |biggest, n| n > biggest ? n : biggest }
end


def read_file(filename)
    data = open(filename).readlines
    data = data.map {|e| e.chomp}
    data = data.join(',').split(',').each_slice(5).to_a
    
    nota_mas_alta(data[0])
end

read_file("notas.data")


