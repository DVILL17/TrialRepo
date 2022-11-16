using TrialRepo
using Documenter

DocMeta.setdocmeta!(TrialRepo, :DocTestSetup, :(using TrialRepo); recursive=true)

makedocs(;
    modules=[TrialRepo],
    authors="danvil <69361955+DVILL17@users.noreply.github.com> and contributors",
    repo="https://github.com/danvil/TrialRepo.jl/blob/{commit}{path}#{line}",
    sitename="TrialRepo.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://danvil.github.io/TrialRepo.jl",
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/danvil/TrialRepo.jl",
    devbranch="master",
)
