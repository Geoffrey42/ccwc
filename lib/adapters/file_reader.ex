defmodule Adapters.FileReader do
  @callback read_file(file_path :: Path.t()) :: binary()

  @behaviour Adapters.FileReader
  def read_file(file_path), do: File.read(file_path)
end