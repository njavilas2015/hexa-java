# Variables
GRADLE=./gradlew
DOCKER_COMPOSE=docker-compose
JAR_FILE=build/libs/kembali-1.0.0.jar
MAIN_CLASS=com.miempresa.app.Main

# Ayuda
help:
	@echo "Comandos disponibles:"
	@echo "  make install       - Instala las dependencias del proyecto"
	@echo "  make build         - Compila y construye la aplicación"
	@echo "  make build-dev     - Construye en modo desarrollo (sin optimizaciones)"
	@echo "  make build-prod    - Construye para producción (optimizado)"
	@echo "  make test          - Ejecuta los tests"
	@echo "  make run           - Ejecuta la aplicación localmente"
	@echo "  make clean         - Limpia la compilación"
	@echo "  make docker-build  - Construye la imagen Docker"
	@echo "  make docker-run    - Corre la aplicación en Docker"
	@echo "  make docker-stop   - Detiene y elimina los contenedores"

install:
	$(GRADLE) dependencies

build:
	$(GRADLE) build

build-dev:
	$(GRADLE) build --debug

build-prod:
	$(GRADLE) build --info --warning-mode all

test:
	$(GRADLE) test

run:
	$(GRADLE) run

clean:
	$(GRADLE) clean

docker-build:
	docker build -t kembali .

docker-run:
	docker run -p 8080:8080 --name kembali kembali

docker-stop:
	docker stop kembali && docker rm kembali
