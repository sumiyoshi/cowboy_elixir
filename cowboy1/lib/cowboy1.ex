defmodule Cowboy1 do
 use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    dispatch = :cowboy_router.compile routes
    {:ok, _} = :cowboy.start_http :http, 100, [{:port, 3000}], [{:env, [{:dispatch, dispatch}]}]

    children = [
    ]

    opts = [strategy: :one_for_one, name: Cowboy1.Supervisor]
    Supervisor.start_link(children, opts)
  end

  defp routes do
    [
      {:_, [
            {"/", Cowboy1.Handlers.Hello, []},
          ]
      }
    ]
  end
end
