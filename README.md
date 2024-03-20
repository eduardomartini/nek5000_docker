# Nek5000 Docker
Includes the build file to create a nek5000 dock container. Currently set up for nek5000 v19.

To launch the container, run
```bash
docker run --rm=true -it --entrypoint /bin/bash   -v $(pwd):/nekrun -w /nekrun   emartini/nek5000:v19
```
Or create an alias, as 
```bash
echo "alias nekdock='docker run --rm=true -it --entrypoint /bin/bash   -v $(pwd):/nekrun -w /nekrun   emartini/nek5000:v19'" >> ~/.bashrc
```

