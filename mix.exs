defmodule RPC.Mixfile do
  use Mix.Project

  def project() do
    [
      app: :turn,
      version: "0.1.0",
      elixir: "~> 1.9",
      description: "STUN/TURN Server",
      package: package(),
      deps: deps()
    ]
  end

  def package do
    [
      files: ~w(include src mix.exs LICENSE NOTICE),
      licenses: ["ISC"],
      maintainers: ["Namdak Tonpa"],
      name: :turn,
      links: %{"GitHub" => "https://github.com/erpuno/turn"}
    ]
  end

  def application() do
    [ mod: {:eturnal_app, []},
      applications: [:public_key,:conf,:stun]
    ]
  end

  def deps() do
    [
      {:conf, "~> 0.2.6"},
      {:stun, "~> 1.2.10"},
      {:ex_doc, "~> 0.11", only: :dev}
    ]
  end
end
