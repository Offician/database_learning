import subprocess
from colorama import Fore, init as color_init

if __name__ == "__main__":

    color_init(autoreset=True)

    commit_msg = input("Enter commit msg:")
    commands = [["git","add", "."],
                ["git","commit", "-m", commit_msg],
                ["git",'push']]

    
    for command in commands:
        cmd_output = subprocess.run(command, capture_output=True, text=True)

        if cmd_output.stdout != "":
            print(Fore.GREEN + cmd_output.stdout, end="")
        
        elif cmd_output.stderr != "":
            print(Fore.GREEN + cmd_output.stderr, end="")



# Cool tidbit of code - check if having problems with subprocess.run

# cmd = [subprocess.run(["echo", "What a wonderfull day!"], capture_output=True, text=True, shell=True)]
# cmd.append(subprocess.run(["echo", "What a wonderfull day!"], capture_output=True, text=True, shell=True))
# cmd.append(subprocess.run(["echo", "What a wonderfull day!"], capture_output=True, text=True, shell=True))

# for c in cmd:
#     if c.stdout is not "":
#         print(c.stdout, end="")
#     if c.stderr is not "":
#         print(c.stderr, end="")