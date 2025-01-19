defmodule GenAI.Graph.NodeTest do
  # import GenAI.Test.Support.Common
  use ExUnit.Case,
    async: true

  # alias GenAI.Records, as: R

  require Logger
  require GenAI.Records.Link

  doctest GenAI.Graph.Node
  doctest GenAI.Graph.NodeProtocol
end
