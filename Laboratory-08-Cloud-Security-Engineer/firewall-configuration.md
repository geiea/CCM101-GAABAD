# Firewall Configuration

## 1. Allow SSH

Command used to allow SSH connections before enabling the firewall:

```bash
sudo ufw allow ssh
```

## 2. Configure the Default Policies

Commands used to block incoming connections by default and allow outgoing connections:

```bash
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw enable
sudo ufw status verbose
```

## 3. Allow the Web Application Port

Command used to allow TCP traffic on port 8080 for the Nginx web application:

```bash
sudo ufw allow 8080/tcp
sudo ufw status numbered
```

## 4. Why SSH Must Be Allowed First

If `sudo ufw enable` is run before `sudo ufw allow ssh`, an SSH connection may be blocked by the firewall, which could cause remote access to the server to be lost.