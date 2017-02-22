defmodule TcTest do
  @moduledoc """
  Tests Triangle Computer Module
  """

  use ExUnit.Case
  # doctest Tc

  @doc """
  Test the happy path, in a way that esposes the api
  """
  test "Basics" do
    # assert Tc.triangle_type(1,1,1) === :equilateral
    # assert Tc.triangle_type(1,1,2) === :isosceles
    # assert Tc.triangle_type(1,2,3) === :scalene
    # assert Tc.triangle_type(1,2,0) === :invalid
  end

  @doc """
  Test the happy path, in a way that esposes the api
  """
  test "Test EVERYTHING" do
    # assert Tc.type([1, 1, 1]) === :equilateral
    # assert Tc.type([1, 1, 2]) === :isosceles
    # assert Tc.type([1, 2, 3]) === :scalene
    # assert Tc.type([1, 2]) === :invalid
    # assert Tc.type([1, 2, 3, 4]) === :scalene
    # assert Tc.type([1, 2, 3]) === :scalene
    # assert Tc.type([1, 2, 0]) === :invalid
    # assert Tc.type([6, 6, 8, 8]) === :isosceles
    # assert Tc.type([1, 1, 1, 1, 2]) === :isosceles
    # assert Tc.type([2, 1, 1, 1, 1]) === :isosceles
    # assert Tc.type([2, 1, 1, 1, 1]) === :isosceles
    # assert Tc.type([9, 8, 8, 8, 8, 8]) === :isosceles
    assert Tc.type([9, 8, 8, 8]) === :isosceles
  end
end
