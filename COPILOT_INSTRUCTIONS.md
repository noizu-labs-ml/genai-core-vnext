ATTENTION COPILOT
=============

Rewrite file with the following credo items addressed.
Retain existing doc comments, line spacing, etc. Return file verbatim other than changes to address listed issues.

Instructions:
First list/group types of credo items. 
Then for each group state what you will do to address (e.g. Add spec for methods with out).
Then in code fence: 

```````elixir  

``````` 

rewrite file with changes to address listed items.

NOTE: use multiple back ticks in the code fence to allow nested fences in code. 



* * *
```credo


  GenAI.Graph
┃ 
┃ [R] ↘ The alias `GenAI.Types` is not alphabetically ordered among its group.
┃       lib/genai/graph.ex:7:9 (GenAI.Graph)
┃ 
┃       alias GenAI.Types, as: T
┃             ^^^^^^^^^^^
┃       
┃ [R] ↘ `alias` calls should be consecutive within a module.
┃       lib/genai/graph.ex:13:3 (GenAI.Graph)
┃ 
┃       alias GenAI.Graph.Link.Records, as: Link
┃       ^^^^^
┃       
┃ [R] ↘ alias must appear before require
┃       lib/genai/graph.ex:13:9 (GenAI.Graph)
┃ 
┃       alias GenAI.Graph.Link.Records, as: Link
┃             ^^^^^^^^^^^
┃       
┃ [R] ↘ use must appear before alias
┃       lib/genai/graph.ex:15:7 (GenAI.Graph)
┃ 
┃       use GenAI.Graph.NodeBehaviour
┃           ^^^^^^^^^^^
┃       
┃ [R] → Functions should have a @spec type specification.
┃       lib/genai/graph.ex:75:7 (GenAI.Graph)
┃ 
┃       def new(options \\ nil)
┃           ^^^
┃       
┃ [R] → Functions should have a @spec type specification.
┃       lib/genai/graph.ex:77:7 (GenAI.Graph.new)
┃ 
┃       def new(options) do
┃           ^^^
┃       
┃ [R] → Functions should have a @spec type specification.
┃       lib/genai/graph.ex:105:7 (GenAI.Graph.setting)
┃ 
┃       def setting(%__MODULE__{settings: settings}, setting, options, default \\ nil) do
┃           ^^^^^^^
┃       
┃ [R] ↘ `require` calls should be consecutive within a module.
┃       lib/genai/graph.ex:125:3 (GenAI.Graph)
┃ 
┃       require GenAI.Graph.Types
┃       ^^^^^^^
┃       
┃ [R] ↘ require must appear before public function
┃       lib/genai/graph.ex:125:11 (GenAI.Graph)
┃ 
┃       require GenAI.Graph.Types
┃               ^^^^^^^^^^^
┃       
┃ [R] ↘ `alias` calls should be consecutive within a module.
┃       lib/genai/graph.ex:126:3 (GenAI.Graph)
┃ 
┃       alias GenAI.Graph.Types, as: G
┃       ^^^^^
┃       
┃ [R] ↘ alias must appear before require
┃       lib/genai/graph.ex:126:9 (GenAI.Graph)
┃ 
┃       alias GenAI.Graph.Types, as: G
┃             ^^^^^^^^^^^
┃       
┃ [R] ↘ `require` calls should be consecutive within a module.
┃       lib/genai/graph.ex:127:3 (GenAI.Graph)
┃ 
┃       require GenAI.Graph.Link.Records
┃       ^^^^^^^
┃       
┃ [R] ↘ `alias` calls should be consecutive within a module.
┃       lib/genai/graph.ex:128:3 (GenAI.Graph)
┃ 
┃       alias GenAI.Graph.Link.Records, as: R
┃       ^^^^^
┃       
┃ [R] ↘ alias must appear before require
┃       lib/genai/graph.ex:128:9 (GenAI.Graph)
┃ 
┃       alias GenAI.Graph.Link.Records, as: R
┃             ^^^^^^^^^^^
┃       
┃ [D] ↘ Nested modules could be aliased at the top of the invoking module.
┃       lib/genai/graph.ex:167:23 (GenAI.Graph.node)
┃ 
┃       with {:ok, id} <- GenAI.Graph.NodeProtocol.id(graph_node) do
┃                         ^^^^^^^^^^^^^^^^^^^^^^^^
┃       
┃ [R] → Functions should have a @spec type specification.
┃       lib/genai/graph.ex:175:7 (GenAI.Graph)
┃ 
┃       def nodes(graph, options \\ nil)
┃           ^^^^^
┃       
┃ [R] → Functions should have a @spec type specification.
┃       lib/genai/graph.ex:177:7 (GenAI.Graph.nodes)
┃ 
┃       def nodes(graph, _) do
┃           ^^^^^
┃       
┃ [R] → Functions should have a @spec type specification.
┃       lib/genai/graph.ex:185:7 (GenAI.Graph)
┃ 
┃       def nodes!(graph, options \\ nil)
┃           ^^^^^^
┃       
┃ [R] → Functions should have a @spec type specification.
┃       lib/genai/graph.ex:187:7 (GenAI.Graph.nodes!)
┃ 
┃       def nodes!(graph, _) do
┃           ^^^^^^
┃       
┃ [D] ↘ Nested modules could be aliased at the top of the invoking module.
┃       lib/genai/graph.ex:228:23 (GenAI.Graph.link)
┃ 
┃       with {:ok, id} <- GenAI.Graph.Link.id(graph_link) do
┃                         ^^^^^^^^^^^^^^^^
┃       
┃ [D] ↘ Nested modules could be aliased at the top of the invoking module.
┃       lib/genai/graph.ex:260:23 (GenAI.Graph.member?)
┃ 
┃       with {:ok, id} <- GenAI.Graph.NodeProtocol.id(graph_node) do
┃                         ^^^^^^^^^^^^^^^^^^^^^^^^
┃       
┃ [R] → Functions should have a @spec type specification.
┃       lib/genai/graph.ex:338:7 (GenAI.Graph)
┃ 
┃       def head(graph)
┃           ^^^^
┃       
┃ [R] → Functions should have a @spec type specification.
┃       lib/genai/graph.ex:339:7 (GenAI.Graph.head)
┃ 
┃       def head(%__MODULE__{head: nil}), do: {:error, {:head, :is_nil}}
┃           ^^^^
┃       
┃ [R] → Functions should have a @spec type specification.
┃       lib/genai/graph.ex:340:7 (GenAI.Graph.head)
┃ 
┃       def head(%__MODULE__{head: x} = graph), do: node(graph, x)
┃           ^^^^
┃       
┃ [R] → Functions should have a @spec type specification.
┃       lib/genai/graph.ex:345:7 (GenAI.Graph)
┃ 
┃       def last_node(graph)
┃           ^^^^^^^^^
┃       
┃ [R] → Functions should have a @spec type specification.
┃       lib/genai/graph.ex:346:7 (GenAI.Graph.last_node)
┃ 
┃       def last_node(%__MODULE__{last_node: nil}), do: {:error, {:last_node, :is_nil}}
┃           ^^^^^^^^^
┃       
┃ [R] → Functions should have a @spec type specification.
┃       lib/genai/graph.ex:347:7 (GenAI.Graph.last_node)
┃ 
┃       def last_node(%__MODULE__{last_node: x} = graph), do: node(graph, x)
┃           ^^^^^^^^^
┃       
┃ [R] → Functions should have a @spec type specification.
┃       lib/genai/graph.ex:352:7 (GenAI.Graph)
┃ 
┃       def last_link(graph)
┃           ^^^^^^^^^
┃       
┃ [R] → Functions should have a @spec type specification.
┃       lib/genai/graph.ex:353:7 (GenAI.Graph.last_link)
┃ 
┃       def last_link(%__MODULE__{last_link: nil}), do: {:error, {:last_link, :is_nil}}
┃           ^^^^^^^^^
┃       
┃ [R] → Functions should have a @spec type specification.
┃       lib/genai/graph.ex:354:7 (GenAI.Graph.last_link)
┃ 
┃       def last_link(%__MODULE__{last_link: x} = graph), do: link(graph, x)
┃           ^^^^^^^^^
┃       
┃ [D] ↘ Nested modules could be aliased at the top of the invoking module.
┃       lib/genai/graph.ex:357:27 (GenAI.Graph.attempt_set_handle)
┃ 
┃       with {:ok, handle} <- GenAI.Graph.NodeProtocol.handle(node) do
┃                             ^^^^^^^^^^^^^^^^^^^^^^^^
┃       
┃ [R] → `with` contains only one <- clause and an `else` branch, consider using `case` instead
┃       lib/genai/graph.ex:357:5 (GenAI.Graph.attempt_set_handle)
┃ 
┃       with {:ok, handle} <- GenAI.Graph.NodeProtocol.handle(node) do
┃       ^^^^
┃       
┃ [R] ↗ Use a function call when a pipeline is only one function long.
┃       lib/genai/graph.ex:365 (GenAI.Graph.attempt_set_handle)
┃ 
┃       |> put_in([Access.key(:node_handles), handle], id)
┃       
┃ [C] ↗ Unused variables should be named consistently. It seems your strategy is to name them anonymously (ie. `_`) but `_node` does not follow that convention.
┃       lib/genai/graph.ex:371:36 (GenAI.Graph.attempt_set_head)
┃ 
┃       defp attempt_set_head(graph, id, _node, options) do
┃                                        ^^^^^
┃       
┃ [R] ↗ Use a function call when a pipeline is only one function long.
┃       lib/genai/graph.ex:374 (GenAI.Graph.attempt_set_head)
┃ 
┃       |> update_in([Access.key(:head)], &(&1 || id))
┃       
┃ [C] ↗ Unused variables should be named consistently. It seems your strategy is to name them anonymously (ie. `_`) but `_node` does not follow that convention.
┃       lib/genai/graph.ex:380:41 (GenAI.Graph.attempt_set_last_node)
┃ 
┃       defp attempt_set_last_node(graph, id, _node, options) do
┃                                             ^^^^^
┃       
┃ [R] ↗ Use a function call when a pipeline is only one function long.
┃       lib/genai/graph.ex:383 (GenAI.Graph.attempt_set_last_node)
┃ 
┃       |> put_in([Access.key(:last_node)], id)
┃       
┃ [F] → Function is too complex (cyclomatic complexity is 11, max is 9).
┃       lib/genai/graph.ex:389:8 (GenAI.Graph.auto_link_setting)
┃ 
┃       defp auto_link_setting(graph, options) do
┃            ^^^^^^^^^^^^^^^^^
┃       
┃ [C] ↗ Unused variables should be named consistently. It seems your strategy is to name them anonymously (ie. `_`) but `_node` does not follow that convention.
┃       lib/genai/graph.ex:417:53 (GenAI.Graph.attempt_auto_link)
┃ 
┃       defp attempt_auto_link(graph, from_node, node_id, _node, options) do
┃                                                         ^^^^^
┃       
┃ [D] ↘ Nested modules could be aliased at the top of the invoking module.
┃       lib/genai/graph.ex:425:16 (GenAI.Graph.attempt_auto_link)
┃ 
┃       link = GenAI.Graph.Link.new(from_node, node_id)
┃              ^^^^^^^^^^^^^^^^
┃       
┃ [R] ↗ Use a function call when a pipeline is only one function long.
┃       lib/genai/graph.ex:428 (GenAI.Graph.attempt_auto_link)
┃ 
┃       |> GenAI.Graph.add_link(link, options)
┃       
┃ [D] ↘ Nested modules could be aliased at the top of the invoking module.
┃       lib/genai/graph.ex:433:29 (GenAI.Graph.attempt_auto_link)
┃ 
┃       with {:ok, link} <- GenAI.Graph.Link.putnew_source(link, from_node),
┃                           ^^^^^^^^^^^^^^^^
┃       
┃ [D] ↘ Nested modules could be aliased at the top of the invoking module.
┃       lib/genai/graph.ex:434:29 (GenAI.Graph.attempt_auto_link)
┃ 
┃       {:ok, link} <- GenAI.Graph.Link.putnew_target(link, node_id),
┃                      ^^^^^^^^^^^^^^^^
┃       
┃ [D] ↘ Nested modules could be aliased at the top of the invoking module.
┃       lib/genai/graph.ex:435:29 (GenAI.Graph.attempt_auto_link)
┃ 
┃       {:ok, link} <- GenAI.Graph.Link.with_id(link) do
┃                      ^^^^^^^^^^^^^^^^
┃       
┃ [R] ↗ Use a function call when a pipeline is only one function long.
┃       lib/genai/graph.ex:437 (GenAI.Graph.attempt_auto_link)
┃ 
┃       |> GenAI.Graph.add_link(link, options)
┃       
┃ [D] ↘ Nested modules could be aliased at the top of the invoking module.
┃       lib/genai/graph.ex:447:16 (GenAI.Graph.attempt_auto_link)
┃ 
┃       link = GenAI.Graph.Link.new(from_node, node_id, auto_link_options)
┃              ^^^^^^^^^^^^^^^^
┃       
┃ [R] ↗ Use a function call when a pipeline is only one function long.
┃       lib/genai/graph.ex:450 (GenAI.Graph.attempt_auto_link)
┃ 
┃       |> GenAI.Graph.add_link(link, options)
┃       
┃ [C] ↗ Unused variables should be named consistently. It seems your strategy is to name them anonymously (ie. `_`) but `_options` does not follow that convention.
┃       lib/genai/graph.ex:454:52 (GenAI.Graph.attempt_set_node)
┃ 
┃       def attempt_set_node(graph, node_id, graph_node, _options) do
┃                                                        ^^^^^^^^
┃       
┃ [R] → Functions should have a @spec type specification.
┃       lib/genai/graph.ex:454:7 (GenAI.Graph.attempt_set_node)
┃ 
┃       def attempt_set_node(graph, node_id, graph_node, _options) do
┃           ^^^^^^^^^^^^^^^^
┃       
┃ [F] ↗ Unless conditions should avoid having an `else` block.
┃       lib/genai/graph.ex:455:5 (GenAI.Graph.attempt_set_node)
┃ 
┃       unless member?(graph, node_id) do
┃       ^^^^^^
┃       
┃ [R] ↗ Use a function call when a pipeline is only one function long.
┃       lib/genai/graph.ex:457 (GenAI.Graph.attempt_set_node)
┃ 
┃       |> put_in([Access.key(:nodes), node_id], graph_node)
┃       
┃ [D] ↘ Nested modules could be aliased at the top of the invoking module.
┃       lib/genai/graph.ex:514:28 (GenAI.Graph.add_node)
┃ 
┃       with {:ok, node_id} <- GenAI.Graph.NodeProtocol.id(graph_node) do
┃                              ^^^^^^^^^^^^^^^^^^^^^^^^
┃       
┃ [R] → `with` contains only one <- clause and an `else` branch, consider using `case` instead
┃       lib/genai/graph.ex:514:5 (GenAI.Graph.add_node)
┃ 
┃       with {:ok, node_id} <- GenAI.Graph.NodeProtocol.id(graph_node) do
┃       ^^^^
┃       
┃ [D] ↘ Nested modules could be aliased at the top of the invoking module.
┃       lib/genai/graph.ex:558:28 (GenAI.Graph.add_link)
┃ 
┃       with {:ok, link_id} <- GenAI.Graph.Link.id(graph_link),
┃                              ^^^^^^^^^^^^^^^^
┃       
┃ [D] ↘ Nested modules could be aliased at the top of the invoking module.
┃       lib/genai/graph.ex:559:27 (GenAI.Graph.add_link)
┃ 
┃       {:ok, source} <- GenAI.Graph.Link.source_connector(graph_link),
┃                        ^^^^^^^^^^^^^^^^
┃       
┃ [D] ↘ Nested modules could be aliased at the top of the invoking module.
┃       lib/genai/graph.ex:560:27 (GenAI.Graph.add_link)
┃ 
┃       {:ok, target} <- GenAI.Graph.Link.target_connector(graph_link),
┃                        ^^^^^^^^^^^^^^^^
┃       
┃ [C] ↗ Unused variables should be named consistently. It seems your strategy is to name them anonymously (ie. `_`) but `_options` does not follow that convention.
┃       lib/genai/graph.ex:575:53 (GenAI.Graph.attempt_set_link)
┃ 
┃       defp attempt_set_link(graph, link_id, graph_link, _options) do
┃                                                         ^^^^^^^^
┃       
┃ [F] ↗ Unless conditions should avoid having an `else` block.
┃       lib/genai/graph.ex:576:5 (GenAI.Graph.attempt_set_link)
┃ 
┃       unless Map.has_key?(graph.links, link_id) do
┃       ^^^^^^
┃       
┃ [D] ↘ Nested modules could be aliased at the top of the invoking module.
┃       lib/genai/graph.ex:577:29 (GenAI.Graph.attempt_set_link)
┃ 
┃       with {:ok, handle} <- GenAI.Graph.Link.handle(graph_link) do
┃                             ^^^^^^^^^^^^^^^^
┃       
┃ [R] → `with` contains only one <- clause and an `else` branch, consider using `case` instead
┃       lib/genai/graph.ex:577:7 (GenAI.Graph.attempt_set_link)
┃ 
┃       with {:ok, handle} <- GenAI.Graph.Link.handle(graph_link) do
┃       ^^^^
┃       
┃ [R] ↗ Use a function call when a pipeline is only one function long.
┃       lib/genai/graph.ex:584 (GenAI.Graph.attempt_set_link)
┃ 
┃       |> put_in([Access.key(:links), link_id], graph_link)
┃       
┃ [C] ↗ Unused variables should be named consistently. It seems your strategy is to name them anonymously (ie. `_`) but `_graph_link` does not follow that convention.
┃       lib/genai/graph.ex:593:46 (GenAI.Graph.attempt_set_last_link)
┃ 
┃       defp attempt_set_last_link(graph, link_id, _graph_link, options) do
┃                                                  ^^^^^^^^^^^
┃       
┃ [R] ↗ Use a function call when a pipeline is only one function long.
┃       lib/genai/graph.ex:596 (GenAI.Graph.attempt_set_last_link)
┃ 
┃       |> put_in([Access.key(:last_link)], link_id)
┃       
┃ [D] ↘ Nested modules could be aliased at the top of the invoking module.
┃       lib/genai/graph.ex:611:20 (GenAI.Graph.attempt_register_link)
┃ 
┃       {:ok, n} = GenAI.Graph.NodeProtocol.register_link(n, graph, link, options)
┃                  ^^^^^^^^^^^^^^^^^^^^^^^^
┃       
┃ [R] ↗ Use a function call when a pipeline is only one function long.
┃       lib/genai/graph.ex:614 (GenAI.Graph.attempt_register_link)
┃ 
┃       |> put_in([Access.key(:nodes), connector_node_id], n)
┃       
┃ [R] → Functions should have a @spec type specification.
┃       lib/genai/graph.ex:625:7 ()
┃ 
┃       def mermaid_id(subject) do
┃           ^^^^^^^^^^
┃       
┃ [R] → Functions should have a @spec type specification.
┃       lib/genai/graph.ex:629:7 ()
┃ 
┃       def encode(graph_element), do: encode(graph_element, [])
┃           ^^^^^^
┃       
┃ [R] → Functions should have a @spec type specification.
┃       lib/genai/graph.ex:630:7 ()
┃ 
┃       def encode(graph_element, options), do: encode(graph_element, options, %{})
┃           ^^^^^^
┃       
┃ [R] → Functions should have a @spec type specification.
┃       lib/genai/graph.ex:632:7 ()
┃ 
┃       def encode(graph_element, options, state) do
┃           ^^^^^^
┃       
┃ [R] → Functions should have a @spec type specification.
┃       lib/genai/graph.ex:639:7 ()
┃ 
┃       def state_diagram_v2(graph_element, options, state) do
┃           ^^^^^^^^^^^^^^^^
┃       
┃ [R] ↗ Use a function call when a pipeline is only one function long.
┃       lib/genai/graph.ex:652 ()
┃ 
┃       |> GenAI.Graph.MermaidProtocol.Helpers.indent()
┃       
┃ [F] → One `Enum.map/2` is more efficient than `Enum.map/2 |> Enum.map/2`
┃       lib/genai/graph.ex:676 ()
┃ 
┃       |> Enum.map(fn {:ok, x} -> x end)
┃       
┃ [F] → Pipe chain should start with a raw value.
┃       lib/genai/graph.ex:676 ()
┃ 
┃       |> Enum.map(fn {:ok, x} -> x end)
┃       
┃ [F] ↗ `Enum.map_join/3` is more efficient than `Enum.map/2 |> Enum.join/2`.
┃       lib/genai/graph.ex:677 ()
┃ 
┃       |> Enum.join("\n")
┃       
┃ [R] ↗ Use a function call when a pipeline is only one function long.
┃       lib/genai/graph.ex:681 ()
┃ 
┃       |> GenAI.Graph.MermaidProtocol.Helpers.indent()
┃       



       
```