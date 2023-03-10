# Append Size
# Create a function called append_size that has one parameter named my_list.
# The function should append the size of my_list (inclusive) to the end of my_list. The function should then return this new list.
# For example, if my_list was [23, 42, 108], the function should return [23, 42, 108, 3] because the size of my_list was originally 3.

def append_size(my_list):
  my_list.append(len(my_list))
  return my_list

print(append_size([23, 42, 108]))

# Append Sum
# Write a function named append_sum that has one parameter — a list named named my_list.
# The function should add the last two elements of my_list together and append the result to my_list. It should do this process three times and then return my_list.
# For example, if my_list started as [1, 1, 2], the final result should be [1, 1, 2, 3, 5, 8].

def append_sum(my_list):
  for i in range(3):
    res = my_list[-1] + my_list[-2]
    my_list.append(res)
  return my_list

print(append_sum([1, 1, 2]))

# Larger List
# Write a function named larger_list that has two parameters named my_list1 and my_list2.
# The function should return the last element of the list that contains more elements. If both lists are the same size, then return the last element of my_list1.

def larger_list(my_list1, my_list2):
  if len(my_list1) >= len(my_list2):
    return my_list1[-1]
  else:
    return my_list2[-1]

print(larger_list([4, 10, 2, 5], [-10, 2, 5, 10]))

# More Than N
# Create a function named more_than_n that has three parameters named my_list, item, and n.
# The function should return True if item appears in the list more than n times. The function should return False otherwise.

def more_than_n(my_list, item, n):
  if my_list.count(item) > n:
    return True
  else:
    return False

print(more_than_n([2, 4, 6, 2, 3, 2, 1, 2], 2, 3))

# Combine Sort
# Write a function named combine_sort that has two parameters named my_list1 and my_list2.
# The function should combine these two lists into one new list and sort the result. Return the new sorted list.

def combine_sort(my_list1, my_list2):
  new_list = my_list1 + my_list2
  new_list.sort()
  return new_list

print(combine_sort([4, 10, 2, 5], [-10, 2, 5, 10]))

# Every Three Numbers
# Create a function called every_three_nums that has one parameter named start.
# The function should return a list of every third number between start and 100 (inclusive). 
# For example, every_three_nums(91) should return the list [91, 94, 97, 100]. If start is greater than 100, the function should return an empty list.

def every_three_nums(start):
  return list(range(start, 101, 3))

print(every_three_nums(91))

# Remove Middle
# Create a function named remove_middle which has three parameters named my_list, start, and end.
# The function should return a list where all elements in my_list with an index between start and end (inclusive) have been removed.
# For example, the following code should return [4, 23, 42] because elements at indices 1, 2, and 3 have been removed:

def remove_middle(my_list, start, end):
  return my_list[:start] + my_list[end+1:]

print(remove_middle([4, 8, 15, 16, 23, 42], 1, 3))

# More Frequent Item
# Create a function named more_frequent_item that has three parameters named my_list, item1, and item2.
# Return either item1 or item2 depending on which item appears more often in my_list.
# If the two items appear the same number of times, return item1.

def more_frequent_item(my_list, item1, item2):
  if my_list.count(item1) >= my_list.count(item2):
    return item1
  else:
    return item2

print(more_frequent_item([2, 3, 3, 2, 3, 2, 3, 2, 3], 2, 3))

# Double Index
# Create a function named double_index that has two parameters: a list named my_list and a single number named index.
# The function should return a new list where all elements are the same as in my_list except for the element at index. 
# The element at index should be double the value of the element at index of the original my_list.
# If index is not a valid index, the function should return the original list.
# For example, the following code should return [1,2,6,4] because the element at index 2 has been doubled:

def double_index(my_list, index):
  if index >= len(my_list):
    return my_list
  else:
    my_new_list = my_list[0:index]
  my_new_list.append(my_list[index]*2)
  my_new_list = my_new_list + my_list[index+1:]
  return my_new_list

print(double_index([3, 8, -10, 12], 2))

# Middle Item
# Create a function called middle_element that has one parameter named my_list.
# If there are an odd number of elements in my_list, the function should return the middle element. 
# If there are an even number of elements, the function should return the average of the middle two elements.

def middle_element(my_list):
  if len(my_list) % 2 == 0:
    sum = my_list[int(len(my_list)/2)] + my_list[int(len(my_list)/2) - 1]
    return sum / 2
  else:
    return my_list[int(len(my_list)/2)]

print(middle_element([5, 2, -10, -4, 4, 5]))
