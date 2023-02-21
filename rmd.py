import sys
import os

filename = sys.argv[1]
os.system(f'xattr -d com.apple.metadata:kMDItemWhereFroms "{filename}"')
