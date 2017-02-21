defmodule TcTest do
  @moduledoc """
  Tests Triangle Computer Module
  """

  use ExUnit.Case
  doctest Tc

  @doc """
  Test the happy path, in a way that esposes the api
  """
  test "Match a Equilateral triangle" do
    assert Tc.triangle_type(0, 0, 0) == :equilateral
  end
end
