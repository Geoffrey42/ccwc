defmodule CCWC do
  @moduledoc """
  Documentation for `CCWC`.
  """

  alias Controllers.FileController
  alias Presenters.StdoutPresenter

  def main(args) when length(args) != 2 do
    StdoutPresenter.print_error(:incorrect_args)
  end

  def main(args) do
    option = get_option(args)
    file_path = List.last(args)

    FileController.handle_file(option, file_path)
  end

  defp get_option(arguments) do
    arguments
    |> List.pop_at(0)
    |> elem(0)
  end
end
