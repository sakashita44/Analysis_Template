import sys
import os

common_path = os.path.abspath(os.path.join(os.path.dirname(__file__), ".."))
sys.path.append(common_path)

from common.src import common_module_1

def main():
    print("analysis1.py")
    common_module_1.fn1()

if __name__ == "__main__":
    main()
