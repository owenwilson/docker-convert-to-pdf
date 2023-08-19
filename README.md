# Markdownn to PDF

- Pandoc package

```
pandoc MANUAL.txt -o myFile.pdf
pandoc MANUAL.md -o myFile.pdf
```
## Build Image

- Example Dockerfile

```
FROM ubuntu:22.04
ENV TZ 'America/La_Paz'
RUN apt update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata
RUN rm /etc/localtime
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime
RUN dpkg-reconfigure -f noninteractive tzdata
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y markdown pandoc texlive-latex-base texlive-fonts-recommended texlive-extra-utils texlive-latex-extra
CMD ["bash"]
```
- Build Image

```
docker build owenwilson/convert-to-pdf:latest
```

## Run command convert to pdf

```
docker run --rm --name convert-to-pdf -it owenwilson/convert-to-pdf /bin/bash -c "pandoc MANUAL.md -o myFile.md"
```


# Reference pandoc

- [Example markdown convert to pdf using pandoc](https://stackoverflow.com/questions/17630486/how-to-convert-a-markdown-file-to-pdf)

# DevOps

- Best Regards
