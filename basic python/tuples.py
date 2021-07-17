#Task 
#Given an integer, n, and n  space-separated integers as input, create a tuple, t, of those n integers. 
# Then compute and print the result of hash(t).

#The hash() method returns the hash value of an object if it has one. Hash value is the 
#   value we check if there is a change in the file we stored.



if __name__ == '__main__':
    n = int(input())
    ##takes evert input as integer and adds to the list
    integer_list = map(int, input().split())
    #turn integer_list into tuple and assigns it to t
    t = tuple(integer_list)
    #returns the hash value of the tuple
    print(hash(t))