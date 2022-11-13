class Stock
  def evaluate(stock)
    stock.sub("/n", ",")
    teste = stock.split(":")
    teste2 = teste[1].split(" ")
    teste3 = teste2.collect.with_index { |n, i| n.to_i } 
    temp1 = teste3.min() - teste3.max()
    menor = 0 
    if teste3.max == teste3[0]
        matriz = teste3
        for i in 0...matriz.length do
         if matriz[i] > matriz.min
            temp = matriz.min - matriz[i]
         end
        end
        matriz.delete(matriz.max)
        if teste3.index(teste3.max) > 0 && teste3.min == teste3[teste3.length-1]
            teste3.delete(teste3.min)
            temp = teste3.max - teste3.min
        else
            for i in 1...teste3.length do 
              if teste3[i] < teste3[i-1]
               temp = teste3[i] - teste3[i-1]
              end
           end
        end
        matriz = teste3.take(teste3.index(teste3.max())+1)
        if matriz.count > 1
        temp = matriz.max - matriz.min
        end
    else 
      matriz = teste3.take(teste3.index(teste3.max())+1).to_a
      temp = teste3.max - matriz.min
    end
    teste[0].concat(":",(temp).to_s)


    
  end

  def evaluate_stocks(stocks)
    teste = stocks.split("\n")
    teste2 = Array.new(teste.length)
    for i in 0...teste.length do
       teste2[i] = evaluate(teste[i])
    end
    teste2.sort { |a,b| a[4...a.length-1].to_i <=> b[4...b.length-1].to_i}
    end
end
