defmodule UseCase.CountBytes do
  @moduledoc false

  alias Entities.Content

  def count(content) do
    %Content{content | bytes: byte_size(content.binary)}
  end
end
