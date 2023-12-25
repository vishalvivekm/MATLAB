function [s,c] = summations(x)
  s = sum(x(:))
  c = s/numel(x)
end
% in command prompt enter summations([1 2 3]) to check the results
