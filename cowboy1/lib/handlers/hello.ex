defmodule Cowboy1.Handlers.Hello do

  def init(_type, req, []) do
    {:ok, req, :no_state}
  end

  def handle(req, state) do
    {:ok, reply} = :cowboy_req.reply 200, [{"content-type", "text/plain"}], "hello world, cowboy1", req
    {:ok, reply, state}
  end

  def terminate(_, _, _), do: :ok

end