defmodule UseCases.CountLinesTest do
  use ExUnit.Case

  alias UseCases.CountLines
  alias Entities.Content

  test "should count lines from content" do
    expected_lines_count = 3

    content = %Content{
      file_name: "test.txt",
      binary: "one\ntwo\nthree"
    }

    actual = CountLines.count(content)

    assert actual.lines == expected_lines_count
  end

  test "shouldn't count trailing empty lines as new lines" do
    expected_lines_count = 3

    content = %Content{
      file_name: "test.txt",
      binary: "one\ntwo\nthree\n\n"
    }

    actual = CountLines.count(content)

    assert actual.lines == expected_lines_count
  end
end
