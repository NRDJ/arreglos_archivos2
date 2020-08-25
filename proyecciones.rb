def new_file(data_to_w1, data_to_w2)
    File.write('resultados.data', "#{data_to_w1.truncate(2)}\n#{data_to_w2.truncate(2)}")
end

def add_percentages(sum_semestre1, sum_semestre2)
    sum_semestre1 *= 1.1
    sum_semestre2 *= 1.2

    new_file(sum_semestre1, sum_semestre2)
end

def total_sales(arr)
    count = 0
    sum_semestre1 = 0
    sum_semestre2 = 0

    for i in arr
        if count <= 5
            sum_semestre1 += i
        else
            sum_semestre2 += i
        end
        count += 1
    end

    add_percentages(sum_semestre1, sum_semestre2)
end

def read_file(filename)
    data = open(filename).read.split(',')
    array = data.map{ |nota| nota.to_f}
    
    total_sales(array)
end


read_file("ventas_base.db")


