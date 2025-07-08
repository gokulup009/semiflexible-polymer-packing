# Packing and Ejection of a Semiflexible Polymer in a Capsid: Effect of Helicity

This repository contains all simulation data, figures, and plotting scripts associated with the study:

**"Packing and Ejection of a Semiflexible Polymer in a Capsid: Effect of Helicity"**

## 📂 Directory Structure

Each directory corresponds to a figure in the manuscript and contains:

- Raw simulation data (`*.txt`)
- Gnuplot scripts (`*.gnu`)
- Final figures in PDF format (`*.pdf`)
- Temporary files (e.g., `.tga`, `.dump`) where applicable

```
Packing_and_Ejection_of_a_Semiflexible_Polymer_in_a_Capsid_Effect_of_Helicity/
├── all_fig/     # Final combined figures
├── Fig-1/       # Initial configurations / snapshots
├── Fig-2/       # Packing time analysis
├── Fig-3/       # Tangent–tangent correlation and persistence length
├── Fig-4/       # Effect of confinement (U_wall = 0 vs WCA)
├── Fig-5/       # Waiting time during packing
├── Fig-6/       # Late-stage packing and κφ dependence
├── Fig-7/       # Radial distribution functions
├── Fig-9/       # Turning number distributions
├── Fig-10/      # Total ejection time vs κφ
├── Fig-11/      # Waiting time during ejection
```

## 🔧 Tools & Workflow

- 📊 **Plotting:** Figures were generated using `gnuplot` scripts with `set terminal epslatex`.
- 📄 **Compilation:** `.tex` figures were compiled using `pdflatex`.
- 🖋️ **Post-processing:** Final positioning of labels and annotations was refined using **Inkscape**.

### 🔁 Example Workflow

```bash
cd Fig-2/FIG-2(a)/
gnuplot FIG_2_a.gnu
pdflatex FIG_2_a.tex
```

> _Tip:_ After compiling, open the resulting `.pdf` in Inkscape to manually adjust label positions and improve layout.

## ✅ Requirements

Install the following tools (Ubuntu/Debian):

```bash
sudo apt install gnuplot texlive-full inkscape
```

## 📝 Notes

- Data were obtained from LAMMPS simulations of polymer translocation and packing.
- Each data point is averaged over multiple runs to ensure statistical reliability.
- Figures follow uniform font sizes, scaling, and aspect ratios for publication readiness.

## 👨‍💻 Author

**Soham Dhali, Gokul Upadhyay, Abhishek Chaudhuri and Anil Kumar Dasanna§**  

## 📜 License

This repository is shared for academic and research purposes only. Please contact the authors before reuse.

## 📚 Citation

If you use this data or figures in your work, please cite:

> Soham Dhali, Gokul Upadhyay, Abhishek Chaudhuri, Anil Kumar Dasanna  
> *Packing and Ejection of a Semiflexible Polymer in a Capsid: Effect of Helicity*  

