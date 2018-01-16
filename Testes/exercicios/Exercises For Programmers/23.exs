# Troubleshooting Car Issues

# An expert system is a type of artificial intelligence program
# that uses a knowledge base and a set of rules to perform a
# task that a human expert might do. Many websites are
# available that will help you self-diagnose a medical issue by
# answering a series of questions. And many hardware and
# software companies offer online troubleshooting tools to
# help people solve simple technical issues before calling a
# human.
# Create a program that walks the user through troubleshoot-
# ing issues with a car. Use the following decision tree to build
# the system:

# 0  S: Is the car silent when you turn the key?
# 1    Y: Are the battery terminals corroded?
# 2      Y: Clean terminals and try starting again.
# 3      N: Replace cables and try again.
# 4    N: Does the car make a clicking noise?
# 5      Y: Replace the battery.
# 6      N: Does the car crank up but fail to start?
# 7        Y: Check spark plug connections.
# 8        N: Does the engine start and then die?
# 9          Y: Does your car have fuel injection?
# 10            Y: Get it in for service.
# 11            N: Check to ensure the choke is opening and closing.

defmodule Car do
  def fix do
    if ask("Is the car silent when you turn the key?") do                    #0
      if ask("Are the battery terminals corroded?") do                       #1
        result("Clean terminals and try starting again.")                    #2
      else
        result("Replace cables and try again.")                              #3
      end
    else
      if ask("Does the car make a clicking noise") do                        #4
        result("Replace the battery.")                                       #5
      else
        if ask("Does the car crank up but fail to start?") do                #6
          result("Check spark plug connections.")                            #7
        else
          if ask("Does the engine start and then die?") do                   #8
            if ask("Does your car have fuel injection?") do                  #9
              result("Get it in for service.")                               #10
            else
              result("Check to ensure the choke is opening and closing.")    #11
            end
          end
        end
      end
    end
  end

  defp ask(message) do
    input = IO.gets(message<>" ")
    |> String.downcase()
    |> String.trim_trailing()
    case input do
      "y" ->
        true
      "n" ->
        false
      _ ->
        IO.puts("Enter a valid option.")
        ask(message)
    end
  end

  defp result(message) do
    IO.puts(message)
  end

end
Car.fix
