%
% Copyright (c) 2015, Mostapha Kalami Heris & Yarpiz (www.yarpiz.com)
% All rights reserved. Please read the "LICENSE" file for license terms.
%
% Project Code: YPEA120
% Project Title: Non-dominated Sorting Genetic Algorithm II (NSGA-II)
% Publisher: Yarpiz (www.yarpiz.com)
% 
% Developer: Mostapha Kalami Heris (Member of Yarpiz Team)
% 
% Cite as:
% Mostapha Kalami Heris, NSGA-II in MATLAB (URL: https://yarpiz.com/56/ypea120-nsga2), Yarpiz, 2015.
% 
% Contact Info: sm.kalami@gmail.com, info@yarpiz.com
%

function y = Mutate(x, mu, sigma)

    nVar = numel(x);
    
    nMu = ceil(mu*nVar);

    j = randsample(nVar, nMu);
    if numel(sigma)>1
        sigma = sigma(j);
    end
    
    y = x;
    
    y(j) = x(j)+sigma.*randn(size(j));

end