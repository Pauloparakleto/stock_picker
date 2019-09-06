class Stock_picker
def stock_picker array_of_prices
    @array_of_prices = array_of_prices
    @profit = 0
    @days = []
    for i in 0...@array_of_prices.length 
        for j in 0...@array_of_prices.length
            #Adding the conditional && at the end of the follow condition, will avoid the machine to change the @profit and @days variables
            # for cases where the day to buy is AFTER the day to sell.
            if (@array_of_prices[j] - @array_of_prices[i] > @profit && j > i)
                puts "The day to buy #{@array_of_prices.index(@array_of_prices[i])} whose price is R$#{@array_of_prices[i]}.00,  
against the day to sell whose price is R$#{@array_of_prices[j]}.00"
                @profit = @array_of_prices[j] - @array_of_prices[i]
                puts "give us a profit of R$#{@profit}.00."
                @days = [i, j]
            end
        end
    end
    return @days
end
end
test = Stock_picker.new
puts test.stock_picker [17,3,6,9,15,8,6,1,10]
