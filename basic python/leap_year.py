
'''
Task:
Given a year, determine whether it is a leap year. If it is a leap year, return the Boolean True, otherwise return False.
Note that the code stub provided reads from STDIN and passes arguments to the is_leap function. It is only necessary to complete the is_leap function.

In the Gregorian calendar, three conditions are used to identify leap years:
    The year can be evenly divided by 4, is a leap year, unless:
        The year can be evenly divided by 100, it is NOT a leap year, unless:
            The year is also evenly divisible by 400. Then it is a leap year.

'''



def is_leap(year):
    leap = False
    #first it checks if the year is divided bby 400 (because if it does, it is definitely leap year.)
    #So in the rule it is not so clear but basically for a year to be a leap year, it has to be divided by 4 and cannot be divided by 
    # 100 to be a leap year. Unless it is divided by 400(example: 1600)
    if year%400==0 or (year%100!=0 and year%4 ==0):
        leap = True


    return leap

year = int(input())
print(is_leap(year))