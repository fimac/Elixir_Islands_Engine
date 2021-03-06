defmodule IslandsEngine.Game do
  use GenServer

  # def init(args) do
  #   {:ok, args}
  # end

  def handle_info(:first, state) do
    IO.puts("this message has been handled by handle_info/2, matching on :first.")
    {:noreply, state}
  end

  def handle_info(_, state) do
    {:noreply, state}
  end

  def handle_call(:demo, _from, state) do
    {:reply, state, state}
  end

  def call_demo(game) do
    GenServer.call(game, :demo)
  end

  def handle_cast(:demo, state) do
    {:noreply, %{state | test: "new value"}}
  end
end
