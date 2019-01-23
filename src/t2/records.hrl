-record(todo, {status=reminder, who=joe, text}).

%% test
%% rr("records.hrl")
%% X=#todo{}.
%% X1=#todo{status=urgent, text="Fix errata in book"}.
%% X2=X1#todo{status=done}