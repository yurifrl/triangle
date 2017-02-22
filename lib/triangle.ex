defmodule Triangle do
  @moduledoc """
  Documentation for Triangle Computer (Tc) Module.

  ## Examples
    iex> Triangle.type(1, 1, 1)
    :equilateral

    iex> Triangle.type(1, 1, 2)
    :isosceles

    iex> Triangle.type(1, 2, 3)
    :scalene

    iex> Triangle.type(1, 2, 0)
    :invalid
  """

  @doc """
  Triangle Type: no negative or zeroed sides.
  sidenote, i don't like this, is not very clear

  ## Examples
    iex> Triangle.type([0, 0, 0])
    :invalid
  """
  def type(a, b, c) when a == 0 or b == 0 or c == 0 do
    :invalid
  end

  @doc """
  Equilateral, when all sides are equal

  ## Examples
    iex> Triangle.type([2, 2, 2])
    :equilateral
  """
  def type(a, a, a) do
    :equilateral
  end

  @doc """
  Isosceles, when x are equal
  This is tricky, with a triangle is easy if two are equal then is isosceles
  But what when we trow more items?
  A kite is isoceles, but it has two equal sizes
  I will throw matches as they apear for now

  ## Examples
    iex> Triangle.type([1, 1, 2])
    :isosceles
  """
  def type(a, a, _) do
    :isosceles
  end
  def type(a, _, a) do
    :isosceles
  end
  def type(_, a, a) do
    :isosceles
  end

  @doc """
  Scalene, when they are, all different

  ## Examples
    iex> Triangle.type([1, 2, 3])
    :scalene
  """
  def type(_, _, _) do
    :scalene
  end

  @doc """
  Triangle Type: Is not a triangle when it doesn't have 3 sides.
  That's a fun thing about triangles.

  ## Examples
    iex> Triangle.type(2, 2)
    :invalid

    iex> Triangle.type(2, 2, 2, 2)
    :invalid
  """
  def type(_) do
    :invalid
  end
end
