

##hacker_Rank url= https://www.hackerrank.com/challenges/defaultdict-tutorial/problem




from collections import defaultdict

#creating the dictioanry that we will assign list in it
d = defaultdict(list)

#this will be used in the Group B which will tell us which key, would program
#    want to display
lst=[]


n, m = map(int, input().split())

#assigning keys to the dictiory with their values as string. Because in the end,
#   we have to use join() method and it's working with strings. 
for i in range(n):
    d[input()].append(str(i+1))

#assigning the Group B keys into a list to check if the key is in the dictionary       
for i in range(m):
    lst.append(input())


#checking if group B keys in the dictionary and print them. 
#   If the key is not in the dictionary, we print -1
for i in lst:
    if i in d:
        print(" ".join(d[i]))
    else:
        print(-1)