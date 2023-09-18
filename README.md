# Generic SFML Makefile Template for Windows and Linux

This is a template for building C++ projects that use the Simple and Fast Multimedia Library (SFML) with a ``Makefile``. It provides a flexible foundation for creating SFML-based applications for ``Windows`` and ``Linux``. You can use this template as a starting point for various SFML projects.

## Platform-Specific Notes
- On Windows, the Makefile is configured to use ``.exe`` as the executable extension and links to the SFML libraries with ``.a`` extensions. Make sure to set the ``SFML_PATH`` variable to the directory where your SFML libraries are located (e.g, ``C:\SFML-2.5.1``).
```
set SFML_PATH=C:\path\to\sfml
```

- On other platforms, the ``Makefile`` assumes that you have installed SFML via a package manager and links to the SFML libraries using ``-lsfml-`` flags.
```
$ sudo apt-get install libsfml-dev
```

## Project Structure
Ensure that your project follows this directory structure:
- **include/**: Place all your header files (.h or .hpp) in this directory
- **src/**: Store all your source files (.cpp) in this directory

Here's an example of the recommended directory structure:

```
your-sfml-project/
│
├── include/
│   └── your_header.hpp
│
├── src/
│   └── your_source.cpp
│
├── Makefile
│
├── README.md
│
└── ...
```

## Usage
Open the ``Makefile`` in a text editor and customize the following variables to match your project's requirements:
- **CC**: The C++ compiler (typically g++)
- **CFLAGS**: Compiler flags (e.g., -std=c++17 -Wall -Wextra -pedantic -g)
- **INCLUDES**: Additional include directories (e.g., -I$(SFML_PATH)/include -Iinclude)
- **APP_NAME**: Your app name (e.g., my-app)
