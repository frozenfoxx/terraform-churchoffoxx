#!/usr/bin/env bash

# Deploys hosts with Ansible

# Variables
ANSIBLE_REPO=${ANSIBLE_REPO:-"https://github.com/frozenfoxx/ansible-churchoffoxx.git"}
PLAYBOOK=${PLAYBOOK:-""}
PRIVATE_SSH_KEY=${PRIVATE_SSH_KEY:-"~/.ssh/id_rsa"}
TARGET=${TARGET:-""}

# Functions

## Verify we have all required tools
check_commands()
{
  # Check for ansible-playbook
  if ! command -v ansible-playbook &> /dev/null; then
    echo "ansible-playbook could not be found!"
    exit 1
  fi

  # Check for git
  if ! command -v git &> /dev/null; then
    echo "git could not be found!"
    exit 1
  fi
}

## Clean up the Ansible repository
cleanup_repo()
{
  if [[ -d ./ansible ]]; then
    echo "Cleaning up Ansible repository..."
    rm -rf ./ansible
  fi
}

## Clone the Ansible repository
clone_repo()
{
  echo "Cloning Ansible repo..."

  git clone ${ANSIBLE_REPO} ansible
}

## Run a playbook against the target
run_playbook()
{
  echo "Running ${PLAYBOOK} against ${TARGET}..."

  ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -u root -i ${TARGET}, --private-key ${PRIVATE_SSH_KEY} ./ansible/${PLAYBOOK}
}

## Display usage
usage()
{
  echo "Usage: [Environment Variables] ansible_deploy.sh [options]"
  echo "  Environment Variables:"
  echo "    ANSIBLE_REPO       git repo containing the Ansible codebase (default: \"https://github.com/frozenfoxx/ansible-churchoffoxx.git\")"
  echo "    PLAYBOOK           playbook name to run against TARGET"
  echo "    PRIVATE_SSH_KEY    private SSH key to communicate with TARGET (default: \"~/.ssh/id_rsa\")"
  echo "    TARGET             IP/FQDN of the target to configure"
  echo "  Options:"
  echo "    -h | --help        display this usage information"
  echo "    --ansible-repo     git repo containing the Ansible codebase (default: \"https://github.com/frozenfoxx/ansible-churchoffoxx.git\")"
  echo "    --playbook         playbook name to run against TARGET"
  echo "    --private_ssh_key  private SSH key to communicate with TARGET (default: \"~/.ssh/id_rsa\")"
  echo "    --target           IP/FQDN of the target to configure"
}

# Logic

## Argument parsing
while [[ "$#" > 1 ]]; do
  case $1 in
    --ansible-repo )    ANSIBLE_REPO="$2"
                        ;;
    --playbook )        PLAYBOOK="$2"
                        ;;
    --private_ssh_key ) PRIVATE_SSH_KEY="$2"
                        ;;
    --target )          TARGET="$2"
                        ;;
    -h | --help )       usage
                        exit 0
  esac
  shift
done

check_commands
cleanup_repo
clone_repo
run_playbook
