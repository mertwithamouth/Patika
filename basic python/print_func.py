
'''
Task:
Without using any string methods, try to print the following:

123...n

Note that "..." represents the consecutive values in between.
'''



def count(n):
    lst=[]
    for i in range(n+1):
        lst.append(str(i))
    lst.remove("0")
    print("".join(lst))


if __name__ == '__main__':
    n = int(input())
    count(n)