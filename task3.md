---
layout: default
title: Task 3 - Python-based Archived Template
parent: Tasks
nav_order: 3
---

# Task 3: Python-based Archived Template

## Overview

This task introduces you to the legacy Python-based template that was used before the current GentzkowLabTemplate, which is based in `shell`. Even though most projects don't currently use this template, it is useful to get some experience with it.

## Learning Objectives

By the end of this task, you will be able to:

- Understand the differences between the legacy and current templates
- Work with Python-based research workflows
- Navigate archived project structures

## Prerequisites

Before starting this task, ensure you have:

- Completed [Task 1: GentzkowLabTemplate](task1.md)
- Completed [Task 2: Sherlock Extension](task2.md)
- Basic Python programming knowledge
- Understanding of the current lab workflow

## Task Description

Follow the steps below, making sure to follow all workflow procedures (issues, branching, PRs, etc.) as described in the [Lab Manual](https://docs.google.com/document/u/1/d/15urblzRR2XaymiXhvlEVfCJCwuMQQ3KaF-l4ol68dnA/edit?tab=t.0#heading=h.9zo0bcd06n82).

---

## A) Repository Setup

### 1. Create Repository from Archived Template
- Create your own public repository using the [archived template](https://github.com/gentzkow/template_archive) as a template by clicking "Use this template" and invite the practice task assigner as a collaborator.


### 2. Test Repository Functionality
- Run the repository from beginning to end to replicate the output.
- Ensure all components are working correctly before proceeding.

---

## B) Working with Issues and Changes

### 1. Create Issue for Histogram Modification
- Open a new issue to modify the code in the data folder so that the histogram in `output/chips_sold.pdf` displays percentages instead of counts.

### 2. Implement Changes
- Update the data folder with your new histogram as an output by running `data/make.py`.
- To make sure your changes are reflected in the paper, run `paper_slides/make.py`.
- Commit this file with a helpful message.

---

## C) Pull Request and Completion

### 1. Open Pull Request
- Open a PR to close the issue as usual, following the same workflow procedures used in previous tasks.
- Ensure all changes are properly documented and the repository runs correctly.

---

## Next Steps

Congratulations! You've completed all three practice tasks. You now have a comprehensive understanding of the Gentzkow Lab workflow, from basic setup to high-performance computing and historical context. You're ready to contribute to active research projects in the lab.
