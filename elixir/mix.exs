defmodule Foobar.MixProject do
  use Mix.Project

  @name "Foobar"
  @version File.read!("VERSION") |> String.trim()
  @github "https://github.com/bendiken/foobar"
  @bitbucket "https://bitbucket.org/bendiken/foobar"
  @homepage @github

  def project do
    [
      app: :foobar,
      version: @version,
      elixir: "~> 1.7",
      #compilers: Mix.compilers(),
      #build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      #name: @name,
      #source_url: @github,
      #homepage_url: @homepage,
      #description: description(),
      #aliases: aliases(),
      deps: deps(),
      #package: package(),
      #docs: [source_ref: @version, main: "readme", extras: ["README.md"]],
      #test_coverage: [tool: ExCoveralls],
      #preferred_cli_env: [
      #  coveralls: :test,
      #  "coveralls.detail": :test,
      #  "coveralls.post": :test,
      #  "coveralls.html": :test
      #]
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp package do
    [
      files: ~w(lib priv src mix.exs CHANGES.md README.md UNLICENSE VERSION),
      maintainers: ["Arto Bendiken"],
      licenses: ["Public Domain"],
      links: %{"GitHub" => @github, "Bitbucket" => @bitbucket}
    ]
  end

  defp description do
    """
    Foobar is a template for Elixir projects.
    """
  end

  defp deps do
    # See: https://hexdocs.pm/mix/Mix.Tasks.Deps.html
    [
      {:credo, "~> 0.10", only: [:dev, :test]},
      {:dialyxir, "~> 0.5", only: [:dev, :test]},
      {:earmark, "~> 1.2", only: :dev},
      {:ex_doc, "~> 0.19", only: :dev},
      {:excoveralls, "~> 0.10", only: :test},
    ]
  end

  defp aliases do
    []
  end
end
