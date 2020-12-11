require 'pry'

def my_all?(collection)
    #binding.pry
    i = 0
    coll_len = collection.length
    #puts coll_len
    block_return_values = []
    while i < coll_len
        #puts yield(collection[i])
        block_return_values << yield(collection[i])
        i += 1
    end

    if block_return_values.include?(false)
       #puts false
       false
    else 
        #puts true
        true
    end
    #puts block_return_values
end

my_all?([1,2,3,4,5]) {|item| item < 2}