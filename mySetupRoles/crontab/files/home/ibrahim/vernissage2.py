import os
import subprocess
import sys
from datetime import datetime

RED = '\033[0;31m'
NOCOLOR = '\033[0m'

PWD_DIR = '/home/ibrahim/temp-docker/universe-vernissage'
REPO_DIR = '/home/ibrahim/temp-docker/universe-vernissage'
REPO_URL = 'https://github.com/ichibsah/universe-vernissage.git'
LOG_DIR = '/home/ibrahim/logs'
BRANCH = 'master'


def create_logs_directory():
    os.makedirs(LOG_DIR, exist_ok=True)
    

def create_temp_directory():
    os.makedirs(PWD_DIR, exist_ok=True)


def check_repository_dir():
    if os.path.isdir(REPO_DIR):
        return True
    else:
        return False


def clone_repository():
    subprocess.run(['git', 'clone', REPO_URL, PWD_DIR])


def fetch_repository_updates():
    os.chdir(PWD_DIR)
    subprocess.run(['git', 'fetch'])


def get_latest_commit_hash(branch):
    os.chdir(PWD_DIR)
    output = subprocess.check_output(['git', 'rev-parse', f'origin/{branch}'])
    return output.decode('utf-8').strip()


def get_current_commit_hash():
    os.chdir(PWD_DIR)
    output = subprocess.check_output(['git', 'rev-parse', 'HEAD'])
    return output.decode('utf-8').strip()


def pull_repository_changes(branch):
    os.chdir(PWD_DIR)
    subprocess.run(['git', 'pull', 'origin', branch])
    

def start_vernissage():
    os.chdir(PWD_DIR)
    subprocess.run(['bash', f'{PWD_DIR}/run.sh'], stdout=subprocess.PIPE, stderr=subprocess.PIPE)


def log_message(message):
    log_file_name = f'vernissage-{datetime.now().strftime("%Y-%m-%d")}'
    log_file_path = f'{LOG_DIR}/{log_file_name}'
    with open(log_file_path, 'a') as log_file:
        log_file.write(f'{datetime.now()} {NOCOLOR} - {message}\n')


def main():
    create_logs_directory()
    create_temp_directory()

    if check_repository_dir():
        fetch_repository_updates()
        latest_commit_hash = get_latest_commit_hash(BRANCH)
        current_commit_hash = get_current_commit_hash()

        if latest_commit_hash != current_commit_hash:
            pull_repository_changes(BRANCH)
            log_message('Pull successful')
            start_vernissage()
        else:
            log_message('Already up to date - no need to start vernissage')
    else:
        clone_repository()
        log_message('Repository cloned - starting first time vernissage')
        start_vernissage()


if __name__ == '__main__':
    main()