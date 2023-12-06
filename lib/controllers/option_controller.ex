defmodule Controllers.OptionController do
  @moduledoc false

  alias UseCases.CountBytes
  alias UseCases.CountLines
  alias Presenters.Stdout

  def dispatch(option, content) do
    case option do
      "-c" ->
        CountBytes.count(content) |> Stdout.print_results(:bytes)

      "-l" ->
        CountLines.count(content) |> Stdout.print_results(:lines)

      unknown_option ->
        Stdout.print_error({:unknown, unknown_option})
    end
  end
end
