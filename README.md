# Actividad en el aula  - Encuestas

Temas:
   - clases y objetos, 
   - arreglos, ordenamiento
   - windows form, 
   - ventanas modales


**El diagrama UML:**<br/>
![alt text](https://github.com/fernandofilipuzzi-utn/ActividadEncuestas/blob/main/EncuestasMediosTransporte/EncuestasCMD/uml/encuesta.jpg)

**Recordario comandos git - para los que quieran ver la segunda parte resuelta**
- Preparar el repo y clonar el repositorio 
```
C:\Users\MiUsuarioWindows> cd ../..
C:\> mkdir repos
C:\> cd repos
C:\repos> git clone https://github.com/fernandofilipuzzi-utn/ActividadEncuestas.git
C:\repos> cd ActividadEncuestas
C:\repos\ActividadEncuestas> 
```

- Cambiar a la rama desarrollo (resuelto completo)
```
C:\repos\ActividadEncuestas>git checkout desarrollo
```

- Volver a la rama main, (siempre que no tengan cambios realizados)
```
C:\repos\ActividadEncuestas>git checkout main
```

- saber en que rama están
```
C:\repos\ActividadEncuestas>git branch
```

- lanzar el explorador de archivos donde están
```
C:\repos\ActividadEncuestas>start .
```

**Recordario comandos git - para los clonan el fork del repositorio**

- Preparar el repo y clonar el fork del repositorio 
```
C:\Users\MiUsuarioWindows> cd ../..
C:\> mkdir repos
C:\> cd repos
C:\repos> git clone https://github.com/fernandofilipuzzi-utn/ActividadEncuestas.git
C:\repos> cd ActividadEncuestas
C:\repos\ActividadEncuestas> 
```

- Configurar el repo
```
C:\repos\ActividadEncuestas> git config user.name miCuentaGit
C:\repos\ActividadEncuestas> git config user.email miCuentaCorreoEnGit@miCorreo.com
C:\repos\ActividadEncuestas> git remote set-url origin https://miCuentaGit@URLdelForkRepo.git
```

- Subir cambios al repositorio remoto
```
C:\repos\ActividadEncuestas> git status
C:\repos\ActividadEncuestas> git add *
C:\repos\ActividadEncuestas> git commit -m "actividad #2"
C:\repos\ActividadEncuestas> git push
```
