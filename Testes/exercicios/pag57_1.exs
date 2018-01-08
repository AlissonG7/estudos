defmodule Tax do
  def calc(salary) do
    cond do
      salary < 2000 -> salary * 0
      salary <= 3000 -> salary * 0.05
      salary <= 6000 -> salary * 0.10
      salary > 6000 -> salary * 0.15
    end
  end
end
