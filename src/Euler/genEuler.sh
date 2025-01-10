#!/bin/bash

LIMIT=100

for ((x=1; x<=LIMIT; x++)); do
    # Create the filename
    filename="Euler${x}.hs"
    
    if [ -e "$filename" ]; then
        echo "File $filename already exists. Skipping."
        continue
    fi
    # Write the content to the file
    cat <<EOF > $filename
module Euler.Euler${x} (
        euler${x}
) where
import Euler.EulerType (EulerType)


euler${x} :: EulerType
euler${x} = -1
EOF

    echo "Created $filename"

done

filename="EulerSolver.hs"
cat <<EOF > $filename
module Euler.EulerSolver (
        euler
) where


import Euler.EulerType (EulerType)

EOF

# Import all Euler modules
for ((x=1; x<=LIMIT; x++)); do
    echo "import Euler.Euler${x} (euler${x})" >> $filename
done

cat <<EOF >> $filename


euler :: Int -> EulerType 
euler n 
EOF

# Write the case conditions
for ((x=1; x<=LIMIT; x++)); do
    if ((x < 10)); then
        echo "     | n == ${x} =     euler${x}" >> $filename
    elif ((x < 100)); then
        echo "     | n == ${x} =    euler${x}" >> $filename
    else
        echo "     | n == ${x} =   euler${x}" >> $filename
    fi
done

# Add the fallback case
cat <<EOF >> $filename
     | otherwise =  42 -- Answer to life, universe and all.
EOF

echo "File $filename created successfully and overwritten!"
