defmodule TcTest do
  @moduledoc """
  Tests Triangle Computer Module
  """

  use ExUnit.Case
  doctest Tc

  @doc """
  Test the happy path, in a way that esposes the api
  """
  test "Test the expected values" do
    values = [
      [ [1, 1, 1], :equilateral ],
      [ [1, 1, 2], :isosceles ],
      [ [1, 2, 3], :scalene ],
      [ [1, 2], :invalid ],
      [ [1, 2, 3, 4], :invalid ],
      [ [1, 2, 3], :invalid ],
    ]

    Enum.map values, fn(x) -> assert Tc.triangle_type(hd(x)) == List.last(x) end
  end
end
