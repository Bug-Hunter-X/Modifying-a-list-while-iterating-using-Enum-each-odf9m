```elixir
list = [1, 2, 3, 4, 5]

# Correct approach: Create a new list
new_list = Enum.filter(list, fn x -> x != 3 end)

IO.inspect(new_list) 

# Alternative approach using Enum.reduce
new_list2 = Enum.reduce(list, [], fn x, acc ->
  if x != 3 do
    [x | acc]
  else
    acc
  end
end)
|> Enum.reverse()
IO.inspect(new_list2)
```