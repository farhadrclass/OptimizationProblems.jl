hs55_meta = Dict(
  :nvar => 6,
  :variable_nvar => false,
  :ncon => 6,
  :variable_ncon => false,
  :minimize => true,
  :name => "hs55",
  :has_equalities_only => true,
  :has_inequalities_only => false,
  :has_bounds => true,
  :has_fixed_variables => false,
  :objtype => :other,
  :contype => :linear,
  :best_known_lower_bound => -Inf,
  :best_known_upper_bound => Inf,
  :is_feasible => missing,
  :defined_everywhere => missing,
  :origin => :unknown,
)
get_hs55_nvar(; n::Integer = default_nvar, kwargs...) = 6
get_hs55_ncon(; n::Integer = default_nvar, kwargs...) = 6
get_hs55_nlin(; n::Integer = default_nvar, kwargs...) = 0
get_hs55_nnln(; n::Integer = default_nvar, kwargs...) = 6
get_hs55_nequ(; n::Integer = default_nvar, kwargs...) = 6
get_hs55_nineq(; n::Integer = default_nvar, kwargs...) = 0
