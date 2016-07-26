defmodule Foobar.Mixfile do
  use Mix.Project

  @name      "Foobar"
  @version   File.read!("VERSION") |> String.strip
  @github    "https://github.com/bendiken/foobar"
  @bitbucket "https://bitbucket.org/bendiken/foobar"
  @homepage  @github

  def project do
    [app: :foobar,
     version: @version,
     elixir: "~> 1.3",
     compilers: Mix.compilers,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     name: @name,
     source_url: @github,
     homepage_url: @homepage,
     description: description(),
     aliases: aliases(),
     deps: deps(),
     package: package(),
     docs: [source_ref: @version, main: "readme", extras: ["README.md"]]]
  end

  def application do
    [#mod: {Foobar, []},
     applications: [:logger]]
  end

  defp package do
    [files: ~w(lib priv src mix.exs CHANGES README.md UNLICENSE VERSION),
     maintainers: ["Arto Bendiken"],
     licenses: ["Public Domain"],
     links: %{"GitHub" => @github, "Bitbucket" => @bitbucket}]
  end

  defp description do
    """
    Foobar is a template for Elixir projects.
    """
  end

  defp deps do
    [{:credo,       ">= 0.0.0", only: [:dev, :test]},
     {:dialyxir,    ">= 0.0.0", only: [:dev, :test]},
     {:earmark,     ">= 0.0.0", only: :dev},
     {:ex_doc,      ">= 0.0.0", only: :dev},
     {:excoveralls, ">= 0.0.0", only: :test}]
  end

  defp aliases do
    []
  end
end
