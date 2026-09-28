# Mission 6 Reflection

## 1. How does writing a docker-compose.yml file make a cloud engineer's job easier compared to manually typing commands?

Writing a docker-compose.yml file makes deployment easier because the configuration is written in one place. Instead of manually creating and connecting each container, Docker Compose can use the file to deploy the entire application. It also makes the setup easier to repeat if the system needs to be deployed again.

## 2. What happens if you make an indentation error in a YAML file?

An indentation error can cause the YAML file to become invalid. Docker Compose may fail to read the configuration correctly, which can prevent the containers from being deployed. This is why proper spacing is important when creating YAML files.

## 3. Why did we use environment variables like MYSQL_PASSWORD?

Environment variables allow important configuration values to be passed to the containers. In this activity, they were used for database passwords, database names, usernames, and the database host. This allows the application and database containers to communicate using the required settings.

## 4. How did it feel to deploy a fully functional enterprise cloud storage system in just a few minutes?

It was interesting to see how quickly a cloud storage application could be deployed using Docker Compose. Instead of installing every component manually, the configuration file allowed the application and database to start together. This showed me how automation can make cloud deployment faster and more organized.

## 5. How has your understanding of Cloud Computing evolved since Mission 1?

Since Mission 1, I have learned that cloud computing involves more than simply using online storage or applications. I now understand concepts such as containers, cloud infrastructure, storage, networking, and Infrastructure as Code. Mission 6 helped me understand how different services can work together as one system.