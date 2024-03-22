# Nek5000 Docker
Includes the build file to create a nek5000 dock container. Currently set up for nek5000 v19. This was targeted for use with macOS (specificaly due to a recent OS update that apparently broke mpi), but should work in other plattaforms as well.

To launch the container, run
```bash
docker run --rm=true -it --entrypoint /bin/bash   -v $(pwd):/nekrun -w /nekrun   eduardomartini/nek5000:v19
```
Or create an alias, as 
```bash
echo "alias nekdock='docker run --rm=true -it --entrypoint /bin/bash   -v $(pwd):/nekrun -w /nekrun   eduardomartini/nek5000:v19'" >> ~/.bashrc
```

The docker was compiled with
```bash
docker build -t eduardomartini/nek5000:v19 .
```
and pushed to docker.com.

It can be build directly from this repository as
```bash
docker build github.com/eduardomartini/nek5000_docker
```
or downloaded directly from docker.com, as
```bash
docker build --platform linux/amd64 -t eduardomartini/nek5000:v19 .
```

Happy neking!!!
