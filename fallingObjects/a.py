import os, sys


def main():
    curPath = os.path.abspath(os.path.dirname(__file__))
    rootPath = os.path.split(curPath)[0]
    print(rootPath)
    print(curPath)


if __name__ == '__main__':
    main()