# Packing and Ejection of a Semiflexible Polymer in a Capsid: Effect of Helicity

This repository contains the simulation data, figures, and plotting scripts associated with the study:

**“Packing and Ejection of a Semiflexible Polymer in a Capsid: Effect of Helicity”**

---

## 📖 Summary

We use Langevin dynamics simulations to investigate how **torsional rigidity (helicity)** influences the **packing** and **ejection** of a semiflexible polymer inside a spherical capsid.

* **Packing:** a small amount of torsional stiffness speeds up packing by promoting spool-like conformations, while higher stiffness leads to a non-monotonic change in packing time.
* **Ejection:** torsional stiffness generally slows down ejection, as it resists polymer uncoiling.

These results highlight the key role of torsional elasticity in confined polymer dynamics and provide insights into viral genome packaging.

---

## 📂 Repository Structure

Each directory corresponds to a figure in the manuscript:

```
semiflexible-polymer-packing/
├── Fig-1/   # Simulation snapshot
├── Fig-2/   # Radius of gyration
├── Fig-3/   # Tangent–tangent correlation & persistence length
├── Fig-4/   # Packing dynamics
├── Fig-5/   # Effect of spherical confinement
├── Fig-6/   # Waiting times during packing
├── Fig-7/   # Waiting times (U_wall = 0)
├── Fig-8/   # Radial distribution functions
├── Fig-9/   # Packed conformations (snapshots + projections)
├── Fig-10/  # Turning number distributions
├── Fig-11/  # Ejection dynamics
├── Fig-12/  # Waiting times during ejection
```

Each folder contains raw data, gnuplot scripts, and LaTeX files for figure generation.

---

## 🔧 Workflow

Example (for Fig-2a):

```bash
cd Fig-2/FIG-2(a)/
gnuplot FIG_2_a.gnu
pdflatex FIG_2_a.tex
```

Figures were generated using `gnuplot` and `pdflatex`, with minor adjustments in Inkscape.

---

## 👨‍💻 Authors

Soham Dhali, Gokul Upadhyay, Abhishek Chaudhuri, and Anil Kumar Dasanna§

---

## 📜 License

For academic and research purposes only. Please contact the authors before reuse.

---

## 📚 Citation

If you use this repository, please cite:

**Soham Dhali, Gokul Upadhyay, Abhishek Chaudhuri, and Anil Kumar Dasanna.**
*Packing and Ejection of a Semiflexible Polymer in a Capsid: Effect of Helicity* (2025).

---
