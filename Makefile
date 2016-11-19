.RECIPEPREFIX+= 

FLAGS=-M../dale-extensions

all: libgl.dtm libglut.dtm

libgl.dtm: src/gl.dt
  dalec -c src/gl.dt $(FLAGS)

libglut.dtm: src/glut.dt
  dalec -c src/glut.dt $(FLAGS)

src/%.dt:
  true

.PHONY: all clean
clean:
  rm -f game && rm -f *.so && rm -f *.bc && rm -f *.dtm && rm -f src/*.o

