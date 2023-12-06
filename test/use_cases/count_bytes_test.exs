defmodule UseCases.CountBytesTest do
  use ExUnit.Case

  alias UseCases.CountBytes
  alias Entities.Content
  @moduletag :capture_log

  test "should count bytes of content" do
    expected_bytes_count = 3
    content = %Content{file_name: "test.txt", binary: <<0, 255, 42>>}
    actual = CountBytes.count(content)
    assert actual.bytes == expected_bytes_count
  end
end
