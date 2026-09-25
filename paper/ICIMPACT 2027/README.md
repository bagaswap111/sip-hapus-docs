# ICIMPACT 2027 - SIP-HAPUS Research Paper

## Overview
This repository contains the ICIMPACT 2027 conference paper for the SIP-HAPUS platform:
*Digitalisasi Layanan Melalui Aplikasi SIP-HAPUS: Solusi Terpadu Untuk Optimalisasi Proses Penghapusan Regident Kendaraan Bermotor Di Jawa Tengah*

## Folder Structure

```
ICIMPACT 2027/
├── README.md
├── IEEEtran.cls          # IEEE conference template class file
├── fig1.png              # Template reference figure
├── ICIMPACT-2027.tex     # Indonesian version (main paper)
├── ICIMPACT-2027.pdf     # Compiled Indonesian PDF
└── english/
    ├── README.md
    ├── ICIMPACT-2027-English.tex  # English version of the paper
    ├── ICIMPACT-2027-English.pdf  # Compiled English PDF (8 pages)
    ├── IEEEtran.cls
    └── assets/
        ├── heuristic_evaluation.png    # Heuristic evaluation bar chart
        ├── task_completion.png          # Task completion rate chart
        ├── system_architecture.png      # SIP-HAPUS system architecture diagram
        ├── manual_vs_digital.png        # Manual vs Digital process comparison
        ├── dsr_framework.png            # DSR framework flow diagram
        └── fig1.png
```

## Source Materials
- **Content**: `paper/formulasi-penelitian.md`
- **Template**: `paper/IEEE-conference-template-062824/`
- **Draft Paper**: `paper/Drafting Paper DSR Sistem Monitoring Bapenda.docx .pdf` (could not be read directly)

## Key Results
- **Heuristic Evaluation**: 82.9% Good, 12.9% Minor, 1.4% Major
- **SUS Score**: 71.5 (Grade B - Good)
- **Task Completion Rate**: 92.3% average
- **Efficiency**: 96% time reduction (90-120 days → 2-4 days)

## Compilation
```bash
# Compile Indonesian version
pdflatex -interaction=nonstopmode ICIMPACT-2027.tex

# Compile English version
pdflatex -interaction=nonstopmode ICIMPACT-2027-English.tex
```
