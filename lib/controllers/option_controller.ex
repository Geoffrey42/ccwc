defmodule Controllers.OptionController do
  @moduledoc false

  alias UseCase.CountBytes
  alias Presenters.StdoutPresenter

  def dispatch(option, content) do
    case option do
      "-c" ->
        CountBytes.count(content) |> StdoutPresenter.print_results()

      unknown_option ->
        StdoutPresenter.print_error({:unknown, unknown_option})
    end
  end
end
