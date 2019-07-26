%% errorAnalysis: function description
function [J, acc] = errorAnalysis(theta, mu, si, thresh)
	% load data
	% load the cross validation set
	data = load('cv.txt');
	Xcv = data(:,1:8);
	ycv = data(:,9);

	% scale
	Xcv = scaling(Xcv, mu, si);

	% add bias value
	Xcv = [ones(length(Xcv),1), Xcv];

	% predict
	h = hypothesis(Xcv, theta);
	s = h>=thresh;
	acc = mean(ycv==s)*100;

	J = cost(h, ycv);