using BestieMinimum
using Documenter

DocMeta.setdocmeta!(BestieMinimum, :DocTestSetup, :(using BestieMinimum); recursive = true)

const page_rename = Dict("developer.md" => "Developer docs") # Without the numbers
const numbered_pages = [
  file for
  file in readdir(joinpath(@__DIR__, "src")) if file != "index.md" && splitext(file)[2] == ".md"
]

makedocs(;
    modules = [BestieMinimum],
    authors = "Abel Soares Siqueira <abel.s.siqueira@gmail.com> and contributors",
    repo = "https://github.com/abelsiqueira/BestieMinimum.jl/blob/{commit}{path}#{line}",
    sitename = "BestieMinimum.jl",
    format = Documenter.HTML(; canonical = "https://abelsiqueira.github.io/BestieMinimum.jl"),
    pages = ["index.md"; numbered_pages],
)

deploydocs(; repo = "github.com/abelsiqueira/BestieMinimum.jl")
