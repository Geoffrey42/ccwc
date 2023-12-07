defmodule Presenters.Stdout do
  def print_results(results, option) do
    case option do
      :bytes -> IO.puts("   #{Integer.to_string(results.bytes)} #{results.file_name}")
      :lines -> IO.puts("   #{Integer.to_string(results.lines)} #{results.file_name}")
      :words -> IO.puts("   #{Integer.to_string(results.words)} #{results.file_name}")
      :characters -> IO.puts("   #{Integer.to_string(results.characters)} #{results.file_name}")
    end

    :ok
  end

  def print_error(error) do
    case error do
      {:incorrect_args_nb, args_nb} ->
        IO.puts(:stderr, "error: expected 2 arguments, got #{Integer.to_string(args_nb)}")

      {:unknown, unknown_option} ->
        IO.puts(:stderr, "error: unknown #{unknown_option} option")

      {:file_error, reason, file_path} ->
        IO.puts(:stderr, "error with #{file_path}: #{reason}")
    end
  end
end
