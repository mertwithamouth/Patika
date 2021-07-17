#Task 
#You are given a string. Split the string on a " " (space) delimiter and join using a - hyphen.

#Function Description
#Complete the split_and_join function in the editor below.
#split_and_join has the following parameters:

#string line: a string of space-separated words
#Returns
#string: the resulting string



#my code is here
def split_and_join(line):
    #splits the string and joins the items with - between them.
    return "-".join(line.split())
#my code ends.


if __name__ == '__main__':
    line = input()
    result = split_and_join(line)
    print(result)