using MultiAgentPOMDPs
using Documenter

makedocs(;
    modules=[MultiAgentPOMDPs],
    authors="rejuvyesh <mail@rejuvyesh.com>, Shushman <shushmanchoudhary@gmail.com> and contributors",
    repo="https://github.com/JuliaPOMDP/MultiAgentPOMDPs.jl/blob/{commit}{path}#L{line}",
    sitename="MultiAgentPOMDPs.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://juliapomdp.github.io/MultiAgentPOMDPs.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/JuliaPOMDP/MultiAgentPOMDPs.jl",
)
