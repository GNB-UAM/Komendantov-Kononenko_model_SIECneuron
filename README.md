# Komendantov-Kononenko model implementation for a CPG with 3 neurons in a SIEC configuration

## Description

This project contains a C implementation of a Komendantov-Kononenko model for a CPG containing a slow-inhibited electrically coupled (SIEC) neuron. It reads initial conditions from an input file (`initial_parameters`), processes the data, and generates multiple output files for analysis of the potential and electrical current for each neuron in the CPG.

## Requirements

- C compiler (e.g., `gcc`)
- Standard C libraries (no external dependencies)

## Compilation

To compile the code, run:

```bash
gcc -o komendantov_SIEC komendantov_SIEC.c
```

## Usage

Run the compiled program with:

```bash
./komendantov_SIEC
```

You can also run the script `./script_komendantov.sh` provided in the repository for automated execution.

Ensure that the `ENTRY` file is correctly formatted before execution.

## Input File (ENTRY)

The `initial_parameters` file should contain the necessary initial conditions for the simulation. The format follows the model's specifications and includes values for membrane potential, calcium concentration, and conductances needed for chaotic bursting behavior. An example is provided in the repository.

## Output Files

The program generates multiple output files, each containing the results of the simulation for different electrical conductance values and for each neuron.

## License

This project is licensed under the MIT License. See the LICENSE file for details.

