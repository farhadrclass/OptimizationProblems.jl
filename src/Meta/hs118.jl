hs118_meta = Dict(
  :nvar => 15,
  :variable_nvar => false,
  :ncon => 17,
  :variable_ncon => false,
  :minimize => true,
  :name => "hs118",
  :has_equalities_only => false,
  :has_inequalities_only => true,
  :has_bounds => true,
  :has_fixed_variables => false,
  :objtype => :other,
  :contype => :linear,
  :best_known_lower_bound => -Inf,
  :best_known_upper_bound => 942.7162500000001,
  :is_feasible => true,
  :defined_everywhere => missing,
  :origin => :unknown,
)
get_hs118_nvar(; n::Integer = default_nvar, kwargs...) = 15
get_hs118_ncon(; n::Integer = default_nvar, kwargs...) = 17
get_hs118_nlin(; n::Integer = default_nvar, kwargs...) = 0
get_hs118_nnln(; n::Integer = default_nvar, kwargs...) = 17
get_hs118_nequ(; n::Integer = default_nvar, kwargs...) = 0
get_hs118_nineq(; n::Integer = default_nvar, kwargs...) = 17
