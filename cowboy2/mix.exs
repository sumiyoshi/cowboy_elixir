defmodule Cowboy2.Mixfile do
  use Mix.Project

  def project do
    [app: :cowboy2,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application do
    [applications: [:logger, :cowboy],
    mod: {Cowboy2, []}]
  end

  defp deps do
    [{:cowboy, github: "ninenines/cowboy"}]
  end
end
