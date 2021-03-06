function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);
temp=zeros(size(X, 1), 1);
% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%

			   X=[ones(size(X,1), 1) X];
z1=X*Theta1';
a1=sigmoid(z1);
%each row of a1 gives the values of the second layer of one example
z2=[ones(size(a1), 1) a1]*Theta2';
%we add a vector of ones as a first unit for every example
a2=sigmoid(z2); %m*k
%as a result we get ten unit for each example in a each row of the final matrix
% these results corresponds to probabilities to have one of the ten numbers
% we will choose the one with the biggest probability




[temp, p]=max(a2, [], 2);





% =========================================================================


end
