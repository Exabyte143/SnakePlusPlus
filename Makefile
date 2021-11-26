debug:
	cl /Od /Zi /EHsc /DDEBUG /std:c++latest /I include src\*.cpp /link /OUT:bin\Debug\snake.exe /LIBPATH:lib sfml-graphics.lib sfml-window.lib sfml-system.lib
	del *.obj
	del *.pdb
release:
	cl /O2 /EHsc /DRELEASE /std:c++latest /I include src\*.cpp /link /OUT:bin\Release\snake.exe /LIBPATH:lib sfml-graphics.lib sfml-window.lib sfml-system.lib
	del *.obj
clean:
	del bin\Debug\*
	del bin\Release\*