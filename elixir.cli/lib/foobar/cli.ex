# This is free and unencumbered software released into the public domain.

defmodule Foobar.CLI do
  @options [
    strict: [
      version: :boolean,
      help:    :boolean,
      quiet:   :boolean,
      verbose: :count,
      debug:   :boolean,
    ],
    aliases: [
      V: :version,
      h: :help,
      q: :quiet,
      v: :verbose,
      d: :debug,
    ],
  ]

  def main(argv \\ []) do
    argv |> parse_args |> process
  end

  defp parse_args(argv) do
    {_opts, _args, _ufos} = OptionParser.parse(argv, @options)
  end

  defp process({_, _, ufos}) when length(ufos) > 0 do
    IO.puts :stderr, "Invalid options: #{inspect ufos}"
  end

  defp process({[], [], []}) do
    IO.puts :stderr, "No options given."
    IO.puts :stderr, "No arguments given."
  end

  defp process({opts, [], []}) do
    IO.puts "Got options: #{inspect opts}"
    IO.puts :stderr, "No arguments given."
  end

  defp process({opts, args, []}) do
    IO.puts "Got options: #{inspect opts}"
    IO.puts "Got arguments: #{inspect args}"
  end
end
