from sklearn import tree

# training data
features = [[140, 1], [130, 1], [150, 0], [170, 0]]
labels = [0, 0, 1, 1]

# train the classifier
cls = tree.DecisionTreeClassifier()         # create the classifier
cls = cls.fit(features, labels)             # classifier is trained

# classify
print(cls.predict([[120, 1]]))
