defmodule Cowboy2.Handlers.Hello do

  def init(req, state) do
    handle(req, state)
  end

  def handle(req, state) do
    {:ok, req} = :cowboy_req.reply( 200, %{"content-type" => "text/plain"}, "hello world, cowboy2", req)
    {:ok, req, state}
  end

  def terminate(_, _, _), do: :ok

end