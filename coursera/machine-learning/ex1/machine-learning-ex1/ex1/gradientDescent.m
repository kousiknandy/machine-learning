function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %


	     t1 = theta(1);
t2 = theta(2);
f1 = 0;
f2 = 0;
for j = 1:m,
	  f1 += (X(j,:)*theta-y(j))*X(j,1);
	  f2 += (X(j,:)*theta-y(j))*X(j,2);
end;
t1 = t1 - (alpha/m)*f1;
t2 = t2 - (alpha/m)*f2;

theta(1) = t1;
theta(2) = t2;

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
