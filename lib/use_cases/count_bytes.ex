defmodule UseCases.CountBytes do
  @moduledoc """
    CountBytes handles the bytes count of content.
  """

  alias Entities.Content

  @spec count(Content.t()) :: Content.t()
  def count(content) do
    %Content{content | bytes: byte_size(content.binary)}
  end
end
