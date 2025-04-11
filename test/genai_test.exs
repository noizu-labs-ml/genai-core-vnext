defmodule VNextGenAITest do
  # import VNextGenAI.Test.Support.Common
  use ExUnit.Case,
    async: true

  require Logger
  doctest VNextGenAI

  #  defp context(options \\ nil)
  #  defp context(_) do
  #    Noizu.Context.system()
  #  end

  test "stub" do
    assert 1 == 1
  end
end
