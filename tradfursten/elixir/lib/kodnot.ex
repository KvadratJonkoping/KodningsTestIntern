defmodule Kodnot do


  def fib(n) do
    sqrt5 =:math.sqrt(5)
    :math.pow(1/2 * (1 + sqrt5), n) /sqrt5
    |> round
  end

  def fib_split_sum(n) do
    fib(n)
    |> Integer.to_string
    |> String.split("", trim: true)
    |> Enum.map(fn(i) -> {v,_ } = Integer.parse(i); v end)
    |> sum_list
  end

  def solve(stop) do
    Range.new(3, stop + 2)
    |> Enum.map(fn(i) -> fib_split_sum(i) end)
    |> sum_list
    |> rem(10)
  end


  def sum_list(list), do: Enum.reduce(list, 0, &(&1 + &2))


  def solve_everything() do
    IO.puts("10:  #{solve(10)}")
    IO.puts("50:  #{solve(50)}")
    IO.puts("100:  #{solve(100)}")
  end

end
