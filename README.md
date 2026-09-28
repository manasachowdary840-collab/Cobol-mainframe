# COBOL Mainframe Examples

A collection of COBOL and JCL examples demonstrating enterprise mainframe
development concepts including batch processing, sequential file handling,
record validation, file-status handling, and structured COBOL programming.

## Technologies

- COBOL
- JCL
- z/OS
- Sequential File Processing
- Batch Processing

## Project 1: Employee Processing

`EmployeeProcessing.cbl`

Demonstrates:

- COBOL program structure
- Working-Storage variables
- PIC clauses
- MOVE statements
- DISPLAY statements
- Structured paragraph processing

`EmployeeProcessing.jcl`

Provides sample JCL for executing the employee-processing program in a
z/OS batch environment.

## Project 2: Employee Batch Processing

`EmployeeBatch.cbl`

Demonstrates:

- ENVIRONMENT DIVISION
- FILE-CONTROL
- SELECT / ASSIGN
- FILE SECTION and FD
- Sequential file processing
- OPEN / READ / CLOSE
- FILE STATUS handling
- End-of-file processing
- PERFORM processing
- Record counting

## JCL

`EmployeeBatch.jcl`

Demonstrates how a COBOL batch application can be executed through JCL,
including sample load-library and input-dataset definitions.

> Dataset and load-library names in this repository are illustrative
> placeholders and should be adapted to the target z/OS environment.

## Sample Data

`sample-input.txt`

Contains fictional employee records used to demonstrate the batch-processing
flow.

No production, client, or proprietary data is included.

## Expected Output

`expected-output.txt`

Shows representative output produced by the employee batch-processing example.

## Processing Flow

Input Employee File
        |
        v
EmployeeBatch COBOL Program
        |
        v
Read & Process Records
        |
        v
Display Employee Information
        |
        v
Record Count / Batch Completion

## Skills Demonstrated

- COBOL Application Development
- JCL
- Mainframe Batch Processing
- Sequential File Handling
- File Status Validation
- EOF Processing
- Structured Programming
- Basic Batch Troubleshooting

## About

This repository contains non-proprietary technical examples created to
demonstrate mainframe application-development concepts.
