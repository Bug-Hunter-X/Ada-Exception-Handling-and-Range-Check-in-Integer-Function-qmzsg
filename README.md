# Ada Exception Handling and Range Check Example

This repository demonstrates a common issue in Ada programming: handling potential exceptions when working with integer ranges. The `Check_Range` function checks if an integer is greater than 10.  The `Main` procedure then calls this function with different integer values, including one that could potentially raise an exception. The example also shows a possible solution which includes handling exceptions.

## Bug Description:

The original `Check_Range` function might not handle all potential exceptions properly. The `Main` procedure provides examples of inputs, such as a very large integer or a value outside the range that could cause issues.  The `exception` block should provide more detailed handling instead of simply returning `False`.

## Solution:

The solution improves the exception handling in `Check_Range` by providing more robust error checking and reporting. In a real-world scenario, more specific exception handling would likely be employed, perhaps logging the error or taking corrective action based on the type of exception encountered.

## How to Run:

1.  Compile the code (using a suitable Ada compiler, like GNAT):
    ```bash
gcc bug.ada -o bug
gcc bugSolution.ada -o bugSolution
    ```
2. Run the executable:
    ```bash
./bug
./bugSolution
    ```