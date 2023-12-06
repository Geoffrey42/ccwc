defmodule UseCases.CountLines do
  @moduledoc """
    CountBytes handles the lines count of content.
  """

  alias Entities.Content

  @spec count(Content.t()) :: Content.t()
  def count(content) do
    count =
      content.binary
      |> String.trim_trailing("\n")
      |> String.split("\n")
      |> length()

    %Content{content | lines: count}
  end
end
