CFLAGS = -std=c++17 -O2
LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi

Triangle: main.cpp
	g++ $(CFLAGS) -o Triangle main.cpp $(LDFLAGS)

.PHONY: test clean

test: Triangle
	./Triangle

clean:
	rm -f Triangle