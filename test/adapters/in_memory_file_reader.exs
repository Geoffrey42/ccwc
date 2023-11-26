defmodule Adapters.InMemoryFileReader do
  @behaviour Adapters.FileReader
  def read_file(_file_path), do: {:ok, "hello world!"}
end