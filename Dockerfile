FROM ubuntu:22.04
ENV TZ 'America/La_Paz'
RUN apt update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata
RUN rm /etc/localtime
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime
RUN dpkg-reconfigure -f noninteractive tzdata
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y markdown pandoc texlive-latex-base texlive-fonts-recommended texlive-extra-utils texlive-latex-extra
CMD ["bash"]
