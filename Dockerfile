FROM node:10-alpine
RUN apk update && \
    apk upgrade && \
    apk --no-cache add shadow && \
    apk --no-cache add bash && \
    apk --no-cache add ca-certificates && \
    apk --no-cache add wget && \
    sed -i '/password/{s/$/ minlen=8/}' /etc/pam.d/base-password
