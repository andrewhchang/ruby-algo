# Climb a staircase with n steps. You can only step 1 or 2 stairs at a time.
# Find the number of ways you could reach the top. E.g. 3 steps = 1+1+1 1+2 2+1 = 3 ways
# Strategy: realise that the rate in which combinations increase are fibonnaci sequence
# Sum of n = n-1 + n-2.
# We can calculate formula of fibonnaci(n) using Binet's formula http://www.maths.surrey.ac.uk/hosted-sites/R.Knott/Fibonacci/fibFormula.html
# Make sure we return result of n + 1 as our case problem set is 1 step behind
def climb_stairs(n)
    return 1 if n == 1
    return 2 if n == 2
    phi = (Math.sqrt(5) + 1)/2
    inverse_phi = (Math.sqrt(5) - 1)/2
    
    return ((phi ** (n + 1) - (inverse_phi ** n))/Math.sqrt(5)).round
end
