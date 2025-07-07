---
layout: default
title: Task 1 - GentzkowLabTemplate
parent: Tasks
nav_order: 1
---

# Task 1: GentzkowLabTemplate

## Overview

This task introduces you to the Gentzkow Lab template and workflow. You'll learn how to set up a new project, understand the directory structure, and practice the basic workflow that we use for all our research projects.

## Learning Objectives

By the end of this task, you will be able to:

- Set up a new project using the GentzkowLabTemplate
- Understand the project directory structure
- Navigate the basic workflow (setup → code → data → papers)
- Use Git for version control
- Work with the lab's coding standards

## Prerequisites

Before starting this task, ensure you have:

- Completed the [setup instructions](setup_instr.md)
- Installed Git and Git LFS
- Set up your GitHub account
- Installed VSCode

## Task Description

Follow the steps below, making sure to follow all workflow procedures (issues, branching, PRs, etc.) as described in the [Lab Manual](https://docs.google.com/document/u/1/d/15urblzRR2XaymiXhvlEVfCJCwuMQQ3KaF-l4ol68dnA/edit?tab=t.0#heading=h.9zo0bcd06n82).

---

## A) Getting Started with the Template

### 1. Repository Setup
- Create your own repository using the [GentzkowLabTemplate](https://github.com/gentzkow/GentzkowLabTemplate) repository as a template by clicking "Use this template".
- Invite the practice task assigner as a collaborator.
- Clone your repository locally.
- Run `setup.sh` and follow the instructions as prompted. 

### 2. Test run
- Run `run_all.sh` to confirm the repository is working correctly. 

---

## B) Open Issues and Make Required Changes

### 1. Open an Issue: Update paper and slides with example analysis
- Open a new issue and create a branch for it as described in the [Lab Manual](https://docs.google.com/document/u/1/d/15urblzRR2XaymiXhvlEVfCJCwuMQQ3KaF-l4ol68dnA/edit?tab=t.0#heading=h.9zo0bcd06n82)
- Switch to (checkout) the new issue branch you created
- The steps below should be performed in this issue branch. 

### 2. Move and Run an Example Script
- Choose one language (R, Stata, or Python) from `examples/`.
- Follow the instructions in the README file within the chosen `examples/` folder to run the modules `1_data` and `2_analysis`. 

### 3. Compile paper with generated output
- Follow the instructions in the README file in `examples/latex` to compile the paper using the figures and table you generated in the previous step.
- Run the module `4_paper` and confirm that the expected output is generated in the `output/` directory.

### 4. Run the entire repository to make sure all modules run
- Run the entire repository with `run_all.sh` to make sure it runs correctly.

### 5. Push your changes to the issue branch
- Commit your changes with a helpful message, referencing the issue.
- Push the changes to the relevant issue branch.
  
---

## C) Practicing working on issues

### 1. Edit analysis scripts: plot
- Edit your analysis script so that the city fuel economy plot displays fuel economy in logs. 
- Regenerate the output and confirm the change.
- Commit your changes with a helpful message, referencing the issue.

### 2. Edit analysis scripts: table
- Edit your analysis script so that the standard errors in the regression are clustered by year.
- Export the regression results (coefficients, SEs, p-values) to a new table.
- Regenerate the output and confirm the change.
- Add the new table to the paper and run `4_paper`.
- Make sure to run the entire repo and confirm it runs well.
- Commit your changes with a helpful message, referencing the issue.

### 3. Add your new table and figure to the slides
- Follow the instructions in the README file in `examples/latex` to compile the slides.
- Edit the slides to include the city fuel economy plot in logs and the table with clustered standard errors in the slides.
- Run `3_slides`.
- Confirm the outputs are present in the respective `output/` directories.
- Make sure to run the entire repo and confirm it runs well.
- Commit your changes with a helpful message, referencing the issue.

---

## D) Pull Request and Peer Review

### 1. PR and Review
- Open a Pull Request linked to your issue to merge your work into the main branch, following PR guidelines.
- Request a peer review from the practice task assigner.
- When the PR is approved, close your issue with a summary and deliverables.
   
**Note**: **Wait until the PR has been merged before proceeding to [Task 2: Sherlock Extension](task2.md).** 