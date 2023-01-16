run: main.jar
	java -jar main.jar

main.jar: main.kt
	kotlinc main.kt -include-runtime -d main.jar

clean:
	rm -f main.jar

install:
	brew install --cask adoptopenjdk
	brew install kotlin
