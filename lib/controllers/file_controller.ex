defmodule Controllers.FileController do
  @moduledoc """
    Controller for files input in the command-line.
  """

  alias Presenters.StdoutPresenter
  alias Controllers.OptionController
  alias Entities.Content

  def handle_file(option, file_path) do
    case File.read(file_path) do
      {:ok, raw_content} ->
        content = %Content{
          file_name: file_path,
          binary: raw_content
        }

        OptionController.dispatch(option, content)

      {:error, reason} ->
        StdoutPresenter.print_error({:file_error, reason, file_path})
    end
  end
end
