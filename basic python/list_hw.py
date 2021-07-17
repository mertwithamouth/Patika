##Lists
#Consider a list (list = []). You can perform the following commands:
#insert i e: Insert integer  at position .
#print: Print the list.
#remove e: Delete the first occurrence of integer .
#append e: Insert integer  at the end of the list.
#sort: Sort the list.
#pop: Pop the last element from the list.
#reverse: Reverse the list.
#Initialize your list and read in the value of  followed by  lines of commands where each command will 
#be of the  types listed above. Iterate through each command in order and perform the corresponding operation on your list.



if __name__ == '__main__':
    n = int(input())
    output = []
    for i in range(0,n):
        ip = input().split()
        if ip[0] == "print":
            print(output)
        elif ip[0] == "insert":
            output.insert(int(ip[1]),int(ip[2]))
        elif ip[0] == "remove":
            output.remove(int(ip[1]))
        elif ip[0] == "pop":
            output.pop()
        elif ip[0] == "append":
            output.append(int(ip[1]))
        elif ip[0] == "sort":
            output.sort()
        else:
            output.reverse()