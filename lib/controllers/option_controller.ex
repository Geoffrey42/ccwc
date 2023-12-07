defmodule Controllers.OptionController do
  @moduledoc false

  alias UseCases.CountBytes
  alias UseCases.CountLines
  alias UseCases.CountWords
  alias Presenters.Stdout

  def dispatch("-c", content) do
    CountBytes.count(content) |> Stdout.print_results(:bytes)
  end

  def dispatch("-l", content) do
    CountLines.count(content) |> Stdout.print_results(:lines)
  end

  def dispatch("-w", content) do
    CountWords.count(content) |> Stdout.print_results(:words)
  end

  def dispatch(unknown_option, _content) do
    Stdout.print_error({:unknown, unknown_option})
  end
end
