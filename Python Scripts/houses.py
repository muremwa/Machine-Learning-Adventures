# algorithm to determine whether a house is a mansion(0), bungalow(1) or apartment(2)
from sklearn import tree

# training data
features = [[10, 6], [12, 10], [5, 3], [6, 1], [4, 2], [4.6, 2]]
labels = [0, 0, 1, 1, 2, 2]

# create a classifier
clf = tree.DecisionTreeClassifier()
# train classifier
clf = clf.fit(features, labels)

# predict
prediction = clf.predict([[20, 1]])
print(prediction)      
