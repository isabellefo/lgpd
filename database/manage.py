import sys
import subprocess
from datetime import datetime

config = {
    "db": "petmall_db",
    "user": "petmall_app",
    "pwd": "petmall_pass",
}
# TODO: criar funcao de restore  = run_file + reanonimize
# TODO: rota para anonimizacao em massa
def run_file(file: str) -> str:
    with open(file, 'r') as query:
        process = subprocess.Popen(
        ["mysql", "-u", "petmall_app", "-ppetmall_pass", "petmall_db"], stdin=query, stdout=subprocess.PIPE)
        output, error = process.communicate()
        return output.decode()

def backup(file: str) -> str:
    with open(file, 'w') as backup:
        process = subprocess.Popen(
        ["mysqldump", "-u", "petmall_app", "-ppetmall_pass", "petmall_db", "--no-tablespaces"], stdin=subprocess.PIPE, stdout=backup)
        process.communicate()
        return ""

def get_backup_name():
    return str(datetime.now()).split()[0] + ".sql"

def main(args):
    cmd = args[0]
    if cmd == "restore":
        print(run_file(args[1]))
    elif cmd == "backup":
        backup_name = get_backup_name()
        backup(backup_name)

if __name__  == "__main__":
    main(sys.argv[1:])
