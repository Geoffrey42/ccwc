defmodule Entities.Content do
  defstruct [:file_name, :binary, :bytes, :lines]

  @type t() :: %__MODULE__{
          file_name: String.t(),
          binary: binary(),
          bytes: non_neg_integer(),
          lines: non_neg_integer()
        }
end
