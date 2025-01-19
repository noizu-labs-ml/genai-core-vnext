defmodule GenAITest do
  # import GenAI.Test.Support.Common
  use ExUnit.Case,
    async: true

  require Logger
  doctest GenAI

#  defp context(options \\ nil)
#  defp context(_) do
#    Noizu.Context.system()
#  end

  test "stub" do
    assert 1 == 1
  end
end
