export woods

function woods(; n::Int = default_nvar, type::Val{T} = Val(Float64), kwargs...) where {T}
  n = 4 * max(1, div(n, 4))  # number of variables adjusted to be a multiple of 4
  function f(x)
    n = length(x)
    return 1 + sum(
      100 * (x[4 * i - 2] - x[4 * i - 3]^2)^2 +
      (1 - x[4 * i - 3])^2 +
      90 * (x[4 * i] - x[4 * i - 1]^2)^2 +
      (1 - x[4 * i - 1])^2 +
      10 * (x[4 * i - 2] + x[4 * i] - 2)^2 +
      T(0.1) * (x[4 * i - 2] - x[4 * i])^2 for i = 1:div(n, 4)
    )
  end

  #x0 = -3 * ones(T, n)
  #x0[2 * (collect(1:div(n, 2)))] .= -one(T)
  x0 = -2 * ones(T, n)

  return ADNLPModels.ADNLPModel(f, x0, name = "woods_autodiff"; kwargs...)
end
