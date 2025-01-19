# ===============================================================================
# Copyright (c) 2025, Noizu Labs, Inc.
# ===============================================================================

defmodule GenAI.Session.State.SettingEntry do
  @moduledoc """
  Dynamic Option/Setting Entry.

  ## Background
  At runtime, as needed, directives are unpacked into SettingEntries.
  Constraints and Selectors are merged together to get effective value as of that point in time.
  Any other options current entry depends on are recursively processed as well.
  """
  alias GenAI.Records, as: R

  require GenAI.Records.Session

  defstruct name: nil,
            effective: R.Session.effective_value(),
            selectors: [],
            constraints: [],
            references: [],
            impacts: [],
            updated_on: nil

  @type t :: %__MODULE__{
          name: term,
          effective: list(term),
          selectors: list(term),
          constraints: list(term),
          references: list(term),
          impacts: list(term),
          updated_on: DateTime.t() | nil
        }
end
