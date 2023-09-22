#!/bin/bash

# Run the Python script
python bioinformatics_python.py > python_output.txt

# Run the Node.js script
node bioinformatics_node.js > node_output.txt

# Compile and run the Java program
javac BioinformaticsPerson.java
java BioinformaticsPerson > java_output.txt

# Run the Ruby script
ruby bioinformatics_ruby.rb > ruby_output.txt

# Compile and run the C program
gcc bioinformatics_c.c -o bioinformatics_c
./bioinformatics_c > c_output.txt

# Combine the script outputs into a CSV file
echo "Name,Email,Slack Username,Area of Interest" > output.csv
echo "$(cat python_output.txt)," >> output.csv
echo "$(cat node_output.txt)," >> output.csv
echo "$(cat java_output.txt)," >> output.csv
echo "$(cat ruby_output.txt)," >> output.csv
echo "$(cat c_output.txt)," >> output.csv

echo "CSV file 'output.csv' generated from script outputs."
