This directory has an example script that illustrates how to convert a PowerPoint (`.pptx`) file into a PDF using the `run_pptx` command in the GentzkowLabTemplate.

See the Examples section of the [template instructions](https://github.com/gentzkow/GentzkowLabTemplate/wiki#examples) for the general procedure for using example scripts.

### List of files

* `slides.pptx` is an example PowerPoint file to be converted to PDF.

### Steps to set up the PowerPoint example

1. Place `slides.pptx` in `3_slides/source/` (or in the source folder in any module of your choice).
2. Replace these lines in `3_slides/make.sh`:
  
    ```bash
    #source "${REPO_ROOT}/lib/shell/run_xxx.sh"
    ```
    ```bash
    # run_xxx my_script.xx "${LOGFILE}" || exit 1
    ```

    with:

    ```bash
    source "${REPO_ROOT}/lib/shell/run_pptx.sh"
    ```
    ```bash
    run_pptx slides.pptx "${LOGFILE}" || exit 1
    ```

3. Run `3_slides/make.sh`.

### Requirements

* This script only works on macOS.
* Microsoft PowerPoint must be installed.
* You may be asked to grant file access when running the program for the first time through a pop-up window.
* You may recieve an error like this: `make.sh: Permission denied`. To rectify this, you must execute `chmod +x make.sh` in your terminal. 
