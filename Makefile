CC = g++
CFLAGS = -std=c++17 -Wall -Wextra -pedantic -g
INCLUDES = -I$(SFML_PATH)\include -Iinclude
APP_NAME= my-app

SOURCES=$(wildcard src/*.cpp)
OBJECTS=$(SOURCES:.cpp=.o)

ifeq ($(OS),Windows_NT)
	EXECUTABLE = $(APP_NAME).exe
	LIBS = $(SFML_PATH)\lib\libsfml-graphics.a $(SFML_PATH)\lib\libsfml-window.a $(SFML_PATH)\lib\libsfml-system.a $(SFML_PATH)\lib\libsfml-audio.a $(SFML_PATH)\lib\libsfml-network.a
else
	EXECUTABLE = $(APP_NAME)  
	LIBS = -lsfml-graphics -lsfml-window -lsfml-system -lsfml-audio -lsfml-network
endif

.PHONY: all clean

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(CFLAGS) $(INCLUDES) $^ -o $@ $(LIBS)

.cpp.o:
	$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

clean:
	rm -f $(OBJECTS) $(EXECUTABLE)
