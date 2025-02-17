export extrosnb

function extrosnb(; n::Int = default_nvar, type::Val{T} = Val(Float64), kwargs...) where {T}
  function f(x)
    n = length(x)
    return 100 * sum((x[i] - x[i - 1]^2)^2 for i = 2:n) + (1 - x[1])^2
  end
  x0 = -ones(T, n)
  return ADNLPModels.ADNLPModel(f, x0, name = "extrosnb_autodiff"; kwargs...)
end
