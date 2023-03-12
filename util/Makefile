CXX := g++
CXXFLAGS := -Wall
OPT ?= -O0

CXXFLAGS += $(OPT)

BIN_DIR := ./bin
SRC ?=
TARGET = $(BIN_DIR)/$(SRC:.cpp=)

ifdef GET_ASM
	CXXFLAGS += -S -g
endif

.PHONY: clean

$(TARGET): $(SRC) util.o
	@echo "$(CXX) $(CXXFLAGS) $? -o $@"
	# $(CXX) $(CXXFLAGS) $? -o $@

%.o: %.cpp

clean:
	$(RM) $(BIN_DIR)/*
