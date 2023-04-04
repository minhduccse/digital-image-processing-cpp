CXX = g++
INCLUDE = -I/usr/local/include/opencv4
LIBS = -L/usr/local/lib
IDIR=./include
CFLAGS= -lopencv_core -lopencv_highgui -lopencv_imgcodecs -lopencv_imgproc -lopencv_videoio

OBJECTS = CH3_pixel_operation.o utility.o
TARGET = main

# main: CH3_pixel_operation.o utility.o
# 	$(CC) $(INCLUDE) $(LIBS) $(CFLAGS) -o main CH3_pixel_operation.o utility.o 
	
# CH3_pixel_operation.o: CH3_pixel_operation.cpp utility.cpp
# 	$(CC) $(CFLAGS) $(INCLUDE) $(LIBS) -c CH3_pixel_operation.cpp

# utility.o: utility.cpp
# 	$(CC) $(CFLAGS) $(INCLUDE) $(LIBS) -c utility.cpp

$(TARGET): $(OBJECTS)
	$(CXX) $(INCLUDE) -I${IDIR} $(LIBS) $(OBJECTS) -o $(TARGET) $(CFLAGS)
CH3_pixel_operation.o: CH3_pixel_operation.cpp utility.cpp 
	$(CXX) $(INCLUDE) -I${IDIR} $(LIBS) -c CH3_pixel_operation.cpp $(CFLAGS)
utility.o: utility.cpp 
	$(CXX) $(INCLUDE) -I${IDIR} $(LIBS) -c utility.cpp $(CFLAGS)
clean:
	rm -f $(TARGET) $(OBJECTS)