lst=[[1,'a',['cat'],2],[[[3]],'dog'],[[4,5]]]
lst2=[[1, 2], [3, 4], [5, 6, 7]]


def flatten(lst):
    new_lst = []
    for i in lst:
        if isinstance(i,list): 
            new_lst.extend(flatten(i))
        else:
            new_lst.append(i)
    return new_lst
    

def reverse(lst):
    new_lst2=[]
    for i in lst:
        new_lst2.append(i[::-1])
    return new_lst2[::-1]

print(flatten(lst))
print(reverse(lst2))
