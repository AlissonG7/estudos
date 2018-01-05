user_input = IO.gets "Write your ability score:\n"
case Integer.parse(user_input) do
    :error -> IO.puts "Invaliid ability score: #{user_input}"
    {ability_score, _} ->
        ability_modifier = (ability_score - 10) / 2
        