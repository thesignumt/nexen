CXX = g++
CXXFLAGS = -std=c++20 -Wall -Wextra -O2 -Iinclude

SRC = $(wildcard src/*.cpp)
OBJ = $(patsubst src/%.cpp,build/%.o,$(SRC))

TARGET = build/app.exe

all: $(TARGET)

$(TARGET): $(OBJ)
	$(CXX) $(OBJ) -o $(TARGET)

build/%.o: src/%.cpp | build
	$(CXX) $(CXXFLAGS) -c $< -o $@

build:
	if not exist build mkdir build

clean:
	del /Q build\*.o build\app.exe 2>nul || exit 0
