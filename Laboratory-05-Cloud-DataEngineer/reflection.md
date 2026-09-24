# Checkpoint 6 – Mission Reflection

## 1. Why is object storage better suited for storing millions of photos compared to a traditional block storage hard drive?

Object storage is better suited for storing millions of photos because it is designed for large amounts of unstructured data such as images, videos, and backups. It can organize data as objects and scale as the amount of data increases. This makes it more suitable for a photo-sharing application where many users can continuously upload images.

## 2. How did using Docker make it easier to deploy the MinIO storage server?

Docker made deploying MinIO easier because I did not have to manually install and configure all the required software. With one Docker command, I was able to download the MinIO image, create the container, set the login credentials, and configure the required ports. This made the deployment process faster and more organized.

## 3. What is a "bucket" in the context of cloud storage?

A bucket is a storage container used to organize and store objects such as photos, documents, and other files. In this activity, I created a bucket named `client-photos` where the uploaded test file was stored.

## 4. How do you think large enterprise companies ensure their object storage data is not lost if the physical server crashes?

Large enterprise companies can protect their data by keeping multiple copies of objects and storing them across different physical servers or locations. They can also use backups and redundancy so that if one server fails, the data can still be accessed from another location.

## 5. How is your confidence in navigating the Linux command line growing?

My confidence in using the Linux command line is gradually improving. At first, commands felt unfamiliar, but using Docker commands and checking the running container helped me become more comfortable. I am now more confident in running commands, checking results, and troubleshooting basic problems.
