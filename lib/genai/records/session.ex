# ===============================================================================
# Copyright (c) 2025, Noizu Labs, Inc.
# ===============================================================================
defmodule GenAI.Records.Session do
  @moduledoc """
  Records used by for preparing/encoding GenAI.Session
  """

  require Record

  # Calculate effective/tentative value for option
  Record.defrecord(:selector,
    id: nil,
    handle: nil,
    for: nil,
    value: nil,
    directive: nil,
    inserted_at: nil,
    updated_at: nil,
    impacts: [],
    references: []
  )

  @typedoc """
  Settings to calculate effective/tentative value for entry.
  """
  @type selector ::
          record(:selector,
            id: any,
            handle: any,
            for: any,
            value: any,
            directive: any,
            inserted_at: any,
            updated_at: any,
            impacts: list(any),
            references: list(any)
          )

  # Constraint on allowed option values.
  Record.defrecord(:constraint,
    id: nil,
    handle: nil,
    for: nil,
    value: nil,
    directive: nil,
    inserted_at: nil,
    updated_at: nil,
    impacts: [],
    references: []
  )

  @typedoc """
  Settings to calculate constraints for entry.
  """
  @type constraint ::
          record(:constraint,
            id: any,
            handle: any,
            for: any,
            value: any,
            directive: any,
            inserted_at: any,
            updated_at: any,
            impacts: list(any),
            references: list(any)
          )

  # Constraint computed effective option value with cache tag for invalidation.
  # tracking fields.
  Record.defrecord(:effective_value,
    id: nil,
    handle: nil,
    value: nil,
    finger_print: nil,
    inserted_at: nil,
    updated_at: nil
  )

  @typedoc """
  Effective value for entry as of point in graph.
  """
  @type effective_value ::
          record(:effective_value,
            id: any,
            handle: any,
            value: any,
            finger_print: any,
            inserted_at: any,
            updated_at: any
          )

  # Constraint computed tentative option value with cache tag for invalidation.
  # tracking fields.
  Record.defrecord(:tentative_value,
    id: nil,
    handle: nil,
    value: nil,
    finger_print: nil,
    inserted_at: nil,
    updated_at: nil
  )

  @typedoc """
  Tentative value for entry as of point in graph.
  """
  @type tentative_value ::
          record(:tentative_value,
            id: any,
            handle: any,
            value: any,
            finger_print: any,
            inserted_at: any,
            updated_at: any
          )

  # --------------------
  # Session ProcessNodeProtocol Records
  # --------------------

  # Return list of any fields to update.
  Record.defrecord(:process_update,
    graph_node: nil,
    graph_link: nil,
    graph_container: nil,
    session_state: nil,
    session_runtime: nil
  )

  @typedoc """
  Scope change list.
  """
  @type process_update ::
          record(:process_update,
            graph_node: any,
            graph_link: any,
            graph_container: any,
            session_state: any,
            session_runtime: any
          )

  # Standard input arg (duplicates node, useful for comparing new to old value.
  Record.defrecord(:scope,
    graph_node: nil,
    graph_link: nil,
    graph_container: nil,
    session_state: nil,
    session_runtime: nil
  )

  @typedoc """
  Scope/context. Node, Graph, State, Runtime, etc.
  """
  @type scope ::
          record(:scope,
            graph_node: any,
            graph_link: any,
            graph_container: any,
            session_state: any,
            session_runtime: any
          )

  # Indicates that the node should be processed next.
  Record.defrecord(:process_next, link: nil, update: nil)

  @typedoc """
  Indicate node to process next.
  """
  @type process_next :: record(:process_next, link: any, update: process_update)

  # Indicates that processing is complete.
  Record.defrecord(:process_end, exit_on: nil, update: nil)

  @typedoc """
  Indicate no further nodes to process.
  """
  @type process_end :: record(:process_end, exit_on: any, update: process_update)

  # Yield before resuming for external response (or wait on other node completion/global state).
  Record.defrecord(:process_yield, yield_for: nil, update: nil)

  @typedoc """
  Indicate a blocking call/condition must be met before proceeding.
  """
  @type process_yield :: record(:process_yield, yield_for: any, update: process_update)

  # Indicates that an error has occurred.
  Record.defrecord(:process_error, error: nil, update: nil)

  @typedoc """
  Indicate error occured while processing node.
  """
  @type process_error :: record(:process_error, error: any, update: process_update)

  #
  #    #------------------
  #    # node protocol definition helpers.
  #    #------------------
  #
  #    # retrieve n records from data_generator for a given data_set.
  #    Record.defrecord(:data_set, [name: nil, records: 1])
  #
  #    # Grab value from global stack
  #    Record.defrecord(:stack, [item: nil, default: nil])
  #    # Grab sub value from global stack
  #    Record.defrecord(:stack_item_value, [item: nil, path: [], default: nil])
  #
  #    # Grab input value
  #    Record.defrecord(:input, [value: nil, default: nil])
  #    # Grab nested item from input value
  #    Record.defrecord(:input_element, [value: nil, path: [], default: nil])
  #
  #    # grab message state entry or nested entry
  #    Record.defrecord(:message, [id: nil, handle: nil])
  #    Record.defrecord(:message_value, [id: nil, path: nil])
  #    Record.defrecord(:message_filter, [filter: nil])
  #    Record.defrecord(:message_filter_value, [filter: nil, path: []])
  #
  #    # grab link state entry or nested entry
  #    Record.defrecord(:link, [id: nil, handle: nil])
  #    Record.defrecord(:link_value, [id: nil, handle: nil, path: []])
  #    Record.defrecord(:link_filter, [filter: nil])
  #    Record.defrecord(:link_filter_value, [filter: nil, path: []])
  #
  #    # Grab Runtime Flag
  #    Record.defrecord(:runtime, [setting: nil])
  #
  #    # grab tool definition
  #    Record.defrecord(:tool, [id: nil, handle: nil, name: nil])
  #    Record.defrecord(:tool_filter, [filter: nil])
  #
  #    # grab directive by id or handle or by impacts lists (or references list)
  #    Record.defrecord(:directive, [id: nil, handle: nil])
  #    Record.defrecord(:directive_by_tag, [in: nil, not_in: nil, only: nil])
  #
  #    Record.defrecord(:directive_by_source, [source: nil])
  #    Record.defrecord(:directive_by_impacts, [impacts: nil])
  #    Record.defrecord(:directive_by_impacts_all, [impacts_all: nil])
  #    Record.defrecord(:directive_by_references, [references_any: nil])
  #    Record.defrecord(:directive_by_references_all, [references_all: nil])
  #
  #    # grab directive by id or handle
  #    Record.defrecord(:setting, [name: nil])
  #    Record.defrecord(:safety_setting, [name: nil])
  #    Record.defrecord(:model_setting, [name: nil])
  #    Record.defrecord(:provider_setting, [provider: nil, name: nil])
  #
  #
  #
  #    # Force invalidation / Ignore - special methods
  #    Record.defrecord(:ttl, [expiry: 300])
  #    # Values will be converted to the lowest specified unit. So setting day 5, hour 4 will invalidate every 5 * 24 + 4 hours.
  #    Record.defrecord(:time_bucket, [years: nil, months: nil, days: nil, hours: nil, seconds: nil])
  #    def dynmaic_node(), do: {:__genai__, :dynamic}
  #    def finger_print(value, as \\ :auto), do: {{:__genai__, :finger_print, as}, value}
  #    def no_finger_print(value), do: {{:__genai__, :no_finger_print}, value}
end
