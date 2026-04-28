#import "../Templates/Template.typ": *
#import "@preview/irif:0.0.2": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:blue))
#set text(20pt)

== Artemis II Translunar Burn
#notes
When completing the question, consider what else can be \ added to make this simulation more realistic.

How could you make the work you're doing more useful or applicable to other rockets?

== Artemis II - Generalising the model
We typically want to know the *general case* for a rocket, rather than solve for a specific rocket. That's because the next rocket will normally be a bit different.

$
  "Let:" T &= "thrust", m_0 = "initial mass", r = "fuel rate," \
  F = m a: quad &\
  T &= (m_0 - r t) a \
  therefore v &= integral frac(T,(m_0 - r t))"d"t = -T/r ln(m_0 - r t) + c quad quad
  [v|_(t=0) = v_0 => c = v_0  + T/r ln(m_0)] \ 
  therefore v(t) &= -T/r ln(m_0 - r t) + v_0 + T/r ln(m_0) \
  &= v_0 + T/r (ln(m_0) - ln(m_0 - r t)) = v_0 + T/r ln(frac(m_0,m_0 - r t))
$

== Artemis II - Improving the model
At launch, Artemis II thrusted vertically, rather than horizontally. We can add $m g$ into the equation:
$
  F = m a: quad quad quad quad quad &\
  T - (m_0 - r t)g &= (m_0 - r t) a \
  therefore v &= integral (frac(T,(m_0 - r t)) - g)"d"t = -T/r ln(m_0 - r t) - g t + c \
  [v|_(t=0) = v_0 => c = v_0 &+ T/r ln(m_0)] \ 
  therefore v(t) &= -T/r ln(m_0 - r t) + v_0 + T/r ln(m_0) - g t\
  &= v_0 + T/r (ln(m_0) - ln(m_0 - r t)) - g t = v_0 - g t + T/r ln(frac(m_0,m_0 - r t))
$

== Artemis II - Improving the model further
If we want to go even further, we need to add air resistance.

This is calculated by: $D = 1/2 rho v^2 S C_D$ \
As $1/2, S, C_D$ are constant (assuming we're not rotating etc.), this can be simplified to:
$
  D = k_D rho v^2
$
Unfortunately, when launching rockets the air density, $rho$, isn't constant. 

At the speeds we're dealing with, $rho$ varies as a function of both height *and* velocity.
$
  T - (m_0 - r t) g - k_D f(x, v) v^2 = (m_0 - r t) a
$
And that's a lot harder to integrate...