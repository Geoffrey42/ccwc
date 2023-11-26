defmodule Controllers.FileControllerTest do
  use ExUnit.Case

  test "should read a file" do
    result = Controllers.FileController.handle_file("-c", "/some/file/path")
    assert result == :ok
  end
end
