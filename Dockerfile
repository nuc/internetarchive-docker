FROM alpine

RUN apk --no-cache --update add bash curl less groff jq python py-pip && \
  pip install --upgrade pip && \
  pip install internetarchive

WORKDIR /app

ENTRYPOINT ["python", "/usr/lib/python2.7/site-packages/internetarchive/cli/ia.py"]
