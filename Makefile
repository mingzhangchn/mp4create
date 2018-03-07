

SRC=mp4_slice.cpp p test.cpp 
OBJ=mp4_slice.o  test.o 

APP=test


INCLUDES = -I./

.PONEY:all

all:$(APP) 


$(APP):$(OBJ) 
	@g++  $(OBJ) -lmp4v2 -o $@ 

    
%.o:%.cpp
	g++ -c  -fPIC $(INCLUDES) $< -o $@
	
%.o:%.c
	gcc -c $(INCLUDES) $< -o $@    
    
clean:
	@rm -rf $(OBJ) $(APP)
	
	