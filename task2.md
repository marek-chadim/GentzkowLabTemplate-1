---
layout: default
title: Task 2 - Sherlock Extension
parent: Tasks
nav_order: 2
---

# Task 2: Sherlock Extension

## Overview

This task builds upon Task 1 by introducing you to Stanford's high performing computing cluster: Sherlock. You'll learn how to submit jobs, manage computational resources, and work with large datasets that require more computing power than your local machine.

## Learning Objectives

By the end of this task, you will be able to:

- Connect to and navigate the Sherlock cluster
- Submit batch jobs using SLURM
- Monitor and manage job queues and computational resources
- Work with large datasets on remote servers
- Use the lab's shared computing resources and storage systems
- Understand SLURM job scheduling and resource allocation

## Prerequisites

Before starting this task, ensure you have:

- Completed [Task 1: GentzkowLabTemplate](task1.md)
- A Stanford SUNet ID and access to Sherlock
- Basic familiarity with command line operations
- Understanding of the lab's workflow from Task 1

## Task Description

Follow the steps below, making sure to follow all workflow procedures (issues, branching, PRs, etc.) as described in the [Lab Manual](https://docs.google.com/document/u/1/d/15urblzRR2XaymiXhvlEVfCJCwuMQQ3KaF-l4ol68dnA/edit?tab=t.0#heading=h.9zo0bcd06n82).

---

## A) Sherlock Setup and Access

### 1. Review Sherlock Documentation
- Thoroughly review the purpose and features of Sherlock [here](clusters.md). You may refer to the same link throughout this task to read further instructions.

### 2. Connect to Sherlock
- Log on to Sherlock following the instructions [here](https://www.sherlock.stanford.edu/docs/getting-started/).
- Ensure you have access to the correct partitions (`$OAK`, `$HOME`, `$GROUP_HOME`, `$SCRATCH`, and `$GROUP_SCRATCH`) with the `sh_part` command.
- If you do not have access to `$OAK`, ask a lab member for access.

### 3. Set Up Personal Directory and Tools
- Set up your personal directory under `$OAK`.
- Set up `Dropbox` and `Rclone` on Sherlock. You can follow the instructions [here](https://www.sherlock.stanford.edu/docs/storage/data-transfer/) and [here](https://www.sherlock.stanford.edu/docs/software/using/rclone/).
- Initialize GitHub usage on Sherlock by [generating](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) a new SSH key and [adding](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account) it to Sherlock.

---

## B) Repository Setup on Sherlock

### 1. Clone and Test Repository
- Clone your remote template repository to your personal directory in `$OAK`.
- Make sure the repository is working by running `run_all.sh` and confirming all the outputs are generated correctly.
- You should see the standard output appear in your `$OAK` directory.

**Note**: You will not need to set up command line usage on Sherlock - simply load the relevant applications with the `module spider` and `ml <application/version>` commands. For more on this, see Setting up the environment in the [Research Clusters](clusters.md) section of the manual.

---

## C) Working with Issues and Changes

### 1. Create Issue for Log Analysis
- Create a new issue to change the highway fuel economy analysis to use logs.
- Follow similar steps as you did previously in Task 1.

### 2. Implement Changes
- Add the new figure to the slides.
- Follow the workflow procedures (issues, branching, PRs, etc.) as described in the [Lab Manual](https://docs.google.com/document/u/1/d/15urblzRR2XaymiXhvlEVfCJCwuMQQ3KaF-l4ol68dnA/edit?tab=t.0#heading=h.9zo0bcd06n82).

---

## D) Job Submission and Execution

### 1. Submit Batch Job
- Submit a job to run the full repository with these edits, following the instructions [here](https://www.sherlock.stanford.edu/docs/getting-started/submitting/).
- Ensure the job completes successfully and generates all expected outputs.

---

## E) Pull Request and Completion

### 1. Open Pull Request
- Open a PR as before, following the same workflow procedures used in Task 1.
- Ensure all changes are properly documented and the repository runs correctly on Sherlock.
