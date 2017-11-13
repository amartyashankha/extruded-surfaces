import sys
from os import path, system, listdir, getcwd

cwd = getcwd()

path = cwd + '/' + sys.argv[1] 

for old in listdir(path):
    if old[-3:] == 'svg':
        print(old, end=' ==> ')
        f, num = old.split(' ')
        num = num.split(')')[0].split('(')[-1]
        f += num + '.svg'
        old = old.replace(' ', '\ ')
        old = old.replace('(', '\(')
        old = old.replace(')', '\)')
        command = 'mv ' + path + old + ' ' + path + f
        print(f)
        system(command)
