defmodule UseCase.CountBytes do
  @moduledoc false

  alias Entities.Content

  def count(content) do
    %Content{
      file_name: content.file_name,
      binary: content.binary,
      bytes: byte_size(content.binary)
    }
  end
end
