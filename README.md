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

==========================================================================================

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

==========================================================
String Operations:
 = Checks if the value of two operands are equal or not
!= Checks if the value of two operands are equal or not
-z Checks if the given string operand size is zero
-n Checks if the given string operand size is non-zero
str checks id str is not the empty string
     ex: [$str] is not false.

==========================================================

Bollean Operations:
! This is a logical negation

-o This is a logical "OR", if one of the operands is true then condition would be true.

-a This is a logical "AND" if both the operands is true then condition would be true. 

=========================================================
File test operators
-r Checks if the file has read access.
-w Checks if the file has write permission.
-x Checks if the file has executable permission.
-f Checks if the file is an ordinary or a special file.
-d Checks if the file is a directory or not.
-s Checks if the file size is zero or non-zero.
-e Checks if the file exists.


====================================================================================================
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
3. if.. elsif.. else statement: when we have two conditions we use.
   syntax: 
   if [ codition ]; then
   #code to run if condition is true
   elsif [ condition ]; then
   #code to run if condition is true
   else
   #code to run id condition is false
   fi

4. Swich Statememt: using "case" expression allow to compare a single value aganest several possible values and exicute a specific block of commands for the first match found
   syntax:
   case variable in
   pattern1)
   #code to run if pattern matches;;
   pattern2) 
   #code to run if pattern matches;;
   ^)
   #code if nothing matches;;
   esac
   

================================================================================================================

LOOPS:
provides several types of loops to execute a block of commands repeatedly, these loops are essential fot authomatinh repetative tasks, processing list of files and handling command line arguments.

1) while loop: Runs the statement only if the condition is true.
    syntax:
    while [ condition ]
    do 
    statement(s)
    done

2) Until loop: Runs the statement until the condition becomes true
   syntax:
   until [ condition ]
   do
   statement(s)
   done

3) For loop: Number of iterations depending on a list of values.
   syntax: 
   for variable in var1 var2 var3
   do
   statement (s)
   done

4) Loop Controle: Sometimes we need to stop a loop in-between or skip a iteration of the loop
   --> brack - terminates the entire loop
   --> continue - skips a iteration

5) Nested loop: A nested loop is a loop structure where one loop (the inner loop) is placed entirely inside the body of another loop (the outer loop). This structure is crucial in shell scripting for tasks that require iterating over two-dimensional data sets or performing combinatorial operations.
   
==============================================================================================================

Functions: Allow you to group a sequence of commands into a single reusable unit. They help make scripts modular, readable, and maintainable
     syntex:
     Defining a function:
     function_name () {
        statement(s)
     }
     
     Calling a function:
     function_name <arguments>

