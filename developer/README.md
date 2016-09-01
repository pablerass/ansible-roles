# Developer

Sets main developer configuration.

## Role Variables

- user_name
- user_mail
- user_pass
- repo_domain
- repo_name

User password could be acquired in main playbook using:

    vars_prompt:
      - name: "user_pass"
        prompt: "Pass"
        private: yes

## Example Playbook

    - hosts: localhost
      vars_prompt:
        - name: "user_pass"
          prompt: "Pass"
          private: yes
      vars:
        - user_name: "pablerass"
        - user_mail: "pablerass@gmail.com"
        - repo_domain: "mydomain.com"
        - repo_name: "own"
      roles:
        - { role: developer }
