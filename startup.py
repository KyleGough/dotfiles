
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
    print("     " + okgreen("Config Files") + ":    startup, aliases, commands          ", end='')
    yield    
    print("     " + okgreen("Text Editors") + ":    vim, code, typora, kate             ", end='')
    yield    
    print("     " + okgreen("Packages") + ":        pacman, pamac, pip, docker          " , end='')
    yield    
    print("     " + okgreen("Media Control") + ":   song, unpause, pause, next, previous", end='')
    yield
    print("     " + okgreen("REPL") + ":            python, scala, jshell               ", end='')
    yield
    print("     " + okgreen("QOL") + ":             day night                           ", end='')
    yield
    for i in range(5):
        print("                                                        ", end='')
        yield    

def todo():
    print("     " + okgreen("Todo"))
    yield    
    print("     ---------------")
    yield

    f = open("todo", "r")
    for line in f:
        print("    " + okblue(line), end='')
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
