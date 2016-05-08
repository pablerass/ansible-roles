# Docker

Install Docker and add initial images.

## Role Variables

* `docker_users`
* `docker_images`
* `docker_engine_version`
* `docker_compose_version`

# Example Playbook

- hosts: servers
  roles:
    - { role: docker, docker_users: vagrant,
        docker_images: "tomcat:8-jre7"  }
