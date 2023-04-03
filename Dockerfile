FROM python:3.7
# Or any preferred Python version.
RUN pip install --force-reinstall -v "zeroc-ice==3.6.5" &&\
  pip install 'omero-cli-transfer'
RUN sed -i 's/DEFAULT@SECLEVEL=2/DEFAULT@SECLEVEL=1/g' /etc/ssl/openssl.cnf
RUN useradd -rm -d /home/local -s /bin/bash -g root -G sudo -u 1001 local
USER local
WORKDIR /home/local
ENTRYPOINT [ "omero", "transfer" ]

