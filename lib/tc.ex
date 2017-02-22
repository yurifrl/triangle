defmodule Tc do
  @moduledoc """
  Documentation for Triangle Computer (Tc) Module.
  """

  @doc """
  Triangle Type.

  ## Examples
    iex> Tc.triangle_type(1, 1, 1)
    :equilateral

    iex> Tc.triangle_type(1, 1, 2)
    :isosceles

    iex> Tc.triangle_type(1, 2, 3)
    :scalene

    iex> Tc.triangle_type(1, 2, 0)
    :invalid
  """
  def triangle_type(a, b, c) do
    type [a, b, c]
  end

  @doc """
  Triangle Type: Is not a triangle when it doesn't have 3 sides.
  That's a fun thing about triangles.

  ## Examples
    iex> Tc.triangle_type(2, 2)
    :invalid

    iex> Tc.triangle_type(2, 2, 2, 2)
    :invalid
  """
  # TODO?

  ################################
  @doc """
  There are some general rules

  ## Examples
    iex> Tc.triangle_type([2, 2])
    :invalid
  """
  def type(a, n) when length(a) < 3 do
    {:invalid, n}
  end

  @doc """
  Triangle Type: no negative or zeroed sides.
  sidenote, i don't like this, is not very clear

  ## Examples
    iex> Tc.triangle_type([0, 0, 0])
    :invalid
  """
  def type([a, b, c], n) when a == 0 or b == 0 or c == 0 do
    {:invalid, n}
  end

  @doc """
  Equilateral, when all sides are equal

  ## Examples
    iex> Tc.type([2, 2, 2])
    :equilateral
  """
  def type([_a, _a, _a], n) do
    {:equilateral, n}
  end

  @doc """
  Isosceles, when x are equal
  This is tricky, with a triangle is easy if two are equal then is isosceles
  But what when we trow more items?
  A kite is isoceles, but it has two equal sizes
  I will throw matches as they apear for now

  ## Examples
    iex> Tc.type([1, 1, 2])
    :isosceles
  """
  def type([_a, _a, _], n) do
    {:isosceles, n}
  end
  def type([_a, _, _a], n) do
    {:isosceles, n}
  end
  def type([_, _a, _a], n) do
    {:isosceles, n}
  end

  @doc """
  Scalene, when they are, all different

  ## Examples
    iex> Tc.type([1, 2, 3])
    :scalene
  """
  def type([_, _, _], n) do
    {:scalene, n}
  end

  @doc """
  The loop clouse
  Remember the last thing should be a call to other function, or we loose
  Tail Call Optimisation

  You can form triangles from a n sided polygon
  So we split it in haf, end type the triangle
  Not i haf, i extract a triangle out of it

  Initialize the accumulator

  ## Examples
    iex> Tc.type([9, 8, 8, 8, 8, 8])
    :isosceles
  """
  # def type([ head | tail ]) do
  def type([head | tail]) do
    # elem type(polygon, []), 0
    result = type([head | Enum.take(tail, 2)], _)
    type(polygon, result)
  end

  def type([ head | tail ], accumulator) do
    result = type([head | Enum.take(tail, 2)])
    # type(tail, [ result | accumulator])
    type(tail, [ result | accumulator])
  end
end
