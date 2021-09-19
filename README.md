# LLVM-Loader-POC

![123](https://user-images.githubusercontent.com/42903859/133920530-82ddafc2-689e-4974-9f92-d6c4a64de7c6.png)

## What is a loader in Metacall?
Loaders in Metacall are important for loading code from one specific language and converting it into an intermediate representation called Meta Object Protocol. 
This intermediate representation is then used to extract all the functions, parameters, and logic using self-reflection which is the ability of code to investigate itself. This extracted code can then be used and re-converted
back to any other language's specifics so as to generate a similar logic in that language and get the same output. Because of this inter-conversion, polyglot programming is made possible which eases your development life in many ways.

A loader generally has five important methods. They are
* initialize()
* load()
* discover()
* clear()
* destroy()

These methods have specific functionalities and they're mapped as follows

<p align="center">
    <img src="https://user-images.githubusercontent.com/42903859/133920750-54a31251-8acd-418b-a70f-9214360e5fff.png" alt="Mapping" />
</p>

## What is this POC about?
Through this POC, I want to create a simple LLVM loader which would essentially take a C file as input, convert it to LLVM IR (Intermediate Representation) and then write a loader to extract all the important stuff from this LLVM IR file. This extracted stuff would be reflected and converted into Meta Object Protocol for further use.
This POC as of now addresses only the initilize(), load(), and discover() methods.

## How to run?

Install the required dependancies

* LLVM v11 (Be sure to install v11 only!)
* clang 

After installing the above dependancies

* Clone this repository and navigate to the project directory.
* Build and run the project using **``make input.ll && make && ./main``** command.

## What happens internally?

The following stuff happens internally and is abstracted from the user.

* C (.c) file is converted to an LLVM IR (.ll) file.
* Loader extracts and stores all the functions and parameters.
* Loader also tries to execute a simple addition method by dynamically passing arguments through C++ to LLVM IR. This is an additional important functionality.

This intermediate reprsentation is converted to Meta Object Protocol and can hence be used to generate similiar logic in other programming languages. This enables polyglot programming.

<b> <p align = "center"> Created by Yash Dekate. </p> </b>
