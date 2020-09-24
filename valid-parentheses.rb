# The goal here to determine whether parentheses are in a valid order.
# We can use a stack to do this. We push into the stack for each opening brace
# We pop from the stack whenever we get a closing brace && last element was 
# the matching complement, else we push into the stack << this is already invalid
# If all match, stack size should be 0, else invalid
def is_valid(s)
    stack = []
    comp = { ']'=>'[', '}'=>'{', ')'=>'(' }
    close = [')', ']', '}']
    parens = s.split(//)
    (0..parens.length - 1).each { |i|
        if (close.include?(parens[i]))
           if (stack.last == comp[parens[i]])
               stack.pop()
           else
               stack.push(parens[i])
           end
        else
            stack.push(parens[i])
        end
    }
    stack.length == 0 ? true : false
end
