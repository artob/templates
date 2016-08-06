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

  @ex_ok          0  # successful termination
  @ex_usage       64 # command line usage error
  @ex_dataerr     65 # data format error
  @ex_noinput     66 # cannot open input
  @ex_nouser      67 # addressee unknown
  @ex_nohost      68 # host name unknown
  @ex_unavailable 69 # service unavailable
  @ex_software    70 # internal software error
  @ex_oserr       71 # system error (e.g., can't fork)
  @ex_osfile      72 # critical OS file missing
  @ex_cantcreat   73 # can't create (user) output file
  @ex_ioerr       74 # input/output error
  @ex_tempfail    75 # temp failure; user is invited to retry
  @ex_protocol    76 # remote error in protocol
  @ex_noperm      77 # permission denied
  @ex_config      78 # configuration error

  def main(argv \\ []) do
    argv |> parse_args |> process |> System.halt
  end

  defp parse_args(argv) do
    {opts, args, ufos} = OptionParser.parse(argv, @options)
    {Enum.into(opts, %{}), args, ufos}
  end

  defp process({_, _, ufos}) when length(ufos) > 0 do
    IO.puts :stderr, "#{@app}: Unknown options: #{inspect ufos}"
    @ex_usage
  end

  defp process({[], [], []}) do
    IO.puts :stderr, "#{@app}: No options given."
    IO.puts :stderr, "#{@app}: No arguments given."
    @ex_usage
  end

  defp process({%{version: true}, _, _}) do
    IO.puts "#{@name} #{@version}"
    @ex_ok
  end

  defp process({%{help: true}, _, _}) do
    help
    @ex_ok
  end

  defp process({opts, [], []}) do
    IO.puts "Got options: #{inspect opts}"
    IO.puts :stderr, "#{@app}: No arguments given."
    @ex_ok
  end

  defp process({opts, args, []}) do
    IO.puts "Got options: #{inspect opts}"
    IO.puts "Got arguments: #{inspect args}"
    @ex_ok
  end

  defp help do
    IO.puts "Usage: #{@app} [-Vhqvd] [arguments...]"
    IO.puts ""
  end
end
