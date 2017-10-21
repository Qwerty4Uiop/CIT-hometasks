defmodule Mix.Tasks.Register do
  use Mix.Task

  def run(_) do
    Registration.run
  end
end