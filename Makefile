#CC = g++
#CFLAGS = -m64 -03 -Wall -I include
#LDFLAG = 
#SRC_DIR = src 
#OBJ_DIR = obj 
#BIN_DIR = bin 
#EXECUTABLE = $(BIN_DIR)/app

#SRC_FILES := $(wildcard $(SRC_DIR)/*.cpp)

#OBJ_FILES := $(patsubt $(SRC_DIR)/%.cpp,$(OBJ_DIR)/%.o,$(SRC_FILES)) 

#all: $(EXECUTABLE)

#$(EXECUTABLE) : &(OBJ_FILES)
#	$(CC) $^ $(LDFLAG) -o $@

#$(OBJ_DIR)/%.o : $(SRC_DIR)/%.cpp 
#	$(CC) $(CFLAGS) -c $< -o $@

#clean:
#	rm -rf $(OBJ_DIR)/* $(BIN_DIR)/* 

#.PHONY: all clean

# Specify the compiler
CXX = g++

# Specify compiler flags
CXXFLAGS = -std=c++11 -Iinclude

# Specify the source files
SRCS = $(wildcard src/*.cpp)

# Specify the object files
OBJS = $(patsubst src/%.cpp, bin/%.o, $(SRCS))

# Specify the target executable
TARGET = bin/main

# Default target
all: $(TARGET)

# Link the object files to create the executable
$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(OBJS)

# Compile the source files into object files
bin/%.o: src/%.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Clean target
clean:
	rm -f $(OBJS) $(TARGET)


