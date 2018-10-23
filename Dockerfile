FROM alpine as downloader
RUN apk --no-cache add curl && \
	curl --location --output easyrsa.tar.gz "https://github.com/OpenVPN/easy-rsa/releases/download/v3.0.4/EasyRSA-3.0.4.tgz" && \
	tar -xvf easyrsa.tar.gz && \
	mv ./EasyRSA-*/ ./easyrsa/

FROM alpine
COPY --from=downloader /easyrsa/ /usr/share/easyrsa/
COPY ./root/ /
RUN apk --no-cache add openssl
ENTRYPOINT ["/usr/bin/entrypoint"]
