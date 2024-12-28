```julia
function my_function(x::Number)
  if x > 0
    return x^2
  else
    return -x
  end
end

println(my_function(5))  # Output: 25
println(my_function(-3)) # Output: 3

# Now, this will throw a more informative error if the input type is not a number:
# println(my_function("hello"))  # Error: MethodError: no method matching my_function(::String)

# Handle non-number input gracefully:
function my_function(x)
  if isa(x, Number)
    if x > 0
      return x^2
    else
      return -x
    end
  else
    return "Input must be a number"
  end
end
println(my_function(5))
println(my_function(-3))
println(my_function("hello")) # Output: "Input must be a number"
```