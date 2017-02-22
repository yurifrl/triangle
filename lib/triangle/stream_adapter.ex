defmodule Triangle.StreamAdapter do
  use GenServer

  @type read :: :stream

  @moduledoc """
  Creates a stream that will read a file and apply the `Triangle.type/1` to every
  3 number group and Return the computed result as stream
  """

  ### Client API
  @doc """
  Start the server
  """
  def start_link do
    GenServer.start_link(__MODULE__, :ok, [])
  end

  @doc """
  Client process
  """
  def begin(pid, path) do
    GenServer.cast(pid, {:begin, path})
  end

  @doc """
  Client read
  """
  def read(pid) do
    GenServer.call(pid, {:read})
  end

  ### Server Callbacks

  @doc """
  Initilization response, called by start_link
  """
  def init(:ok) do
    {:ok, []}
  end

  @doc """
  Creates a stream that will read a file and apply the `Triangle.type/1` to every
  3 number group and Return the computed result as stream

  ##Example
    Triangle.StreamAdapter.read("./test/test.data")
    #=> :stream
  """
  # @spec handle_read(String.t) :: :stream | { :error, String.t }
  def handle_cast({:begin, path}, _from) do
    stream =
      path
      |> File.stream!([], 2048)
      |> Stream.map(&read_chunk/1)
      |> Stream.flat_map(&List.flatten/1)

    { :noreply, stream }
  end

  @doc """
  Read from file
  """
  def handle_call({:read}, from, stream) do
    {:reply, stream, stream}
  end

  @doc """
  Process a string, breaking it in chunks of 3 and giving it's types

  ##Example
    iex> Triangle.StreamAdapter.read_chunk("314")
    [{:ok, :scalene, {3, 1, 4}}]
  """
  @spec read_chunk(String.t) :: list | { :error, Strint.t }
  def read_chunk(string) do
    string
    |> String.graphemes
    |> Enum.filter_map(&is_numeric/1, &String.to_integer/1)
    |> Enum.chunk(3)
    |> Enum.map(&read_array/1)
  end

  def is_numeric(str) do
    case Float.parse(str) do
      {_num, ""} -> true
      _          -> false
    end
  end

  defp read_array([a, b, c]), do: Tuple.append Triangle.type(a, b, c), {a, b, c}
end
