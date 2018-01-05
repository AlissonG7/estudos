distance = 200
time = 4
average_velocity = fn -> distance/time end
IO.puts("Distance traveled: #{distance}")
IO.puts("Time elapsed: #{time}")
IO.puts("Average velocity: #{average_velocity.()}")
