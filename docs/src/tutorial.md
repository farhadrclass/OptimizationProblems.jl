# OptimizationProblems.jl Tutorial

In this tutorial, we will see how to access the problems in [JuMP](https://github.com/JuliaOpt/JuMP.jl) and [ADNLPModel](https://github.com/JuliaSmoothOptimizers/ADNLPModels.jl) syntax.
This package is subdivided in two submodules: `PureJuMP` for the JuMP problems, `ADNLPProblems` for the ADNLPModel problems.

## Problems in JuMP syntax: PureJuMP

You can obtain the list of problems currently defined with `names(OptimizationProblems.PureJuMP)` that returns the list of exported names of the submodule. The symbol `:PureJuMP` is itself in this list.
``` @example ex1
using OptimizationProblems, OptimizationProblems.PureJuMP
problems = setdiff(names(OptimizationProblems.PureJuMP), [:PureJuMP])
length(problems)
```
Then, it suffices to select any of this problem to get the JuMP model.
``` @example ex1
jump_model = zangwil3()
```
Note that some of these problems are scalable, i.e., their size depends on some parameters that can be modified.
``` @example ex1
jump_model_12 = woods(12)
```
``` @example ex1
jump_model_120 = woods(120)
```
These problems can be converted as [NLPModels](https://github.com/JuliaSmoothOptimizers/NLPModels.jl) via [NLPModelsJuMP](https://github.com/JuliaSmoothOptimizers/NLPModelsJuMP.jl) to facilitate evaluating
objective, constraints and their derivatives as we will see in the benchmark section.

## Problems in ADNLPModel syntax: ADNLPProblems

This package also offers [ADNLPModel](https://github.com/JuliaSmoothOptimizers/ADNLPModels.jl) test problems. This is an optional dependency, so `ADNLPModels` has to be added first.
``` @example ex2
using ADNLPModels
```
You can obtain the list of problems currently defined with `names(OptimizationProblems.ADNLPProblems)` that returns the list of exported names of the submodule. The symbol `:ADNLPProblems` is itself in this list.
``` @example ex2
using OptimizationProblems, OptimizationProblems.ADNLPProblems
problems = setdiff(names(OptimizationProblems.ADNLPProblems), [:ADNLPProblems])
length(problems)
```
Similarly, to the PureJuMP models, it suffices to select any of this problem to get the model.
``` @example ex2
nlp = zangwil3()
```
Note that some of these problems are scalable, i.e., their size depends on some parameters that can be modified.
``` @example ex2
nlp_12 = woods(n=12)
```
``` @example ex2
nlp_120 = woods(n=120)
```
One of the advantages of these problems is that they are type-stable. Indeed, one can specify the output type with the keyword `type` as follows.
``` @example ex2
nlp16_12 = woods(n=12, type=Val(Float16))
```
Then, all the API will be compatible with the precised type.
``` @example ex2
using NLPModels
obj(nlp16_12, zeros(Float16, 12))
```
