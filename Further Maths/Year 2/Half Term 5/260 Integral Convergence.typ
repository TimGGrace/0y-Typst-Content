#import "../../../Templates/template.typ": *
#import "@preview/irif:0.0.2": *
#show: simple-theme.with( aspect-ratio:"16-9",
                          config-colors(primary:blue))

== Starter
$
  integral^2_0 ln(1 + 2 sin x) "d"x
$

== Midpoint Convergence
#nm-table-integrate(f_x: x => calc.ln(1 + 2 * calc.sin(x)), x0:0, x1:2, accuracy:6)

== Trapezium Convergence
#nm-table-integrate(f_x: x => calc.ln(1 + 2 * calc.sin(x)), x0:0, x1:2, accuracy:6, method: "Trapezium")

== You Try
For the function 
$
  integral _1^5 1 + frac(sin x, x) "d"x
$
1. Find $M_(1->16)$ and $T_(1->16)$
2. Verify these methods converge appropriately, stating the order.
3. Find an estimate for the limit of convergence.

== Solution
#grid(columns:2, column-gutter: 50pt,
[
  #nm-table-integrate(f_x: x => 1 + (calc.sin(x) / x), x0:1, x1:5)
  Both ratios $approx 0.25 = 0.5^2$ 
  
  $therefore$ 2nd order as expected.
],
[
  #nm-table-integrate(f_x: x => 1 + (calc.sin(x) / x), x0:1, x1:5, method:"Trapezium")
  #place(dy:5pt)[#text(22pt)[$ M_infinity &approx 4.60281 + 0.00311 times frac(0.25, 0.75) \ &= 4.60385 "5d.p." \ \
    T_infinity &approx 4.60591 - 0.00622 times frac(0.25, 0.75) \ &= 4.60384 "5d.p."
  
   $]]
])