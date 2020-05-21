import class_jay as cal

ex1 = cal.xy1(5)
ex1.getPredict()

ex2 = cal.xy2(5)
ex2.getPredict()

ex3 = cal.xxy1(5,7)

import pickle
pickle.dump(ex3, open("package/pickle_jay.pkl","wb"))
ex_pkl = pickle.load(open("package/pickle_jay.pkl","rb"))
ex_pkl.getPredict()

