using MultiAgentPOMDPs
using Documenter

makedocs(;
    modules=[MultiAgentPOMDPs],
    authors="rejuvyesh <mail@rejuvyesh.com> and contributors",
    repo="https://github.com/rejuvyesh/MultiAgentPOMDPs.jl/blob/{commit}{path}#L{line}",
    sitename="MultiAgentPOMDPs.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://rejuvyesh.github.io/MultiAgentPOMDPs.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/rejuvyesh/MultiAgentPOMDPs.jl",
)
