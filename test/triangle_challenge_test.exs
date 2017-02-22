defmodule TriangleChallengeTest do
  @moduledoc """
  Tests Triangle Computer Module
  """

  use ExUnit.Case
  # doctest Triangle
  # doctest Polygon

  @doc """
  Test the happy path, in a way that esposes the api
  """
  test "Test Triangles" do
    assert Triangle.type(1,1,1) === :equilateral
    assert Triangle.type(1,1,2) === :isosceles
    assert Triangle.type(1,2,3) === :scalene
    assert Triangle.type(1,2,0) === :invalid
  end

  @doc """
  Test the happy path, in a way that esposes the api
  """
  test "Test Polygons" do
    # assert Polygon.type([1, 1, 1]) === :equilateral
    # assert Polygon.type([1, 1, 2]) === :isosceles
    # assert Polygon.type([1, 2, 3]) === :scalene
    # assert Polygon.type([1, 2]) === :invalid
    # assert Polygon.type([1, 2, 3, 4]) === :scalene
    # assert Polygon.type([1, 2, 3]) === :scalene
    # assert Polygon.type([1, 2, 0]) === :invalid
    # assert Polygon.type([6, 6, 8, 8]) === :isosceles
    assert Polygon.type([1, 1, 1, 1, 2]) === :isosceles
    # assert Polygon.type([2, 1, 1, 1, 1]) === :isosceles
    # assert Polygon.type([2, 1, 1, 1, 1]) === :isosceles
    # assert Polygon.type([9, 8, 8, 8, 8, 8]) === :isosceles
    # assert Polygon.type([9, 8, 8, 8]) === :isosceles
  end
end
