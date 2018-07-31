# my first machine learning program
from sklearn import tree
# [feature_1, feature_2] 0 for bumpy, 1 for smooth....apples vs oranges
features = [[140, 1], [130, 1], [150, 0], [170, 0]]
# apple = 0, orange = 1
labels = [0, 0, 1, 1]
clf = tree.DecisionTreeClassifier()
clf = clf.fit(features, labels)
print("apple = 0, orange = 1")
print(clf.predict([[110, 1]]))
