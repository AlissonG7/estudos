defmodule NetWage do
  def calc(salary) do
    if is_number(salary) do
      cond do
        salary < 2000 -> salary * 0
        salary <= 3000 -> salary * 0.05
        salary <= 6000 -> salary * 0.10
        salary > 6000 -> salary * 0.15
      end
    else
      IO.puts "Invalid value: #{salary}"
    end
  end
end
