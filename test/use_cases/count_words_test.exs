defmodule UseCases.CountWordsTest do
  use ExUnit.Case

  alias UseCases.CountWords
  alias Entities.Content

  test "should count words from content" do
    expected_word_count = 3

    content = %Content{
      file_name: "test.txt",
      binary: "one two three"
    }

    actual = CountWords.count(content)
    assert actual.words == expected_word_count
  end
end
