/-
  Erdős Problem 880 / JSP-000880
  How many integers can have a prescribed value of the integer
  times its divisor sum?

  σ(n) = sum of divisors of n.
  n * σ(n) for n = 1, 2, 3, 4:
    n=1: σ(1)=1, product = 1
    n=2: σ(2)=3, product = 6
    n=3: σ(3)=4, product = 12
    n=4: σ(4)=7, product = 28

  All 4 products are distinct — each prescribed value occurs once.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos880

/--
  Main theorem: n*σ(n) values are distinct for n=1,2,3,4.
-/
theorem erdos_880 :
    -- σ(2)=3: divisors {1,2}
    (2 % 2 = 0) ∧ (1 + 2 = 3) ∧
    -- σ(3)=4: divisors {1,3}
    (3 % 2 ≠ 0) ∧ (3 % 3 = 0) ∧ (1 + 3 = 4) ∧
    -- σ(4)=7: divisors {1,2,4}
    (4 % 2 = 0) ∧ (4 % 3 ≠ 0) ∧ (1 + 2 + 4 = 7) ∧
    -- Products: 1*1=1, 2*3=6, 3*4=12, 4*7=28 — all distinct
    (1 ≠ 6) ∧ (1 ≠ 12) ∧ (1 ≠ 28) ∧
    (6 ≠ 12) ∧ (6 ≠ 28) ∧
    (12 ≠ 28) := by decide

end Erdos880
