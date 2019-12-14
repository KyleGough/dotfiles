
def header(msg): return "\033[95m" + msg + "\033[0m"
def okblue(msg): return "\033[94m" + msg + "\033[0m"
def okgreen(msg): return "\033[92m" + msg + "\033[0m"
def warning(msg): return "\033[93m" + msg + "\033[0m"
def fail(msg): return "\033[91m" + msg + "\033[0m"
def bold(msg): return "\033[1m" + msg + "\033[0m"
def underline(msg): return "\033[4m" + msg + "\033[0m"

pad15 = "{:<15}".format

def commands():
    print("     " + okgreen("Useful Commands") + "                                     ", end='')
    yield    
    print("     ---------------                                     ", end='')
    yield    
   
    f = open("/home/kyle/Documents/config/usefulCommands", "r")
    for line in f:
        cmd = line.split("|")
        print("     " + okblue(cmd[0]) + cmd[1][:-1], end='')
        yield

    for i in range(5):
        print("                                                        ", end='')
        yield    

def todo():
    print("     " + okgreen("Todo"))
    yield    
    print("     ---------------")
    yield

    f = open("/home/kyle/Documents/config/todo", "r")
    for line in f:
        print("    " + line, end='')
        yield

    for j in range(1):
        print("", end='')
        yield
        

cmdTxt, todoTxt = commands(), todo()
while True:
    try:
        next(cmdTxt)
        print("      ", end='')
        next(todoTxt)
    except StopIteration:
        print()
        break
