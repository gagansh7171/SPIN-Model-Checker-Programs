# SPIN-Model-Checker-Programs

## Usage
Download this repository. Make the Spin repository and add it to path variable
```
cd Spin/Src
make
export PATH="path/to/present/working/directory:$PATH"
```
Run the script in the repository by specifying the promela file-name and the LTL formula name to check for.
```
cd SPIN-Model-Checker-Programs
./script baker.pml P1
```
The output will be an acceptance run for the LTL formula
