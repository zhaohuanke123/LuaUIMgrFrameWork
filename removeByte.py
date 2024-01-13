# 给LuaScripts文件夹下的bytes，重命名，去掉.bytes后缀
# 用法：python removeByte.py

import os
import sys


def removeByte(path):
    for root, dirs, files in os.walk(path):
        for file in files:
            if file.endswith(".bytes"):
                os.rename(os.path.join(root, file), os.path.join(root, file[:-6]))


if __name__ == "__main__":
    removeByte(sys.argv[1])
