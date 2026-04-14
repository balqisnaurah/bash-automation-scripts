FROM ubuntu:24.04

RUN apt-get update && apt-get install -y \
	curl \
	iproute2 \
	procps \
	docker.io \
	&& rm -rf /var/lib/apt/lists/*

WORKDIR /scripts

COPY backup.sh .
COPY system-health-check.sh .

RUN chmod +x backup.sh system-health-check.sh

CMD ["./system-health-check.sh"]
