-module(problem2).
% -export([fibSequence/1]).
%
% % Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
%
% % 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
%
% % By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
%
% % fib(1) -> 1;
% % fib(2) -> 1;
% % fib(N) -> fib(N-1) + fib(N-2).
% fibSequence(Maximum) ->
%   fibSequence(Maximum, 1, 1, 0).
%
% fibSequence(Maximum, Previous, Current, Total) ->
%   % if
%   %   Current > Maximum ->
%   %     Total;
%   %   Current rem 2 == 0 ->
%   %     fibSequence(Maximum, Current + Previous, Current, Total + Current);
%   %   true ->
%   %     fibSequence(Maximum, Current, Previous, Total)
%   % end.
%
%   if
%     Current > Maximum ->
%         Total;
%     Current rem 2 == 0 ->
%         fibSequence(Maximum, Current+Previous, Current, Total+Current);
%     true ->
%         fibSequence(Maximum, Current+Previous, Current, Total)
%   end.

-export([solve/0]).

solve() ->
solve(4000000).

solve(Max) ->
if
  true ->
    solve(Max, 1, 1, 0)
end.

solve(Max, Current, Prev, Total) ->
if
    Current > Max ->
        Total;
    Current rem 2 == 0 ->
        solve(Max, Current+Prev, Current, Total+Current);
    true ->
        solve(Max, Current+Prev, Current, Total)
end.
