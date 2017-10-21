defmodule Registration.Mixfile do
  use Mix.Project

  def project do
    [
      app: :registration,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      mod: {Registration, []},
      applications: [:httpotion]
    ]
  end

  defp deps do
    [
      {:httpotion, "~> 3.0.2"},
      {:poison, "~> 3.1"}
    ]
  end
end
