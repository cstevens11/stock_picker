def stock_picker (array)
    max_profit = 0 
    best_days = [0, 0]
    array.each_with_index do |price1, index1|
        array.each_with_index do |price2, index2|
            if ((price2 - price1) > max_profit) && (index1 < index2)
                max_profit = (price2 - price1)
                best_days = [index1, index2]
            end
        end
    end
    p max_profit
    p best_days    
end

stock_picker([17,3,6,9,15,8,6,1,10])
# should output [1,4]