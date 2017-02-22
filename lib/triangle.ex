defmodule Triangle do
  @moduledoc """
  Documentation for Triangle Module.

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
  No negative or zeroed sides.
  sidenote, i don't like this very much

  ## Examples
    iex> Triangle.type([0, 0, 0])
    :invalid
  """
  def type(a, b, c) when a <= 0 or b <= 0 or c <= 0, do: :invalid

  @doc """
  Equilateral, when all sides are equal

  ## Examples
    iex> Triangle.type(2, 2, 2)
    :equilateral
  """
  def type(a, a, a), do: :equilateral

  @doc """
  Isosceles, when x are equal

  ## Examples
    iex> Triangle.type(1, 1, 2)
    :isosceles
  """
  def type(a, a, _), do: :isosceles
  def type(a, _, a), do: :isosceles
  def type(_, a, a), do: :isosceles

  @doc """
  Scalene, when they are, all different

  ## Examples
    iex> Triangle.type(1, 2, 3)
    :scalene
  """
  def type(_, _, _), do: :scalene

  @doc """
  Triangle Type: Is not a triangle when it doesn't have 3 sides.
  That's a fun thing about triangles.
  """
  def type(_), do: :invalid
end
