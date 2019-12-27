
def header(msg): return "\033[95m" + msg + "\033[0m"
def okblue(msg): return "\033[94m" + msg + "\033[0m"
def okgreen(msg): return "\033[92m" + msg + "\033[0m"
def warning(msg): return "\033[93m" + msg + "\033[0m"
def fail(msg): return "\033[91m" + msg + "\033[0m"
def bold(msg): return "\033[1m" + msg + "\033[0m"
def underline(msg): return "\033[4m" + msg + "\033[0m"

def todo():
    f = open("/home/kyle/Documents/todo", "r")
    print("     " + okgreen("Todo"))
    yield    
    print("     ---------------")
    yield
    for line in f:
        print("    " + line, end='')
        yield
    for j in range(1):
        print("", end='')
        yield
        
todoTxt = todo()
while True:
    try:
        next(todoTxt)
    except StopIteration:
        print()
        break
