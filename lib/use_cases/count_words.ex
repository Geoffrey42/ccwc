defmodule UseCases.CountWords do
  @moduledoc """
    CountBytes handles the words count of content.
  """

  alias Entities.Content

  @spec count(Content.t()) :: Content.t()
  def count(content) do
    count =
      content.binary
      |> String.split()
      |> length()

    %Content{content | words: count}
  end
end
