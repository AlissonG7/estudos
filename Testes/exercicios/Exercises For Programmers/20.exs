defmodule SalesCalculator do
  def ask_info() do
    {amount,_} =
      IO.gets("What is the order amount? ")
      |> Float.parse()

    ask_state()
    |> calc(amount)
    |> show_results()
  end

  defp ask_state() do
    state =
      IO.gets("What is your state? ")
      |> String.trim_trailing()

    case state do
      "Wisconsin" ->
        0.05 + ask_county()
      "Illinois" ->
        0.08
      _ ->
        0
    end
  end

  defp ask_county() do
    county = IO.gets("What is your county? ")
    |> String.trim_trailing()
    case county do
      "Eau Claire" ->
        0.005
      "Dunn" ->
        0.004
      _ ->
        0
    end
  end

  defp calc(tax_factor, amount) do
    tax = tax_factor * amount
    total = amount + tax
    {tax, total}
  end

  defp show_results({tax, total}) do
    if tax != 0 do
      IO.puts("The tax is $#{tax}.")
    end
    IO.puts("The total is $#{total}.")
  end
end

SalesCalculator.ask_info()
