# Kembali App

Este proyecto es una aplicación Java configurada con Gradle utilizando Kotlin DSL (`build.gradle.kts`).

## 📦 Configuración del Proyecto

- **Lenguaje:** Java 21
- **Gestor de dependencias:** Gradle con Kotlin DSL
- **Framework de pruebas:** JUnit Jupiter
- **Plugin de aplicación:** Gradle Application Plugin

## 🚀 Construcción y Ejecución

### 1️⃣ Compilar y Generar el JAR
Ejecuta el siguiente comando para construir el proyecto:

```sh
./gradlew clean build


## Pitacora para estudiantes
Tengan un excelente día, hoy vamos a comenzar a crear un projecto en Java un projecto simple pero orientar la estructura a la aquitectura hexagonal

```bash
gradle init --type java-application \
    --dsl kotlin \
    --package org.kembali \
    --project-name kembali \
    --test-framework junit-jupiter
```

Al crear el projecto vamos a agregar algunas configuraciones en build.gradle.kts donde gradle 

```kts
tasks.jar {
    manifest {
        attributes["Main-Class"] = application.mainClass.get()
    }
}

// 📌 Para asegurarnos de que las clases están en el JAR
tasks.withType<Jar> {
    from(sourceSets.main.get().output)
}
```