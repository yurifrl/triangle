defmodule TriangleChallengeTest do
  @moduledoc """
  Tests Triangle Computer Module
  """

  use ExUnit.Case, async: true
  doctest Triangle
  doctest Polygon

  @doc """
  Test the happy path, in a way that esposes the api
  """
  test "Triangles" do
    assert Triangle.type(1,1,1) === { :ok, :equilateral }
    assert Triangle.type(1,1,2) === { :ok, :isosceles }
    assert Triangle.type(1,2,3) === { :ok, :scalene }
    assert Triangle.type(1,2,3.2) === { :ok, :scalene }
    assert Triangle.type(1.0,1.0,1.1) === { :ok, :isosceles }
    assert Triangle.type(1,2,0) === { :error, :invalid }
    assert Triangle.type(1,2,-1) === { :error, :invalid }
  end

  @doc """
  Test the happy path, in a way that esposes the api
  """
  test "Polygons" do
    assert Polygon.type([1, 1, 1]) === { :ok, :equilateral }
    assert Polygon.type([1, 1, 1, 1]) === { :ok, :equilateral }
    assert Polygon.type([1, 1, 1, 1, 1, 1, 1, 1, 1]) === { :ok, :equilateral }
    assert Polygon.type([1, 1, 2]) === { :ok, :isosceles }
    assert Polygon.type([1, 2, 3]) === { :ok, :scalene }
    assert Polygon.type([1, 2]) === { :error, :invalid }
    assert Polygon.type([1, 2, 3, 4]) === { :ok, :scalene }
    assert Polygon.type([1, 2, 3]) === { :ok, :scalene }
    assert Polygon.type([1, 2, 3]) === { :ok, :scalene }
    assert Polygon.type([1, 2, 0]) === { :error, :invalid }
    assert Polygon.type([6, 6, 8, 8]) === { :ok, :isosceles }
    assert Polygon.type([1, 1, 1, 1, 2]) === { :ok, :isosceles }
    assert Polygon.type([2, 1, 1, 1, 1]) === { :ok, :isosceles }
    assert Polygon.type([2, 1, 1, 1, 1]) === { :ok, :isosceles }
    assert Polygon.type([9, 8, 8, 8, 8, 8]) === { :ok, :isosceles }
    assert Polygon.type([9, 8, 8, 8]) === { :ok, :isosceles }
  end
end
