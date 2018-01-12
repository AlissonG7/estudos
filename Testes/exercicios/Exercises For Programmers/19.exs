# BMI Calculator

# You’ll often need to see if one value is within a certain range
# and alter the flow of a program as a result.
# Create a program to calculate the body mass index (BMI)
# for a person using the person’s height in inches and weight
# in pounds. The program should prompt the user for weight
# and height.
# Calculate the BMI by using the following formula:
#           bmi = (weight / (height × height)) * 703
# If the BMI is between 18.5 and 25, display that the person is
# at a normal weight. If they are out of that range, tell them if
# they are underweight or overweight and tell them to consult
# their doctor.

# Example Output________________________________________________________________
# Your BMI is 19.5.
# You are within the ideal weight range.
# or
# Your BMI is 32.5.
# You are overweight. You should see your doctor.

# Constraint____________________________________________________________________
# • Ensure your program takes only numeric data. Don’t
# let the user continue unless the data is valid.
defmodule BMI do
  def run() do
    # with {weight, ""} <- read_float("Enter your weight (pounds): "),
    #      {height, ""} <- read_float("Enter your height (inches): ") do
    #   bmi = (weight / (height * height)) * 703
    #   exibir_bmi(bmi)
    # else
    #   {_, _} ->
    #     IO.puts("Enter a valid number.")
    #   :error ->
    #     IO.puts("Enter a valid number.")
    # end
    #

    case read_float("Enter your weight (pounds): ") do
      {weight,""} ->
        case read_float("Enter your height (inches): ") do
          {height,""} ->
            bmi = (weight/(height*height))*703
            exibir_bmi(bmi)
          {_height, _b} ->
            IO.puts("Enter a valid number.")
          :error ->
            IO.puts("Enter a valid number.")
        end
      _ ->
        IO.puts("Enter a valid number.")
    end
  end
  #
  # def process(file_path) do
  #   with {:ok, data} <- read_file(file_path),
  #        {:ok, parsed} <- parse_data(data),
  #        {:ok, results} <- save_parsed_data(parsed) do
  #     send_reports(results)
  #   end

    case read_file(file_path) do
      {:ok, data}
    end
  end

  defp read_float(prompt) do
    prompt
    |> IO.gets()
    |> String.trim_trailing()
    |> Float.parse()
  end

  defp exibir_bmi(bmi) do
    IO.puts("Your BMI is #{bmi}.")
    cond do
      bmi < 18.5 ->
        IO.puts("You are underweight. You should see your doctor.")
      18.5 <= bmi and bmi < 25 ->
        IO.puts("You are within the ideal weight range.")
      bmi >= 25 ->
        IO.puts("You are overweight. You should see your doctor.")
    end
  end
end
BMI.run()
