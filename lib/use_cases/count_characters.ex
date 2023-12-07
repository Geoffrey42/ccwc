defmodule UseCases.CountCharacters do
  @moduledoc """
    CountCharacters handles the characters count of content.
  """

  alias Entities.Content

  defp count_characters(str, count \\ 0)

  defp count_characters("", count), do: count

  defp count_characters(str, count) do
    {_, rest} = String.next_codepoint(str)
    count_characters(rest, count + 1)
  end

  @spec count(Content.t()) :: Content.t()
  def count(content) do
    %Content{content | characters: count_characters(content.binary)}
  end
end
