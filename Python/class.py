# #01
# class Athlete:
#     def __init__(self, value='Jane'):
#         self.thing = value
#     def getAthlete(self):
#         return self.thing


# a = Athlete()
# a.getAthlete()
# print(a.getAthlete())
# b=Athlete('Holy')
# Athlete.__init__(a,'Holy')
# b.getAthlete()
# print(b.getAthlete())

# #02
# class Point:
#     def __init__(self, x=0, y=0):
#         self.x = x
#         self.y = y
#     def innerPrint(self, infor):
#         print(infor, self.x, self.y)

# pt1 = Point()
# print('Point01 Class',pt1.x, ',',pt1.y)
# pt2 = Point(3,5)
# print('Point02 Class',pt2.x,',',pt2.y)
# pt2.innerPrint('Point02 InnerPrint:')

#03
class Employee:
    empCount = 0
    def __init__(self,name,salrary):
        self.name = name
        self.salrary = salrary
        Employee.empCount += 1
    def displayCount(self):
        print("Total Employee ", Employee.empCount)
    def displayEmployee(self):
        print("Name:", self.name, ",Salary:", self.salrary)

emp1 = Employee("Zara",2000)
emp2 = Employee("Manni",5000)

emp1.displayEmployee()
emp2.displayCount
print("Total Employee:", Employee.empCount)

# 04
class NamedList(list):
    def __init__ (self, a_name):
        list.__init__([])
        self.name = a_name
        self.dob = None
johnny = NamedList('John Paul Jones')
johnny.dob = '2017.10.10'
johnny.extend(['Composer','Arranger','Musician'])
for attr in johnny:
    print(johnny.name + ' is a ' + attr + '.-' + johnny.dob)