defmodule GenAITest do
  # import GenAI.Test.Support.Common
    use ExUnit.Case
    require Logger
    doctest GenAI

    def context() do
      Noizu.Context.system()
    end

    test "stub" do
        assert 1 == 1
    end
end
