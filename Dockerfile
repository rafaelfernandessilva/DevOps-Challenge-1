FROM python:3.7.7-alpine3.11

# -----------------------------------------------------------------------------
# Install and configure filebeat
# -----------------------------------------------------------------------------

# -----------------------------------------------------------------------------
# Create new user and group
# ------------------------------------------------------------------------------

#RUN groupadd -g 999 lifestyle && \
#RUN adduser -s /bin/bash alpine -D
#RUN useradd -ms /bin/bash alpine
#RUN useradd -s /bin/bash -m simplifi

# -----------------------------------------------------------------------------
# Copy content abd create directories
# -----------------------------------------------------------------------------

RUN mkdir /opt/test/
COPY . /opt/test/
WORKDIR /opt/test/

#RUN mkdir -p /var/log/simplifi/
#RUN mkdir -p /var/lib/filebeat/
#COPY filebeat.yml /opt/fotaMqtt/

# -----------------------------------------------------------------------------
# Change owner and permission
# -----------------------------------------------------------------------------

#RUN chown -R alpine:alpine /opt/fotaMqtt/
#RUN chmod +x /opt/fotaMqtt/startup.sh
#RUN chown -R alpine:alpine /var/log/simplifi/
#RUN chown -R alpine:alpine /var/lib/filebeat/
#RUN chown -R alpine:alpine /opt/filebeat/

# -----------------------------------------------------------------------------
# Switch to user
# -----------------------------------------------------------------------------

#USER alpine

# -----------------------------------------------------------------------------
# Install python modules
# ----------------------------------------------------------------------------

#RUN pip3 install uwsgi
RUN pip3 install -r requirements.txt
#RUN export FLASK_ENV=production
#RUN export FLASK_APP=app.py

# -----------------------------------------------------------------------------
# Set ports
# -----------------------------------------------------------------------------

EXPOSE 8000
CMD python hello.py

#ENTRYPOINT ["tail", "-f", "/dev/null"]
