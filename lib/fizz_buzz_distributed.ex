defmodule FizzBuzzDistributed do
  @moduledoc false

  use GenServer

  @impl true
  def init(:ok) do
    {:ok, %{}}
  end

  @impl true
  def handle_cast(:rundown, state) do
    FizzBuzz.rundown()
    {:noreply, state}
  end

  @impl true
  def hand_call({:just_one, n}, _from, state) do
    FizzBuzz.rundown()
  end
end
