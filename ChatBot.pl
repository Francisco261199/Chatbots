keyword([hello,
'Hello sir state your problem please.']).
keyword([hi,
'Hello again sir state your problem please.']).
keyword([card,
'What is the problem with your card?',
'In this situation the capture should be communicated to any card company as soon as possible.',
'You should immediately cancel your card through your companys card assistance service.', %%%%%%%%%%%%%%
'If your card is malfunctioning you need to solicit a new one to the card company.',
'If you renew your card because the last one expired, the personal code maintains. In case of it being stolen or lost you will get a new personal code.',
'You can activate your card in any agency of your credit card company or even on-line.',
'The card fee is paid once you aquire it for the first time and then on every anniversary of that date the value is discounted from you account balance.',
'If you lose or forget your cards code you should request a new one in any agency of your cards company.',
'If your card is broken you need to solicit a new one to the card company.']).
keyword([stolen,
'You should immediately cancel your card through your companys card assistance service.',
'In the case of having your credentials stolen you need to go to your banks agency to prove your identity and request new credentials.You will receive a letter with the updated information 15 days prior to the request, in the meanwhile your account will be frozen.']).
keyword([stole,
'You should immediately cancel your card through your companys card assistance service.',
'In the case of having your credentials stolen you need to go to your banks agency to prove your identity and request new credentials.You will receive a letter with the updated information 15 days prior to the request, in the meanwhile your account will be frozen.']).
keyword([broken,
'If your card is broken you need to solicit a new one to the card company.']).
keyword([broke,
'If your card is broken you need to solicit a new one to the card company.']).
keyword([credentials,
'In the case of having your credentials stolen you need to go to your banks agency to prove your identity and request new credentials.You will receive a letter with the updated information 15 days prior to the request, in the meanwhile your account will be frozen.',
'In the case of losing your credentials you need to go to your banks agency to prove your identity and request new credentials.You will receive a letter with the updated information 15 days prior to the request, in the meanwhile your account will be frozen.',
'If you forgot your credentials you need to go to your banks agency to prove your identity and request new credentials.You will receive a letter with the updated information 15 days prior to the request, in the meanwhile your account will be frozen.']).
keyword([fee,
'The card fee is paid once you aquire it for the first time and then on every anniversary of that date the value is discounted from you account balance.']).
keyword([activate,
'You can activate your card in any agency of your credit card company or even on-line.']).
keyword([code,
'If you renew your card because the last one expired, the personal code maintains. In case of it being stolen or lost you will get a new personal code.',
'If you lose or forget your cards code you should request a new one in any agency of your cards company.']).
keyword([renew,
'If you renew your card because the last one expired, the personal code maintains.If it was stolen or lost you will get a new code.']).
keyword([malfunctioning,
'If your card is malfunctioning you need to acquire a new one from the card company.']).
keyword([lost,
'You should immediately cancel your card through your companys card assistance service.',
'If you lose/forget your cards code you should request a new one in any agency in your cards company.',
'In the case of losing your credentials you need to go to your banks agency to prove your identity and request new credentials.You will receive a letter with the updated information 15 days prior to the request, in the meanwhile your account will be frozen.']).
keyword([forgot,
'If you lose or forget your cards code you should request a new one in any agency of your cards company.',
'If you forgot your credentials you need to go to your banks agency to prove your identity and request new credentials.You will receive a letter with the updated information 15 days prior to the request, in the meanwhile your account will be frozen.']).
keyword([atm,
'In this situation you should immediately communicate to our company that the atm didn\'t give you your card.']).
keyword(card).
keyword(credentials).
keyword(lost).
/*********************************************/
%DCG for type defining
%Optins/Actions_Def
type(greeting).
type(farewell).
type(offersupport).
type(lost_card).
type(lost_card_code).
type(lost_account_credentials).
/********************************/
%type(lose).
%type(lose_something).%%:- lost_card;lost_card_code;lost_card_credentials.
%type(broke_someting).

type(card).
type(credentials).
type(code).
/*************************/

lost_q--> lost_card;lost_account.
lost_card_q --> [lost],[card];[card],[lost].
lost_account_q --> [lost],[account],[password].
%Options/Actions
lost_card --> [lost],[card].
lost_card_code --> [lost],[card],[code].
lost_account_credentials --> [lost],[credentials];[lost],[account],[password];[lost],[account],[username];[lost],[account],[login];[lost],[account],[credentials].

%lose_something --> [lost];[left],object.
%broke_something --> [broken].
%lose --> [lost];[left],object;lose_something.
/***********************************************************/


%Objects
object --> card;credentials;card,code.
card --> [card].
credentials --> [credentials].
code --> [code].
/***********************************/
greeting --> [hello];[hi];[good],partday.

partday --> [morning];[afternoon];[night];[day].

farewell --> [bye];[goodbye];[good].

offersupport -->  [problem].

/***********************************************/
/***********************************************/
remove_repeatitions(Z,W):-sort(Z,W).
/***********************************************/
%Find if keyword 'Bye' was typed by the user
bye(L):-
  member('Bye',L);
  member('bye',L);
  member("Bye",L);
  member("bye",L).
/***********************************************/
aux_to_list([],[]).
aux_to_list([X|XS],[[X]|Y]):-
  aux_to_list(XS,Y).

/***********************************************/
%function used from github**
% find the X with the most occurrences N in a list L
occ(X,N,L) :-
    occ(L,max(null,0),[],max(X,N)).

%% occ(+L, +CurrentMax, +Counts, +FinalMax) is det.
%
% recurse through L, using CurrentMax accumulator to
% store current candidate as a term `max(X,N)`
%
% Counts is a list in which we accumulate counts of
% occurrences to far, as list of element-count pairs X-N
%
% The final argument is unified with the CurrentMax
% accumulator as the base case

occ([], max(Xm, Nm), _, max(Xm, Nm)).

occ([X|L], max(Xm, Nm), Counts, FinalMax) :-

    % get the current count of X
    (   select(X-N, Counts, CountsT)
    ->
        N1 is N+1
    ;
        N1 = 1,
        CountsT = Counts),

    % make a new list of counts with the
    % original entry for X replaced by a new
    % one with count of N+1
    Counts2 = [X-N1 | CountsT],

    % recurse, using either new current best candidate
    % or same one depending on whether count is exceeded.
    % in case of tie, use same one, thus prioritizing first result
    (   N1 > Nm
    ->
        occ(L, max(X,N1), Counts2, FinalMax)
    ;
        occ(L, max(Xm,Nm), Counts2, FinalMax)).
/***********************************************/
answer_builder([],[]).
answer_builder([H|T],[XS|L]):-
  keyword([H|XS]),
  answer_builder(T,L).
/***********************************************/
/*filters*/
/*create list with keywords found in 'database'*/
filter_keywords([],[]).
filter_keywords([H|T],[H|L]):-
  keyword([H|_]),
  filter_keywords(T,L),!.
filter_keywords([_|T],L):-
  filter_keywords(T,L).

/*Convert to lower case*/
downcase_list(L,X):-
  maplist(downcase_atom,L,X).

/*Eliminate non-alphabetic characters*/
filter_alpha([ ],[ ]).
filter_alpha([H|T],X) :-
    ( char_type(H,alpha) -> X = [H|Y] ; X = Y),
    filter_alpha(T,Y).
/************************************************/
char_only([],[]).
char_only([H|T],[Y|L]):-
  string_chars(H,X),
  filter_alpha(X,Z),
  atomic_list_concat(Z,Y),
  char_only(T,L).
/***********************************************/
answer(L,Y):-
  manage_list(L,W),
  sentence_type(L,X),
  answer_builder(W,Z),
  flatten(Z,T),
  aux_to_list(T,Y).

    /*Convert list into lowercase and remove all punctuation*/
    manage_list(L,W):-
      downcase_list(L,X),
      %sort(X,A),
      atomics_to_string(X,' ',S),
      split_string(S," ",",",Y),
      char_only(Y,Z),
      filter_keywords(Z,W).

/***********************************************/
best_answer(L,N):-
  answer(L,W),
  occ(N,_,W).
/***********************************************/
rpropanswer(X,ANS):-
  answer(X,W),
  length(W,Lenght),
  random(0,Lenght,Chosen_ans),
  nth0(Chosen_ans,W,ANS).
/***********************************************/
runifanswer(X,ANS):-
  answer(X,Z),
  remove_repeatitions(Z,W),sort(Z,W),
  length(W,Lenght),
  random(0,Lenght,Chosen_ans),
  nth0(Chosen_ans,W,ANS).
/***********************************************/
aux_writeln([]).
aux_writeln([X|Xs]):-
  writeln(X),
  aux_writeln(Xs).

stats(L):-
  writeln("Conversation log: "), aux_writeln(L),
  writeln("Number of messages: "), length(L,X),writeln(X),
  writeln("Number of interactions: "), length(L,X),Y is integer((X/2)-0.5), writeln(Y).
/***********************************************/
sentence_type(H,X):-
  manage_list(H,W),
  define_type(X,W).

define_type(T,PH):-type(T),W=..[T,PH,[]],call(W),!.

/***********************************************/

/***********************************************/
chat(_):-
  writeln("Hello. How can I help you?"),
  writeln("Enter 'bye' if you want to end the conversation."),
  readln(X),
  start(X,_,L),
  stats(L),!.

  start(X,_,[[bye]|L]):-
    member('bye',X), writeln("Are you sure[yes/no]."),readln(Y),start(Y,0,L).

  start(X,0,[['Goodbye.Glad to help.']|L]):-
    member('yes',X), writeln("Goodbye.Glad to help."),writeln(L),!.

  start(X,0,[['How can I help you now?']|L]):-
    member('no',X), writeln("How can I help you now?"), readln(Input1),start(Input1,_,L).

  start(X,_,[ANS,X|L]):-
    not(member('bye',X)),best_answer(X,ANS),concat_atom(ANS,F_ANS),writeln(F_ANS),readln(Input1),start(Input1,_,L).
