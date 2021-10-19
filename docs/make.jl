using DemoPackageJCM
using Documenter

DocMeta.setdocmeta!(DemoPackageJCM, :DocTestSetup, :(using DemoPackageJCM); recursive=true)

makedocs(;
    modules=[DemoPackageJCM],
    authors="jamiecm17 <moffajamie@gmail.com> and contributors",
    repo="https://github.com/jamiecm17/DemoPackageJCM.jl/blob/{commit}{path}#{line}",
    sitename="DemoPackageJCM.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://jamiecm17.github.io/DemoPackageJCM.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/jamiecm17/DemoPackageJCM.jl",
    devbranch="master",
)
