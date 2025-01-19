defmodule GenAI.Graph.Node do
  @vsn 1.0
  @moduledoc """
  Represent a node on graph (generic type).
  """

  use GenAI.Graph.NodeBehaviour
  @derive GenAI.Graph.NodeProtocol
  defnodestruct(value: nil)

  defnodetype(value: term)

  @doc """
  Create a new node.
  """
  @spec new(keyword | nil) :: __MODULE__.t()
  def new(options \\ nil) do
    %__MODULE__{
      id: options[:id] || UUID.uuid4(),
      handle: options[:handle] || nil,
      name: options[:name] || nil,
      description: options[:description] || nil,
      inbound_links: %{},
      outbound_links: %{}
    }
  end
end

defimpl GenAI.Graph.MermaidProtocol, for: GenAI.Graph.Node do
  require GenAI.Graph.Link.Records
  alias GenAI.Graph.Link.Records, as: R

  @spec mermaid_id(GenAI.Graph.Node.t()) :: String.t()
  def mermaid_id(subject) do
    GenAI.Graph.MermaidProtocol.Helpers.mermaid_id(subject.id)
  end

  @spec encode(GenAI.Graph.Node.t()) :: {:ok, String.t()} | {:error, term}
  def encode(graph_element), do: encode(graph_element, [])

  @spec encode(GenAI.Graph.Node.t(), keyword) :: {:ok, String.t()} | {:error, term}
  def encode(graph_element, options), do: encode(graph_element, options, %{})

  @spec encode(GenAI.Graph.Node.t(), keyword, map) :: {:ok, String.t()} | {:error, term}
  def encode(graph_element, options, state) do
    case GenAI.Graph.MermaidProtocol.Helpers.diagram_type(options) do
      :state_diagram_v2 -> state_diagram_v2(graph_element, options, state)
      x -> {:error, {:unsupported_diagram, x}}
    end
  end

  @spec state_diagram_v2(GenAI.Graph.Node.t(), keyword, map) :: {:ok, String.t()} | {:error, term}
  def state_diagram_v2(graph_node, options, state)

  def state_diagram_v2(graph_node, _, state) do
    identifier = GenAI.Graph.MermaidProtocol.Helpers.mermaid_id(graph_node.id)
    container = List.first(state[:container])

    n =
      cond do
        graph_node.name ->
          """
          state "#{graph_node.name}" as #{identifier}
          """

        graph_node.handle ->
          """
          state "#{graph_node.handle}" as #{identifier}
          """

        :else ->
          """
          state "A Node" as #{identifier}
          """
      end

    transitions =
      graph_node.outbound_links
      |> Enum.map(fn {_, links} ->
        Enum.map(
          links,
          fn link_id ->
            # TODO - Node protocol needs to return a get_link method that accepts node, container
            {:ok, link} = GenAI.Graph.link(container, link_id)
            {:ok, R.connector(node: n)} = GenAI.Graph.Link.target_connector(link)
            "#{identifier} --> #{GenAI.Graph.MermaidProtocol.Helpers.mermaid_id(n)}"
          end
        )
      end)
      |> List.flatten()
      |> Enum.join("\n")

    if transitions != "" do
      graph = n <> transitions <> "\n"
      {:ok, graph}
    else
      graph = n <> transitions
      {:ok, graph}
    end
  end
end
