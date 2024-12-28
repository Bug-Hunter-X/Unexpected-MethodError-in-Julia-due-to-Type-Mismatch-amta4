```julia
function my_function(x)
  if x > 0
    return x^2
  else
    return -x
  end
end

println(my_function(5))  # Output: 25
println(my_function(-3)) # Output: 3

# However, this function will throw an error if x is not a number:
println(my_function("hello")) # Error: MethodError
```