# Mission Reflection

In this laboratory activity, I learned the importance of monitoring server resources and checking the performance of applications running inside Docker containers. I realized that deploying an application is not enough because we also need to make sure it runs properly.

Checking the host server's resources is important even when containers are running perfectly. If the server runs out of memory or disk space, applications may become slow or stop working. Commands such as `free -h`, `df -h`, and `top` help identify possible resource problems before they affect users.

The `docker logs` command is useful when a user reports a problem logging into a web application. By checking the logs, an engineer can identify failed requests, error messages, and other information that may explain what happened. This makes troubleshooting easier than guessing the cause of the problem.

I also learned the difference between logs and metrics. Logs provide details about events and requests, including errors such as HTTP 404. Metrics show numerical measurements, such as CPU usage, memory consumption, and network activity. Both are important because logs explain what happened, while metrics show how the system is performing.

Large companies can monitor thousands of containers using tools such as Prometheus and Grafana. Prometheus collects and stores metrics, while Grafana displays the data through dashboards that help engineers identify performance issues.

Overall, this activity improved my ability to use Linux commands, deploy Docker containers, generate HTTP requests, and inspect application logs. I also learned how to document technical results using Markdown. These skills help me understand how cloud applications are monitored and maintained. In the future, I want to practice more so I can troubleshoot server problems more confidently.