# monitoring-go-app

Example go application with logging and metrics

## Prerequisites

- Install docker and docker-compose
- Increase virtual memory for elasticsearch, [link](https://www.elastic.co/guide/en/elasticsearch/reference/current/vm-max-map-count.html)

```sh
sysctl -w vm.max_map_count=262144
ulimit -n 65536
```

## Build and run all

```sh
docker-compose build
docker-compose up -d
```
