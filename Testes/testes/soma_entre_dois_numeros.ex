defmodule Sum do

  #<def soma(a, b) do
  #  b-a==1
  #end
  #defp add()

  def soma(a,b) when a>b do
    0
  end

  def soma(a,b) do
    a + soma(a+1,b)
  end

Integer.parse
end


#1 2 3 4 5 == 2 3 4 5

Process.sleep(1000)
IO.puts("")
