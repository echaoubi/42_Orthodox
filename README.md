# 42_Orthodox Script

## Description

The `42_Orthodox` script is a powerful tool designed to automate the creation of C++ class header and implementation files, following a standardized template commonly used in the 42 coding school. It simplifies the process of creating class files by generating the required boilerplate code for constructors, destructor, and assignment operator, leaving the user with a clean and organized starting point for their C++ classes.

## Requirements

- Bash
- Git (only needed for the initial setup)

## Setup

To use the `42_Orthodox` script, follow these steps:

1. Clone the `42_Orthodox` repository from GitHub (only required for the initial setup):
    ```
    git clone https://github.com/echaoubi/42_Orthodox
    ```

2. Change the current directory to `42_Orthodox`:
    ```
    cd 42_Orthodox
    ```
3. Run the `setup.sh` script to configure the `42_Orthodox` script on your system:
    ```
    bash setup.sh
    ```

## Usage

To generate C++ class files, run the `42_Orthodox` script with the desired class name as an argument:

```
orthodox <class_name>
```

The script will create two files:

- `<class_name>.hpp`: The header file for the provided class.
- `<class_name>.cpp`: The implementation file for the provided class.

## Example

Let's say you want to create a C++ class for handling user data. You can use the `42_Orthodox` script as follows:


The script will create `UserData.hpp` and `UserData.cpp` files with the appropriate C++ class template.

## Generated Files

The generated header and implementation files will follow the 42 coding school's class template, including the necessary constructor, destructor, and assignment operator.

## Output

After running the script, it will display the status of each step, informing you about the successful creation of the header and implementation files.

## Troubleshooting

If you encounter any issues while using the script, please refer to the [troubleshooting section](link_to_troubleshooting.md) for common solutions.


## Credits

The `42_Orthodox` script was created by [echaoubi]([link_to_github_profile](https://github.com/echaoubi/)), inspired by the coding practices at 42 coding school.

## Contribution

Contributions to the `42_Orthodox` script are welcome. If you find any bugs or have suggestions for improvements, please feel free to submit a pull request or open an issue in the [GitHub repository]([link_to_github_repo](https://github.com/echaoubi/42_Orthodox)).
