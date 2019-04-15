FROM docker.bluelight.limited:5000/bluelightltd/microkube-bundler-image

RUN chown -R app.app /home

USER app

RUN echo "Cloning repo" && \
        cd /home/app/ && \
        git --exec-path && \
        git clone https://github.com/rubykube/microkube.git && \
        cd microkube



#CMD ["/bin/bash", "-c", "top"]