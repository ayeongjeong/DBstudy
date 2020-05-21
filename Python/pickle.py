# 01
# import pickle
# favorite_color = {"lion":"Yellow", "kitty":"red"}
# pickle.dump(favorite_color, open("save.pkl","wb"))
# favorite_color_load = pickle.load(open("save.pkl", "rb"))
# print(favorite_color_load)


# 02
from packages.classEmployee import Employee as emp 
emp1 = emp("Zara",2000)
emp1.displayEmployee()

import pickle
pickle.dump(emp1, open("./emp1.pkl","wb"))
print('dump pickle')
emp1_pkl = pickle.load(open("./emp1.pkl","rb")) #저장된 pickle을 변수에 저장함
print('load pickle')
emp1_pkl.displayEmployee()
