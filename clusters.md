---
layout: default
title: Research Clusters
parent: Reference
nav_order: 1
---

# Research Clusters

This guide provides comprehensive information about working with high-performance computing clusters, particularly Stanford's Sherlock cluster. Research clusters allow us to outsource computationally expensive jobs to external computer banks.

## Sherlock Overview

**Sherlock** is a shared computer cluster funded by Stanford's Provost and Dean of Research. It is available to Stanford faculty and affiliates. Computing clusters such as Sherlock allow us to outsource computationally expensive jobs to external computer banks.

## SLURM Job Scheduler

The **Simple Linux Utility for Resource Management (SLURM)** is used by most computing clusters, including Sherlock. One can find a comprehensive guide on SLURM through its [homepage](https://slurm.schedmd.com/) and a quick cheatsheet on SLURM at this [Slurm 101 website](https://slurm.schedmd.com/quickstart.html).

The basic workflow in these clusters is the same as in the local computer. One should always check code carefully before submissions.

## Getting Started

### Logging in to Sherlock

You can access Sherlock from your terminal by running:

```bash
ssh SUNetID@login.sherlock.stanford.edu
```

When you first log in, check this [Sherlock guide](https://www.sherlock.stanford.edu/docs/getting-started/) to set up credentials.

### Installing and Loading Software

#### A) Loading Software

Upon logging into the cluster, you can install desired software by inputting the following commands:

- Use `module avail` or `module spider` to see if the software is already installed in the cluster, and which versions are available. If so, use `module load <application/version>`.
- Note that some applications are only available on distinct module categories (i.e., system as opposed to chemistry).
- In most cases, you will want to load modules directly from the system category (i.e., `module load system <application/version>`).
- Generally, you will want to load the latest versions of these modules in Sherlock: Stata, Lyx, texlive/2019, Git, and Git LFS.
- If you are using miniconda (as recommended), do not load Python or R modules locally from Sherlock.
- If you are not using miniconda, you should additionally load `R/<latest_version>` and `Python/3.6.1`.
- For more information on miniconda, see [Installing miniconda on Sherlock](#installing-miniconda-on-sherlock) below.

#### B) Installing Software

Installing new software in Sherlock is not straightforward, and should be carefully considered. Sherlock does not enable access to standard installation procedures, such as `brew install` or `sudo install`. Furthermore, Sherlock operates on a Linux OS, so software packages should be supported in Linux. You can learn more about software installations through [Sherlock's user guide](https://www.sherlock.stanford.edu/docs/software/installing/).

Generally, software should be installed in your local `$HOME` directory. If the entire GS-Lab team will require usage, software should be installed in `$GROUP_HOME`. Check with a lab member before installing shared software.

- Individual lab members should specify file paths where their shared applications are located in their `~/.bash_profile`.
- Contact Sherlock Support if the above methods to load local packages fail.

## Git, GitHub, and Git LFS on Sherlock

To link GitHub to Sherlock, you will need to generate a new SSH key, and link this to Sherlock. You can follow the instructions [here](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent). Ensure you follow the instructions for Linux machines - following the prompts for Mac or Windows will throw errors. Also make sure you add this SSH key on your Sherlock terminal, and not on your local terminal. You will want to maintain separate keys for Sherlock use and local use.

To check if you have successfully connected to GitHub, you can run `ssh -T git@github.com` (within your Sherlock terminal) to test SSH connection. Following this, you may use standard Git commands in the terminal (i.e., running `git clone <repository SSH link>` in your personal directory on `$OAK` will duplicate a remote GitHub repository).

As in the standard template repository, we will need to use git lfs for many projects. To activate git lfs and clone a repository:

```bash
ml system git/<latest_version>
ml system git-lfs/<latest_version>
git lfs install
./setup/lfs_setup.sh
git clone git@github.com:<org_name>/<repo_name>.git
```

## Installing Miniconda on Sherlock

As discussed above, installing remote software is not generally recommended in Sherlock. However, you will need to install miniconda in order to follow the standard template process. If you do not wish to run conda on Sherlock, see the instructions in `/setup/dependencies.md`. You will need to load all relevant modules and package versions locally in Sherlock.

To install miniconda on Sherlock:

1. Visit the [website hosting source code for miniconda](https://docs.conda.io/en/latest/miniconda.html).
2. Copy the web address for the installation code script to your local computer. The suffix for this web address should be `.sh`.
3. On Sherlock: navigate to your `$HOME` user repository (you can simply run the `cd` command in terminal to do so).
4. Load the curl module with `module spider curl`, and ensure it is up to date by specifying `ml curl <latest version>`.
5. Input the command `curl -O <source file link>`, where "<source file link>" refers to the installation file url (e.g., `https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh`)
6. Request a development node with the command `sdev -m 16G` and execute the shell script with `bash <Miniconda3-latest-Linux-x86_64.sh>`. Follow the prompts in the `.sh` file.

**Note**: You will only need to install miniconda once, but you will need to initialize a new conda environment (following the standard procedure in template) whenever you hope to submit a new job.

## Setting up the Sherlock Environment

You should follow the protocol defined by the points below to set up your environment. These steps should always be taken prior to submitting a job, and after loading/installing the above software.

**Note**: The `~/.bash_profile` and the `~/.bashrc` files serve different purposes. The `~/.bash_profile` defines the paths of the software that will be used on an interactive login shell. The `~/.bashrc` script is the file that is checked and executed when using a non-login interactive shell. Thus, the `~/.bashrc` file is the one that will be checked when you submit a job to Sherlock. Find further information [here](https://www.gnu.org/software/bash/manual/html_node/Bash-Startup-Files.html).

1. Explicitly specify your Python or conda path at the beginning of your `~/.bashrc` script, by setting:
   ```bash
   export PYTHONPATH=$OAK/<YourPythonPathInSherlock>/python3.6/site-packages:$PYTHONPATH
   ```
   or if using conda:
   ```bash
   source <YourCondaPathInSherlock>/conda.sh
   conda activate <CONDAENVIRONMENT>
   ```

2. Ensure you have imported all required modules.
3. Initialize your environment as required by your project (usually in a repository README or wiki).
4. Generally, loading required modules in Sherlock will enable command line usage. There is no need to specify the executables path in a `~/.bash_profile.sh` script as we do in template.

## Accessing Storage Locations for Sherlock Edits

Sherlock provides access to multiple file systems with different storage characteristics. We recommend following the below workflow.

1. Clone any GitHub directory to one's personal folder in gentzkow. These can be accessed by running the command `cd $OAK` in your Sherlock terminal.
2. Rsync the entire repository and external inputs to SCRATCH.
3. Run the job within SCRATCH.
4. Commit the job.
5. Rsync back to OAK.

In certain circumstances, `L_SCRATCH` is preferred to `SCRATCH`. This is the case if:

- The job involves the creating of will temp files created by scripts.
- The job involves small (<100GB) files that need to be read/written onto many times in the course of a job.

**Note**: If you are working with very large files, it is important to ensure that lab members do not needlessly copy over these files to each of their repositories on Sherlock (in particular, within `$OAK`). These files should instead be RSynced once to a shared location, which serves as a relative path for all lab members (for example, in the lab folder in `$OAK`).

## Editing Files in Sherlock

There are four distinct ways to edit files using Sherlock:

### 1. Direct Terminal Editing

You can directly edit files in Sherlock interactively, using a text editor such as `nano`, `micro`, or `vim`.

### 2. Local Editing with Git

Provided that GitHub integration has been set up, you can make file edits on your local computer in the code editor of your choice, push those changes to a remote repository hosted on GitHub, and then pull those changes down to your personal Sherlock directory in `$OAK`.

### 3. Visual Studio Code Remote SSH

If you use Visual Studio Code, you can install and utilize the "Remote - SSH" extension provided through Microsoft. This extension will allow you to access Sherlock through Visual Studio, and make edits as you might on a local Visual Studio project. You will need to login to Sherlock following the standard process outlined above. **This is the approach we recommend.**

### 4. SSHFS Mounting

You can set up local editing on Sherlock by following these instructions relating to SSHFS. As an example, you could run the following after installing SSHFS in your local system:

```bash
mkdir ~/sherlock_oak  # will create an empty directory in your local $HOME directory.
sshfs <sunet id>@login.sherlock.stanford.edu:/oak/stanford/groups/gentzkow ~/sherlock_oak  # will mount the $OAK research cluster in Sherlock to your empty sherlock_oak folder in $HOME.
```

If you choose to utilize the fourth approach, remember to always unmount your folder when you have finished editing. You can utilize the following command to do so: `umount ~/sherlock_oak`.

**Important**: If your Mac goes to sleep and you are still mounted to Sherlock (the fourth approach), your computer will continually try to access Sherlock. This will result in your IP address being blacklisted from Sherlock. While this is reversible, we want to avoid this situation if possible.

## Sample Batch Script for Testing and Job Submission

Each bash script you run to submit jobs will differ slightly based on its purpose, the anticipated resources required, and the specified clusters for execution. However, the general format will be similar to the below:

```bash
#!/bin/bash
#
#SBATCH --job-name=run_all
#SBATCH --time=2:00:00
#SBATCH --mem=50GB
#SBATCH --partition=gentzkow
#SBATCH --mail-type=ALL
#SBATCH --mail-user=<USER>@stanford.edu
#SBATCH --ntasks=1

srun python run_all.py
```

For more information on how to submit and run jobs on Sherlock, see the [user documentation](https://www.sherlock.stanford.edu/docs/getting-started/submitting/).

## Stanford Gentzkow Node

MG has purchased resources on Stanford's Sherlock 2 cluster. Jobs submitted to this partition only compete with other lab members for resources, and interactive jobs can request all available resources. The partition consists of:

- A Dell C6320 server with 20 cores, 256G of RAM, and a 200G SSD.

You can submit all of your jobs to multiple partitions. This is done by setting `#SBATCH --partition=gentzkow,hns,normal` at the beginning of your sbatch script.

## Stanford Humanities and Sciences Nodes

The Humanities and Sciences Dean's Office at Stanford has purchased Sherlock nodes for its researchers' exclusive use. These nodes belong to the `hns` partition. This partition consists of:

- 10 CPU nodes, which have 64 GB of RAM and 16 multi-core CPUs.
- `hns_gpu`, a graphical processing unit node with 128 GB of RAM, a 8 Tesla K80 GPU @ 1.87 Tflops (double precision) and a 5.60 Tflops GPU (single precision), and 16 CPUs.
- a large memory node with 1.5 TB of RAM. Job requests that require over 64 GB of RAM are automatically sent to this node.

Access these nodes by adding `-p hns` to our job submission requests. Similarly, we can run graphical processing unit (GPU) jobs by adding `-p hns_gpu --gres gpu:1` to our request commands.

## Testing Scripts Prior to Job Submission

There are two steps of testing that you should follow prior to submitting.

1. **Test your bash script** before submitting a job to be sure that the environment is set up correctly.
   - One way to do this is to have your sbatch script call only a specific lib file. These files gather functions that are used throughout the repository, and hence run quickly. However, they need your environment to be fully working to run and thus serve as a fast check for your setup.

2. **Test your full script** by running it on a subset of the data. You can also interactively test out your code by running the command `sdev -m16GB`.

In general, your jobs are assigned a node depending on their priority and the resources needed. If you allocate your job only to the gentzkow partition (see above) then it will run whenever the partition has a free node, regardless of the time or memory requested. However, if you opt for multiple partitions, then the allocation depends on the time and memory requested.

Since your environment testing is fast, we suggest that you adjust the time and memory needed and then allocate your job to multiple partitions: `#SBATCH --partition=gentzkow,owners` to access whichever is free. Remember to remove the owners partition to run your full job as you do not have priority on it.

## Running Jobs in Sherlock

After setting up your environment and testing your code you can submit a job.

Cluster-specific guides on submitting and running jobs can be found [here](https://www.sherlock.stanford.edu/docs/getting-started/submitting/) for Sherlock.

If you are unsure of whether a job should be submitted to a cluster, first ask another RA and then proceed to MG if necessary.

## Additional Resources

- [Sherlock User Guide](https://www.sherlock.stanford.edu/docs/)
- [SLURM Documentation](https://slurm.schedmd.com/)
- [SLURM Quick Start Guide](https://slurm.schedmd.com/quickstart.html)
