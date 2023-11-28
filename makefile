
CXX = g++

SRC_DIR = ./src/
TARGET = tiny_db
OBJ = bpt.o tiny_db.o

$(TARGET):$(OBJ)
	$(CXX) -o $(TARGET) $(OBJ)
	rm -rf $(OBJ)

bpt.o:
	$(CXX) -c $(SRC_DIR)bpt.cc

tiny_db.o:
	$(CXX) -c $(SRC_DIR)tiny_db.cpp

clean:
	rm -rf $(OBJ) $(TARGET)