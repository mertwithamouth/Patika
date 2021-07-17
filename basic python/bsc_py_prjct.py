'''
1.Bir listeyi düzleştiren (flatten) fonksiyon yazın. Elemanları birden çok katmanlı listtlerden ([[3],2] gibi) oluşabileceği gibi, non-scalar verilerden de oluşabilir. 

Örnek olarak:
input: [[1,'a',['cat'],2],[[[3]],'dog'],4,5]

output: [1,'a','cat',2,3,'dog',4,5]

2.Verilen listenin içindeki elemanları tersine döndüren bir fonksiyon yazın. Eğer listenin içindeki elemanlar da liste içeriyorsa onların elemanlarını da tersine döndürün. 

Örnek olarak:
input: [[1, 2], [3, 4], [5, 6, 7]]

output: [[[7, 6, 5], [4, 3], [2, 1]]
'''



lst=[[1,'a',['cat'],2],[[[3]],'dog'],[[4,5]]]
lst2=[[1, 2], [3, 4], [5, 6, 7]]


def flatten(lst):
    new_lst = []
    for i in lst:
        #this part checks if the item is an element or list, if it is a list, it sends back to the function
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
