File = sfml.cpp
FLAGS = -I/opt/homebrew/Cellar/sfml/2.5.1_2/include -o prog -L/opt/homebrew/Cellar/sfml/2.5.1_2/lib -lsfml-graphics -lsfml-window -lsfml-system -lsfml-audio


all:
	g++ -DVidMode -mavx -fsanitize=address -O2 $(File) -I/opt/homebrew/Cellar/sfml/2.5.1_2/include -o prog -L/opt/homebrew/Cellar/sfml/2.5.1_2/lib -lsfml-graphics -lsfml-window -lsfml-system -lsfml-audio

NoVid:
	g++ -mavx -fsanitize=address -Ofast $(File) $(FLAGS)

SSEVid:
	g++ -DVidMode -mavx2 -DSSE -fsanitize=address -O2 $(File) -I/opt/homebrew/Cellar/sfml/2.5.1_2/include -o prog -L/opt/homebrew/Cellar/sfml/2.5.1_2/lib -lsfml-graphics -lsfml-window -lsfml-system -lsfml-audio

SSE:
	g++ -msse -DSSE -fsanitize=address -Ofast $(File) -I/opt/homebrew/Cellar/sfml/2.5.1_2/include -o prog -L/opt/homebrew/Cellar/sfml/2.5.1_2/lib -lsfml-graphics -lsfml-window -lsfml-system -lsfml-audio



