# This is free and unencumbered software released into the public domain.

defmodule Foobar.CLI do
  alias Foobar.Mixfile

  @app     Keyword.fetch!(Mixfile.project, :app)
  @name    Keyword.fetch!(Mixfile.project, :name)
  @version Keyword.fetch!(Mixfile.project, :version)
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
    {opts, args, ufos} = OptionParser.parse(argv, @options)
    {Enum.into(opts, %{}), args, ufos}
  end

  defp process({_, _, ufos}) when length(ufos) > 0 do
    IO.puts :stderr, "#{@app}: Unknown options: #{inspect ufos}"
  end

  defp process({[], [], []}) do
    IO.puts :stderr, "#{@app}: No options given."
    IO.puts :stderr, "#{@app}: No arguments given."
  end

  defp process({%{version: true}, _, _}) do
    IO.puts "#{@name} #{@version}"
  end

  defp process({%{help: true}, _, _}) do
    help
  end

  defp process({opts, [], []}) do
    IO.puts "Got options: #{inspect opts}"
    IO.puts :stderr, "#{@app}: No arguments given."
  end

  defp process({opts, args, []}) do
    IO.puts "Got options: #{inspect opts}"
    IO.puts "Got arguments: #{inspect args}"
  end

  defp help do
    IO.puts "Usage: #{@app} [-Vhqvd] [arguments...]"
    IO.puts ""
  end
end
