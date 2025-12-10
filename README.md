# Shell_Scripting

Shell is an environment in which we run linux commands

>> shell script is a text file
>> Sequence of commands
>> logic if execution

Executing shell script --> ensure file has a exicutable permission is not $chmod +x file.sh

We can run shell scripting through relative path and absolute path
--> ./file.sh = relative path that we run from file location
--> /home/ubuntu/file.sh = absulute path if we want exicute from other location in linux
--> export PATH=$PATH:/home/ubuntu = set path variable now we can run script from any location using only file name i.e., file.sh.

--> sh file.sh = when we not included #!/bin/bash
    sh file.sh = #!/bin/sh
    bash file = #!/bin/bash
    note: by using bash file.sh we can run script if don't have excutable permission
--> . ./file.sh = run script without creating a new shell (child shell and parent shell)

==============================================================================================================
Trubleshooting:

set -x #debug mode.
set -e #exit the script if ant error.
set -o #pipefail

==============================================================================================================

Operators:
1. Arithmetic operators
2. Relational operators
3. Boolean operators
4. String operators
5. file operators

1. Arithmetic operators: (add, sub, multi, div,)
   Shell uses external program "expr" to operations
   syntax: `expr value1 <operator> value2`

   + addition
   - substraction
   \* multiplication
   / division 
   % module (divides & return remainder)
   = assignment
   == equality
   != not equality

==========================================================
Relational Operators:

-eg = Checks if the value of two operands are equal or not, if yes then condition becomes true.

-ne = Checks equal or not, if values are not equal then condition becomes true.

-gt = Checks value of left operand is grater then the value of right operand.

-it = Checks value of left operand is lesser then the value of right operand.

-ge = Checks if the value of left operand is grater then or equal to the value of right operand.

-le = Checks is the value of left operanf is lesser then or equal to the value of righr operand.

=========================================================
Dicision making:
> Only when a condition is writing success or true value the script will pick the lines to executes.
> Supoose the condition is writening false then line will not be picked for exiction.
> Any non-zero and non-null values are "true"
> Nagation of a true value by ! returns "FALSE"
> There are 3 ways we can execute disition making.

1. if statement:
   if[condition];then
   #code to run if condition is true
   fi
2. if else statement: using if else statement we can print if condition is true "statement1"
    or condition is false "statement2"

    syntex:
    if[condition]:then
    #code to run if condition is "true"
    else
    #code to run if condition is "false"
    fi
   
================================================================================================================

Variables:-

In place in the memory in the system in which some value will be stored. we can reuse the variable or change th
e value when there is requirement.

--> define a Variable:
    variable_name=value
--> return the value from variable: $variable_name

Variable types: 1. Local variables: any var that we define inside script is called local variable
                2. Environment variables: if a variable is created under parent shell, all the child shell can                    also recive those variable are called environment variables
                
                note: Anything created under parent shell will be avilable to the child shell but created under                      child shell won't be avilable for parent shell.

                3. Special Variables: These variables are those we don't define. there is something already 
                   available we just consume it.
                   it dosn't have name.
                   -> Their are some special cherecters we used as special var and it has built in value.

                $0 = returns the name of the script.
                $n = command line orgument, n is a value from 1 - 9.
                $# = return total number of arguments.
                $? = return the process ID of the script.
                shift = number of arguments are reduced each time as the shift command executes.
                $@ = print the entair argument.

