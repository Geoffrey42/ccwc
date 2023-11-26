defmodule Controllers.OptionController do
  @moduledoc false

  alias UseCase.CountBytes
  alias Presenters.Stdout

  def dispatch(option, content) do
    case option do
      "-c" ->
        CountBytes.count(content) |> Stdout.print_results()

      unknown_option ->
        Stdout.print_error({:unknown, unknown_option})
    end
  end
end
