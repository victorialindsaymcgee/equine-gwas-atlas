# =============================================================
# Equine GWAS Atlas - Repository Setup Script
# Run from inside the equine-gwas-atlas folder in PowerShell
# =============================================================

Write-Host "Creating placeholder files..." -ForegroundColor Cyan

New-Item -ItemType File -Path "protocol/search_log.md" -Force
New-Item -ItemType File -Path "extraction/extraction_form_draft.md" -Force
New-Item -ItemType File -Path "docs/README.md" -Force
New-Item -ItemType File -Path "manuscript/README.md" -Force

Write-Host "Creating .gitignore..." -ForegroundColor Cyan

Set-Content ".gitignore" -Encoding UTF8 -Value @"
# R
.Rhistory
.RData
.Rproj.user/
*.Rproj
.Ruserdata

# OS files
.DS_Store
Thumbs.db

# Temporary files
*.tmp
*.bak
*~

# EndNote working files
*.enl

# Word/Office temporary files
~`$*.docx
~`$*.xlsx
"@

Write-Host "Creating README.md..." -ForegroundColor Cyan

Set-Content "README.md" -Encoding UTF8 -Value @"
# Equine GWAS Atlas

A systematic evidence map and cross-phenotype synthesis of genome-wide
association studies (GWAS) in the domestic horse (*Equus caballus*).

## Overview

This project systematically characterises the methodological robustness,
transparency, data openness and biological findings of equine GWAS, and
investigates shared genetic architecture across equine phenotypes.

## Project status

| Resource | Status |
|---|---|
| OSF pre-registration | In preparation |
| Protocol manuscript | In preparation |
| Zenodo deposit | In preparation |
| Data collection | Not yet commenced |

## Repository structure

    equine-gwas-atlas/
    - protocol/      Protocol document and search log
    - data/          Extraction database (CSV tables)
    - extraction/    Extraction forms and codebooks
    - R/             Analysis scripts
    - manuscript/    Manuscript drafts
    - docs/          Documentation and data dictionary

## Data tables

| Table | File | Description |
|---|---|---|
| Publications | data/publications.csv | Publication-level metadata |
| Studies | data/studies.csv | GWAS analysis characteristics |
| Methodology | data/methodology.csv | Methodological evidence domains |
| Openness | data/openness.csv | Data availability and reusability |
| Associations | data/associations.csv | Reported variant associations |
| Annotation | data/annotation.csv | Biological annotation |

## Licence

Data: Creative Commons Attribution 4.0 (CC BY 4.0)
Code: MIT Licence

## Contact

[Your name]
[Your institution]
[Your email]
"@

Write-Host "Creating CITATION.cff..." -ForegroundColor Cyan

Set-Content "CITATION.cff" -Encoding UTF8 -Value @"
cff-version: 1.2.0
message: "If you use this dataset or code, please cite as below."
type: dataset
title: "Equine GWAS Atlas"
abstract: >
  A systematic evidence map and cross-phenotype synthesis of genome-wide
  association studies in the domestic horse (Equus caballus).
authors:
  - family-names: "[Your surname]"
    given-names: "[Your given name]"
    orcid: "https://orcid.org/XXXX-XXXX-XXXX-XXXX"
    affiliation: "University of Edinburgh"
repository-code: "https://github.com/YOURUSERNAME/equine-gwas-atlas"
license: CC-BY-4.0
version: "0.1.0-dev"
date-released: 2026-09-01
keywords:
  - equine
  - GWAS
  - genome-wide association
  - systematic review
  - evidence map
  - horse
  - genetics
"@

Write-Host "Creating LICENSE..." -ForegroundColor Cyan

Set-Content "LICENSE" -Encoding UTF8 -Value @"
This repository contains two components under separate licences.

DATA LICENCE
All files in the /data/ directory are licensed under the
Creative Commons Attribution 4.0 International Licence (CC BY 4.0).
https://creativecommons.org/licenses/by/4.0/

CODE LICENCE
All files in the /R/ directory are licensed under the MIT Licence.

MIT Licence
Copyright (c) 2026 [Your name]

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
Software), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be included
in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED AS IS, WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED.
"@

Write-Host "Creating CSV data tables..." -ForegroundColor Cyan

Set-Content "data/publications.csv" -Encoding UTF8 -Value `
"publication_id,doi,pmid,title,journal,year,first_author,corresponding_author,country,funding_source,conflicts_of_interest,preprint"

Set-Content "data/studies.csv" -Encoding UTF8 -Value `
"analysis_id,publication_id,breed,country_origin,recruitment_source,cohort_type,n_total,n_cases,n_controls,phenotype_original,phenotype_id,phenotype_level1,phenotype_level2,trait_type,genotyping_platform,n_markers_preqc,n_markers_postqc,genome_assembly,imputation,imputation_reference,gwas_model"

Set-Content "data/methodology.csv" -Encoding UTF8 -Value `
"analysis_id,phenotype_definition_reported,diagnostic_criteria_reported,measurement_method_reported,ascertainment_described,control_definition_reported,exclusion_criteria_reported,covariates_considered,sample_callrate_threshold,snp_callrate_threshold,maf_threshold,hwe_threshold,missingness_threshold,batch_effect_assessed,sex_check,relatedness_check,duplicate_check,pca_mds,n_pcs_included,kinship_grm,mixed_model,gwas_model_detail,genomic_control_applied,lambda_reported,lambda_value,qq_plot_reported,gw_threshold,threshold_prespecified,multiple_testing_correction,effect_size_reported,se_reported,ci_reported,manhattan_reported,replication_cohort,replication_independent,replication_n,functional_validation,domain_a_code,domain_b_code"

Set-Content "data/openness.csv" -Encoding UTF8 -Value `
"analysis_id,raw_genotype_availability,raw_phenotype_availability,summary_stats_code,summary_stats_description,analysis_code_code,analysis_code_description,metadata_availability,repository_name,accession_number,access_mechanism,link_verified,access_checked_date,meta_analysis_ready,fields_present,reusability_index"

Set-Content "data/associations.csv" -Encoding UTF8 -Value `
"association_id,analysis_id,variant_id_original,rsid,chr_original,position_original,assembly_original,chr_harmonised,position_harmonised,assembly_harmonised,mapping_status,effect_allele,other_allele,maf,effect_estimate,se,p_value,locus_label,ld_interval_reported,ld_interval_start,ld_interval_end,gene_reported,gene_mapping_code,evidence_tier"

Set-Content "data/annotation.csv" -Encoding UTF8 -Value `
"association_id,gene_symbol_standardised,ensembl_equine_id,human_orthologue_symbol,orthologue_type,go_terms,kegg_pathway,reactome_pathway,tissue,faang_annotation,evidence_type,annotation_source"

Write-Host "Creating R folder files..." -ForegroundColor Cyan

Set-Content "R/README.md" -Encoding UTF8 -Value @"
# R Analysis Scripts

Run scripts in numbered order.

| Script | Purpose |
|---|---|
| 01_search.R | Search result import and deduplication summary |
| 02_screen.R | Screening statistics and PRISMA flow |
| 03_extract.R | Extraction data cleaning and validation |
| 04_harmonise.R | Variant harmonisation to EquCab3.0 |
| 05_evidence.R | Methodological evidence domain analysis |
| 06_openness.R | Openness and reusability analysis |
| 07_overlap.R | Cross-phenotype locus/gene/pathway overlap |
| 08_figures.R | All manuscript figures |
"@

$scripts = @(
    "01_search",
    "02_screen",
    "03_extract",
    "04_harmonise",
    "05_evidence",
    "06_openness",
    "07_overlap",
    "08_figures"
)

$date = Get-Date -Format "yyyy-MM-dd"

foreach ($script in $scripts) {
    Set-Content "R/$script.R" -Encoding UTF8 -Value @"
# Equine GWAS Atlas
# Script: $script.R
# Author: [Your name]
# Date: $date
# Description: [Add description]
#
# Dependencies: [Add packages when known]
# Input:  [Add input files]
# Output: [Add output files]

"@
}

Write-Host "Creating search log..." -ForegroundColor Cyan

Set-Content "protocol/search_log.md" -Encoding UTF8 -Value @"
# Search Log

## Equine GWAS Atlas - PRISMA-S Search Record

**Final search date:** [To be completed]
**Search rerun date (pre-submission):** [To be completed]

---

## Database searches

### PubMed/MEDLINE
**Date:**
**Search string:** [Paste exact string here]
**Results:** [n]

### Web of Science Core Collection
**Date:**
**Results:** [n]

### Scopus
**Date:**
**Results:** [n]

### Embase
**Date:**
**Results:** [n]

### CAB Abstracts
**Date:**
**Results:** [n]

### Europe PMC
**Date:**
**Results:** [n]

### Google Scholar
**Date:**
**Results reviewed:** First 200 results
**New records identified:** [n]

---

## Deduplication

**Total retrieved:** [n]
**Duplicates removed:** [n]
**Post-deduplication:** [n]

---

## Citation searching

**Backward citation searches completed:** [n papers]
**Forward citation searches completed:** [n papers]
**New records from citation searching:** [n]

---

## Total records to screening: [n]
"@

Write-Host "All files created." -ForegroundColor Green
Write-Host ""
Write-Host "Now running git commands..." -ForegroundColor Cyan

git add .
git commit -m "Initial repository structure: protocol skeleton, data table headers, R script placeholders, documentation"
git tag v0.1-skeleton
git push origin main
git push origin --tags

Write-Host ""
Write-Host "Setup complete." -ForegroundColor Green
Write-Host "Check GitHub to confirm the push was successful."
