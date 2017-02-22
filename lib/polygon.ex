defmodule Polygon do
  @moduledoc """
  Polygons works for any shape whit more then 3 sides
  ## Examples
    iex> Polygon.type([1, 1, 1])
    :equilateral

    iex> Polygon.type([1, 1, 2])
    :isosceles

    iex> Polygon.type([1, 2, 3])
    :scalene

    iex> Polygon.type([1, 2, 0])
    :invalid
  """

  @doc """
  There are some general rules

  ## Examples
    iex> Polygon.type([2, 2])
    :invalid
  """
  def type(a) when length(a) < 3, do: :invalid

  @doc """
  The Entrypoint
  A n sided polygon
  """
  def type(ngon), do: type(ngon, [])

  @doc """
  If for some reason the user pass a accumulator
  """
  def type(a, []) when length(a) < 3, do: :invalid

  @doc """
    Stop condition
    Pipe Triangles to the Triangle Module
    I let it run til it finds a invalid list
  ## Examples
    iex> Polygon.type([1, 1, 1])
    :equilateral
  """
  def type([_, _], [ accumulator ]), do: accumulator

  @doc """
  """
  def type([_, _], [:equilateral, :equilateral]), do: :equilateral

  @doc """
  """
  def type([_, _], [:scalene, :scalene]), do: :scalene

  @doc """
  """
  def type([_, _], [_, _]), do: :isosceles

  @doc """
  Restart the proccess with the accumulators
  """
  def type([_, _], n), do: type(n)

  @doc """
  The loop condition
  Remember the last thing should be a call to other function, or we loose
  Tail Call Optimisation

  You can form triangles from a n sided polygon
  So we split it in haf, end type the triangle
  Not i haf, i extract a triangle out of it

  Initialize the accumulator

  ## Examples
    iex> Polygon.type([9, 8, 8, 8, 8, 8])
    :isosceles
    iex> Polygon.type([1, 2, 3, 4])
    :scalene
  """
  def type([ head | tail ], accumulator) do
    [b, c] = Enum.take(tail, 2)
    type(tail, [ Triangle.type(head, b, c) | accumulator ])
  end
end
