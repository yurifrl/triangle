defmodule TcTest do
  @moduledoc """
  To right the desired output i
  """

  use ExUnit.Case
  doctest Tc

  test "Match a Equilateral triangle" do
    test_value = [ {0, 0, 0}, :equilateral ]
    assert Tc.triangle_type(hd(test_value)) == tl(test_value)
  end
end
