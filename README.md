## Ansible VirtualEnv

To ensure execution consistency, we use a python virtualenv configuration which installs a consistent version of ansible and its dependencies. The script `ansible-install/setup.sh` will install this environment for you, creating a directory called `ansible-install/ENV`. This script is invoked by the `ansible`, `ansible-playbook` and other entry-point scripts if this `ENV` directory does not exist.

Some Python modules installed by pip require being compiled from source, which requires the Python headers and some development tools. See [jq's pypi page](https://pypi.python.org/pypi/jq) for instructions on what to install and how.

To install development dependencies (e.g. linter), specify `SETUP_ENVIRONMENT=dev` to `setup.sh`.

If you would like to bypass the `ansible` and `ansible-playbook` scripts in the root of this repository, then you can execute `source ansible-install/ENV/bin/activate` and set `ANSIBLE_CONFIG` to point to `ansible-install/ansible.cfg`.
