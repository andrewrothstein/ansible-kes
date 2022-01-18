andrewrothstein.kes
=========
![Build Status](https://github.com/andrewrothstein/ansible-kes/actions/workflows/build.yml/badge.svg)

Installs MinIO's [kes](https://github.com/minio/kes)

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.kes
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
