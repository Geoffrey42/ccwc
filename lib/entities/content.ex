defmodule Entities.Content do
  defstruct [:file_name, :binary, :bytes]

  @type t() :: %__MODULE__{
          file_name: String.t(),
          binary: binary(),
          bytes: non_neg_integer()
        }
end
