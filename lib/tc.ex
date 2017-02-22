defmodule Tc do
  @moduledoc """
  Documentation for Triangle Computer (Tc) Module.
  """


  @doc """
  Triangle Type: Is not a triangle when it doesn't have 3 sides.
  That's a fun thing about triangles.

  ## Examples
    iex> Tc.triangle_type([2, 2])
    :invalid
  """
  def triangle_type(a) when length(a) !== 3 do
    :invalid
  end

  @doc """
  Triangle Type: no negative or zero sides.
  sidenote, i don't like this, is not very clear

  ## Examples
    iex> Tc.triangle_type([0, 0, 0])
    :invalid
  """
  def triangle_type(n) when n[0] < 0 or n[1] < 0 or n[2] < 0 do
    :invalid
  end

  @doc """
  Triangle Type: Equilateral.

  ## Examples
    iex> Tc.triangle_type([2, 2, 2])
    :equilateral
  """
  def triangle_type([a, a, a]) do
    :equilateral
  end

  @doc """
  Triangle Type: Equilateral.

  ## Examples
    iex> Tc.triangle_type([1, 1, 2])
    :isosceles
  """
  def triangle_type([a, b, c]) when a == b and a != c do
    :isosceles
  end

  @doc """
  Triangle Type: Scalene.

  ## Examples
    iex> Tc.triangle_type([1, 2, 3])
    :scalene
  """
  def triangle_type([a, b, c]) when a != b and a != c do
    :scalene
  end
end
