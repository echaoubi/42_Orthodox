#!/bin/bash

if [ -z "$1" ]; then
    echo "Error: Class name not provided."
    exit 1
fi

class_name="$1"
upper_class_name=$(echo "$class_name" | tr '[:lower:]' '[:upper:]')


# Create the header file
cat <<EOF > "${class_name}.hpp"
#ifndef ${upper_class_name}_HPP
#define ${upper_class_name}_HPP

#include <iostream>
#include <string>

class ${class_name} {
public:
    // Constructors
    ${class_name}();
    ${class_name}(const ${class_name} &copy);

    // Destructor
    ~${class_name}();

    // Operators
    ${class_name} & operator=(const ${class_name} &assign);

private:

};

#endif // ${class_name}_HPP
EOF

# Create the implementation file
cat <<EOF > "${class_name}.cpp"
#include "${class_name}.hpp"

// Constructors
${class_name}::${class_name}()
{
    std::cout << "\e[0;33mDefault Constructor called of ${class_name}\e[0m" << std::endl;
}

${class_name}::${class_name}(const ${class_name} &copy)
{
    (void) copy;
    std::cout << "\e[0;33mCopy Constructor called of ${class_name}\e[0m" << std::endl;
}

// Destructor
${class_name}::~${class_name}()
{
    std::cout << "\e[0;31mDestructor called of ${class_name}\e[0m" << std::endl;
}

// Operators
${class_name} & ${class_name}::operator=(const ${class_name} &assign)
{
    (void) assign;
    return *this;
}
EOF

echo "Files ${class_name}.hpp and ${class_name}.cpp created successfully."
