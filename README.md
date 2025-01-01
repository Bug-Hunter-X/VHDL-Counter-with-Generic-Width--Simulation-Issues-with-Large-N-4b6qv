# VHDL Counter with Generic Width: Simulation Issues with Large N

This repository contains a VHDL implementation of a simple counter with a generic width.  The counter works as expected for smaller values of N (the width of the counter), but encounters problems for larger N. 

**Problem:** When N is increased significantly, simulation hangs or produces unexpected output.  The likely cause is either integer overflow or inefficient handling of large integers within the VHDL process.

**Solution:** The `bugSolution.vhdl` file provides a corrected implementation that addresses the issues with larger N values. The solution likely involves using unsigned types to avoid overflow problems and possibly optimizing the counter logic for better performance with larger widths.

**How to reproduce:**
1. Simulate `bug.vhdl` with your preferred VHDL simulator.
2. Try different values of N (e.g., 4, 8, 16, 32).
3. Observe the simulation behavior for larger N values, which should show the problem.
4. Compare the behavior with the `bugSolution.vhdl` which is a revised counter design that efficiently handles larger values of N.
