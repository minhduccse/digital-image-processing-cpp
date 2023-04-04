CXX = g++
INCLUDE = -I/usr/local/include/opencv4
LIBS = -L/usr/local/lib
IDIR=./include
CFLAGS= -lopencv_core -lopencv_highgui -lopencv_imgcodecs -lopencv_imgproc -lopencv_videoio

OBJECTS = CH9_image_segmentation.o CH8_morphology_image_processing.o CH7_color_image_processing.o CH6_frequency_domain_image_enhancement.o CH5_spatial_domain_image_enhancement.o CH4_geometric_transformation.o CH3_pixel_operation.o utility.o
TARGET = main

$(TARGET): $(OBJECTS)
	$(CXX) $(INCLUDE) -I${IDIR} $(LIBS) $(OBJECTS) -o $(TARGET) $(CFLAGS)
CH9_image_segmentation.o: CH9_image_segmentation.cpp CH8_morphology_image_processing.cpp CH5_spatial_domain_image_enhancement.cpp CH3_pixel_operation.cpp utility.cpp
	$(CXX) $(INCLUDE) -I${IDIR} $(LIBS) -c CH9_image_segmentation.cpp $(CFLAGS)
CH8_morphology_image_processing.o: CH8_morphology_image_processing.cpp utility.cpp 
	$(CXX) $(INCLUDE) -I${IDIR} $(LIBS) -c CH8_morphology_image_processing.cpp $(CFLAGS)
CH7_color_image_processing.o: CH7_color_image_processing.cpp utility.cpp 
	$(CXX) $(INCLUDE) -I${IDIR} $(LIBS) -c CH7_color_image_processing.cpp $(CFLAGS)
CH6_frequency_domain_image_enhancement.o: CH6_frequency_domain_image_enhancement.cpp utility.cpp 
	$(CXX) $(INCLUDE) -I${IDIR} $(LIBS) -c CH6_frequency_domain_image_enhancement.cpp $(CFLAGS)
CH5_spatial_domain_image_enhancement.o: CH5_spatial_domain_image_enhancement.cpp utility.cpp 
	$(CXX) $(INCLUDE) -I${IDIR} $(LIBS) -c CH5_spatial_domain_image_enhancement.cpp $(CFLAGS)
CH4_geometric_transformation.o: CH4_geometric_transformation.cpp utility.cpp 
	$(CXX) $(INCLUDE) -I${IDIR} $(LIBS) -c CH4_geometric_transformation.cpp $(CFLAGS)
CH3_pixel_operation.o: CH3_pixel_operation.cpp utility.cpp 
	$(CXX) $(INCLUDE) -I${IDIR} $(LIBS) -c CH3_pixel_operation.cpp $(CFLAGS)
utility.o: utility.cpp 
	$(CXX) $(INCLUDE) -I${IDIR} $(LIBS) -c utility.cpp $(CFLAGS)
clean:
	rm -f $(TARGET) $(OBJECTS)