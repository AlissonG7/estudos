defmodule Countdown do

  def time(0), do: :ok
  def time(x) do
    IO.puts x
    Process.sleep(1000)
    time(x-1)
  end

end
