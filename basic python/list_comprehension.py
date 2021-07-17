
#Task
#You are given three integers and representing the dimensions of a cuboid along with an integer n. 
# Print a list of all possible coordinates given by  on a 3D grid where the sum of x,y,z is not equal to n.
#link= https://www.hackerrank.com/challenges/list-comprehensions/problem

if __name__ == '__main__':
    x = int(input())
    y = int(input())
    z = int(input())
    n = int(input())
    lst=[]
    
    #for i in range(0,x+1):
        #for j in range(0,y+1):
            #for k in range(0,z+1):
                #if i+j+k != n:
                    #lst.append([i,j,k])
    lst=[[i,j,k] for i in range(0,x+1) for j in range(0,y+1)for k in range(0,z+1) if i+j+k !=n ]
    print(lst)