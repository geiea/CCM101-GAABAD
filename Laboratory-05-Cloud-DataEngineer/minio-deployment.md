
# MinIO Deployment - Technical Documentation

## Docker Command Used

```bash
docker run -d -p 9000:9000 -p 9001:9001 --name minio-server \
-e "MINIO_ROOT_USER=cloudadmin" \
-e "MINIO_ROOT_PASSWORD=CloudNova2026!" \
quay.io/minio/minio server /data --console-address ":9001"
```

This command deployed the MinIO object storage server using Docker and exposed the API and Web Console ports.

## Web Console Port

The MinIO Web Console was accessed using:

```text
9001
```

Port `9001` allows access to the MinIO management interface through a web browser.

## Bucket Created

The storage bucket created during the activity was:

```text
client-photos
```

This bucket was used to store the sample file uploaded during the activity.

## Environment Variables

The `-e` flags set environment variables inside the Docker container. `MINIO_ROOT_USER` sets the administrator username, while `MINIO_ROOT_PASSWORD` sets the password used to log in to the MinIO Web Console.
```