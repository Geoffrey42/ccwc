defmodule Presenters.StdoutPresenter do
  def print_results(results) do
    IO.puts("   " <> Integer.to_string(results.bytes) <> " " <> results.file_name)
  end

  def print_error(error) do
    IO.puts(:stderr, Atom.to_string(error))
  end
end
