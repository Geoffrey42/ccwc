defmodule UseCases.CountCharactersTest do
  use ExUnit.Case

  alias UseCases.CountCharacters
  alias Entities.Content

  test "should count characters from content" do
    expected_character_count = 4

    content = %Content{
      file_name: "test.txt",
      binary: "deux"
    }

    actual = CountCharacters.count(content)
    assert actual.characters == expected_character_count
  end
end
