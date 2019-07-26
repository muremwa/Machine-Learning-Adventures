%% f1score: function description
function [f1, p, r] = fscore(y, hx)
	% true positives
	tp = sum(y==1&hx==1);
	% predicted positives
	pp = sum(hx==1);
	% actual positives
	ap = sum(y==1);
	% precison 
	p = tp/pp;
	% recall
	r = tp/ap;

	% f1 score
	f1 = (2*p*r)/(p+r);
