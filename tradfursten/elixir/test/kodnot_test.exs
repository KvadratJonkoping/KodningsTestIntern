defmodule KodnotTest do
  use ExUnit.Case
  doctest Kodnot

  import Kodnot

  test "fib 0 = 1" do
    assert fib(1) == 1
  end

  test " first 5 fibonachi" do
    assert [1, 2, 3, 4, 5] 
    |> Enum.map(&fib/1) == [1, 1, 2, 3, 5]
  end

  test "Split fib 10" do
    assert 10 == fib_split_sum(10)
  end


  test "Solve for 10" do
    assert 8 == solve(10)
  end

  test "Solve for 50" do
     assert 7 ==solve(50)
  end
  test "Solve for 100" do
     assert 9 == solve(100)
  end
end
