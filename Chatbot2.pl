/*********************************************/
type(question_elsa).
type(question_australia).
type(question_food).
type(question_presents).
type(question_kids).
type(question_grandpa).

type(question_christmas).
type(question_weather).
type(question_family).

type(greeting_start).
type(bad).
type(good).
%
%conversation(conversation(X))--> greeting,choose_topic(X),end_conv.
%choose_topic(choose_topic(X)) --> topic1(X).

topic1(topic1(X)) --> family(X);weather(X);christmas(X).
%%%%family
family(family(X)) --> question_family,answer_family(X).

answer_family(answer_family(X)) --> answer_family_good(X);answer_family_bad(X).
answer_family_good(answer_family_good(X)) --> answer_family_good_1(X),answer_family_good_2(X).
answer_family_bad(answer_family_bad(X)) --> answer_family_bad_1(X),answer_family_bad_2(X).


answer_family_bad_1(bad) --> ['The past few years were a little bit harsh but we have been handling okay.'].
answer_family_bad_2(bad) --> ['Sad to ear that but things will get better for sure!'].
answer_family_good_1(good) --> ['It has been really great.The kids are growing at a fast pace but everything is going well for us.'].
answer_family_good_2(good) --> ['That is really great!Yes they never stop growing that fast.It is like a lightning!'].

%%%subtopics of family
%%
family_grandpa(family_grandpa(X)) --> question_grandpa,answer_grandpa(X).
answer_grandpa(answer_grandpa(X)) --> answer_grandpa_good(X);answer_grandpa_bad(X).

answer_grandpa_good(answer_grandpa_good(X)) --> answer_grandpa_good_1(X),answer_grandpa_good_2(X).
answer_grandpa_bad(answer_grandapa_bad(X)) --> answer_grandpa_bad_1(X),answer_grandpa_bad_2(X).

answer_grandpa_bad_1(bad) --> ['Unfortunately he is still sick. The doctors are still trying to find the root of his problem.'].
answer_grandpa_bad_2(bad) --> ['That is really unfortunate but I hope he gets better. For sure we will'].
answer_grandpa_good_1(good) --> ['Yes! Now he is good.The doctors did some tests and gave him some medication and he got better.'].
answer_grandpa_good_2(good) --> ['Oh that is really good. Finally he got better!'].
%%
family_kids(family_kids(X)) --> question_kids,answer_kids(X).
answer_kids(answer_kids(X)) --> answer_kids_good(X);answer_kids_bad(X).

answer_kids_good(answer_kids_good(X)) --> answer_kids_good_1(X),answer_kids_good_2(X).
answer_kids_bad(answer_kids_bad(X)) --> answer_kids_bad_1(X),answer_kids_bad_2(X).

answer_kids_bad_1(bad) --> ['It is complicated. Camila is havind some problems in school and Jason is sad with the whole situation.'].
answer_kids_bad_2(bad) --> ['I am sad to ear that but atleast it seems that Jason supports his sister and that is really good for a kid of his age!'].
answer_kids_good_1(good) --> ['They are doing really well!.Their grades are very good and both seem to be making friends really easily!'].
answer_kids_good_2(good) --> ['Oh that is really nice. It is really important they develop their social skills and also learn to work hard!'].
%%
%%%
%%%%

%%%%weather
weather(weather(X)) --> question_weather,answer_weather(X).
answer_weather(answer_weather(X)) --> answer_weather_good(X);answer_weather_bad(X).
answer_weather_good(good) -->  ['Yes it has been really nice. It is so warm and finnaly I can walk outside without a jacket.'].
answer_weather_bad(bad) --> ['Yes I noticed. It has been really cold and rainy.I can not stand this weather!'].

%%%subtopics of weather
%%
weather_elsa(weather_elsa(X)) --> question_elsa,answer_elsa(X).
answer_elsa(answer_elsa(X)) --> answer_elsa_good(X);answer_elsa_bad(X).

answer_elsa_good(answer_elsa_good(X)) --> answer_elsa_good_1(X),answer_elsa_good_2(X).
answer_elsa_bad(answer_elsa_bad(X)) --> answer_elsa_bad_1(X),answer_elsa_bad_2(X).

answer_elsa_bad_1(bad) --> ['Yes it has been really bad.It was the first storm in a long time.'].
answer_elsa_bad_2(bad) --> ['Yes indeed it was. And the destruction was massive in some places.'].
answer_elsa_good_1(good) --> ['Yes It was really scary but atleast it is over! Did you get affected or something? Atleast I was lucky and nothing went bad.'].
answer_elsa_good_2(good) --> ['Same for me. I was scared that something would happen but fortunately everything went good!'].
%%
weather_australia(weather_australia(X)) --> question_australia,answer_australia(X).
answer_australia(answer_australia(X)) --> answer_australia_good(X);answer_australia_bad(X).

answer_australia_good(answer_australia_good(X)) --> answer_australia_good_1(X),answer_australia_good_2(X).
answer_australia_bad(answer_australia_bad(X)) --> answer_australia_bad_1(X),answer_australia_bad_2(X).

answer_australia_bad_1(bad) --> ['Yes it has been really bad and 8 million hectars were already burned. And also it is going to be a disastrous shake in their bio diversity!'].
answer_australia_bad_2(bad) --> ['Yes it is really sad to see what is happening and that they can not stop the fires!'].
answer_australia_good_1(good) -->['Yes. The situation is really difficult there but atleast there are people donating to help.'].
answer_australia_good_2(good) -->['Yes that is right and also the state is planning already in the recover of the burnt area and to replant all those areas that got destroyed.'].
%%
%%%
%%%%

%%%%christmas
christmas(christmas(X)) --> question_christmas,answer_christmas(X).
answer_christmas(answer_christmas(X)) --> answer_christmas_good(X);answer_christmas_bad(X).
answer_christmas_good(good) --> ['Yes! I can not wait to see the family around the table. It has been a rush but everything is prepared.'].
answer_christmas_bad(bad) --> ['No... Some things are not ready because we had a problem with the tree.'].

%%%subtopics of christmas
christmas_presents(christmas_presents(X)) --> question_presents,answer_presents(X).
answer_presents(answer_presents(X)) --> answer_presents_good(X);answer_presents_bad(X).

answer_presents_good(answer_presents_good(X)) --> answer_presents_good_1(X),answer_presents_good_2(X).
answer_presents_bad(answer_presents_bad(X)) --> answer_presents_bad_1(X),answer_presents_bad_2(X).

answer_presents_bad_1(bad) --> ['Not really, this year it has been hard in terms of managing our money and nontheless all the stores are full of people and chaotic.'].
answer_presents_bad_2(bad) --> ['Yeah I feel you, every year it gets harder to save enough money but you have to focus on the important things and keep your head high.'].
answer_presents_good_1(good) --> ['Yes, I had to run from a place to another but in the end it all went great and I could not be happier!'].
answer_presents_good_2(good) --> ['Really? That is amazing, I just hope to be able to do the same. Wish me luck!'].
%%
christmas_food(christmas_food(X)) --> question_food,answer_food(X).
answer_food(answer_food(X)) --> answer_food_good(X);answer_food_bad(X).

answer_food_good(answer_food_good(X)) --> answer_food_good_1(X),answer_food_good_2(X).
answer_food_bad(answer_food_bad(X)) --> answer_food_bad_1(X),answer_food_bad_2(X).

answer_food_bad_1(bad) --> ['I did not find the energy to do that this year, I have been really tired this past months ... I just hope that does not ruin it for anyone.'].
answer_food_bad_2(bad) --> ['That is interesting because I also have been feeling a lack of energy for a while, but do not be hard on yourself people will understand.'].
answer_food_good_1(good) --> ['I think my cooking skills got better since last year. All dishes came out with a spectacular look. I just hope the taste matches.'].
answer_food_good_2(good) --> ['Wow look at you! Now I really want you to save me some of that aletria that I really like.'].
%%
%%%%
%%%greeting%%%%%%%%
greeting_start-->greet,howru_q,flag,greeting_answer,flag,greeting_response,flag.
greeting_answer-->greet,howru_a,thanking,you_q,howru_q.
greeting_response-->howru_a.

howru_a-->['I am doing ok.'];['I am great.'];['I am amazing.'].
greet-->['Hi, '];['Hello, '].
thanking-->[' Thank you for asking.'].
howru_q-->['how have you been?'];['how is everything?'];['what is up?'].
you_q-->[' What about you, '];[' Long time no see, '];[' It has been a while, '].
flag-->['!'].

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

question_food-->['Did you get around cooking all thoose deserts and pastry like you normally do?'].
question_presents--> ['Did you have time to get all the presents and such?'].
question_australia --> ['Have you seen the massive fire in australia? The situation there is really bad.'].
question_elsa --> ['Have you seen the news about the storm Elsa?'].
question_kids --> ['So how are Jason and Camila? Everything going well?'].
question_grandpa --> ['So how is your grandpa? Is he better from his lungs?'].
question_christmas --> ['What about christmas? Are you ready? Do you have everything prepared?'].
question_weather --> ['Have you seen the weather lately?'].
question_family --> ['So how has your family been?'];
                    ['So how has your family been? Everything allright?'].

bad --> ['The past few years were a little bit harsh but we have been handling okay.'];
        ['Sad to ear that but It will get better for sure!'];
        ['Yes I noticed. It has been really cold and rainy.I can not stand this weather!'];
        ['No... Some things are not ready because we had a problem with the tree.'];
        ['That is really unfortunate but I hope he gets better. For sure we will'];
        ['Unfortunately he is still sick. The doctors are still trying to find the root of his problem.'];
        ['It is complicated. Camila is havind some problems in school and Jason is sad with the whole situation.'];
        ['I am sad to ear that but atleast it seems that Jason supports his sister and that is really good for a kid of his age!'];
        ['Yes it has been really bad.It was the first storm in a long time.'];
        ['Yes indeed it was. And the destruction was massive in some places.'];
        ['Yes it has been really bad and 8 million hectars were already burned. And also it is going to be a disastrous shake in their bio diversity!'];
        ['Yes it is really sad to see what is happening and that they can not stop the fires!'];
        ['Not really, this year it has been hard in terms of managing our money and nontheless all the stores are full of people and chaotic.'];
        ['Yeah I feel you, every year it gets harder to save enough money but you have to focus on the important things and keep your head high.'];
        ['I did not find the energy to do that this year, I have been really tired this past months ... I just hope that does not ruin it for anyone.'];
        ['That is interesting because I also have been feeling a lack of energy for a while, but do not be hard on yourself people will understand.'].
good --> ['It has been really great.The kids are growing at a fast pace but everything is going well for us.'];
         ['That is really great!Yes they never stop growing that fast.Is is like a lightning!'];
         ['Yes it has been really nice. It is so worm and finnaly I can walk outside without a jacket'];
         ['Yes! I can not wait to see the family around the table. It has been a rush but everything is prepared.'];
         ['Yes! Now he is good.The doctors did some tests and gave him some medication and he got better.'];
         ['Oh that is really good. Finally he got better!'];
         ['They are doing really well!.Their grades are very good and both seem to be making friends really easily!'];
         ['Oh that is really nice. It is really important they develop their social skills and also learn to work hard!'];
         ['Yes It was really scary but atleast it is over! Did you get affected or something? Atleast I was lucky and nothing went bad.'];
         ['Same for me. I was scared that something would happen but fortunately everything went good!'];
         ['Yes. The situation is really difficult there but atleast there are people donating to help.'];
         ['Yes that is right and also the state is planning already in the recover of the burnt area and to replant all those areas that got destroyed.'];
         ['Yes, I had to run from a place to another but in the end it all went great and I could not be happier!'];
         ['Really? That is amazing, I just hope to be able to do the same. Wish me luck!'];
         ['I think my cooking skills got better since last year. All dishes came out with a spectacular look. I just hope the taste matches.'];
         ['Wow look at you! Now I really want you to save me some of that aletria that I really like.'].
/***********************************************/
sentence_type(H,X):-
  define_type(X,H).

define_type(T,PH):-type(T),Z=..[T,PH,[]],call(Z).
/***********************************************/
chataway(Len):-
  chataway_aux(Len,2,[],_).

%%when user doesn't type a digit
  chataway_aux(Len,2,[],_):-
    not(digit(Len)),
    writeln("Please type a digit."),
    read(F),
    chataway_aux(F,2,[],_).
%%

%%when user doesn't type a value for length of conversation higher than 0
  chataway_aux(Len,2,[],_):-
    Len<1,
    writeln("Please type a value higher than 0."),
    read(F),
    chataway_aux(F,2,_,_).
%%

%%greeting and choose topics
  chataway_aux(Len,2,[],_):-
    findall(L,phrase(greeting_start,L),X),
    random_member(Greet,X),
    atomics_to_string(Greet,L),
    split_string(L,"!","",L1),
    printing(L1),
    %readln(_)
    LS is Len-1,
    find_topic(1,ST),
    chataway_aux(LS,0,ST,_).
%%

%%start conversation select topics
  %chataway_aux(_,0,[],_).
  chataway_aux(Len,0,[H|T],_):-
    digit(Len),
    Len>1,
    W=..[H,X],
    findall(Y,phrase(W,Y),X),
    random_member(L,X),
    interactions(L,_),
    %readln(_),
    find_topic(H,0,ST),
    L1 is Len-1,
    chataway_aux(L1,4,ST,_),
    chataway_aux(L1,0,T,_).
%%

%%process conversation
%%L-> general sub-topic ex:christmas_food/christmas_presents
%%[T|T0]-> sub_topic(s) inside topic ex:presents
%%H-> conversation type history ex:[bad,god,question_family...]

  chataway_aux(_,4,[],_).
  chataway_aux(Len,4,[T|T0],[H2|H]):-
    readln(_),
    Len>1,
    W=..[T,X],
    findall(L1,phrase(W,L1),X),
    get_type(H,L),
    semtrans(X,L,L3),
    append(X,[L3],L4),
    random_1(L4,L5),
    interactions(L5,H1),
    %readln(_),
    reverse(H1,H2),
    L1 is Len-1,
    chataway_aux(L1,4,T0,H).

%%end conversation

%%when length is higher that 1 but there is no more conversation
chataway_aux(_,0,[],_):-
  writeln("I have to go, sorry.Goodbye!"),
  writeln("No problem, goodbye. Take care."),abort.


%%when length is equal to 1
chataway_aux(1,_,_,_):-
  writeln("I have to go, sorry.Goodbye!"),
  writeln("No problem, goodbye. Take care."),abort.
%%.
%%when length is equal to 1
chataway_aux(1,4,[_],_):-
  writeln("I have to go, sorry.Goodbye!"),
  writeln("No problem, goodbye. Take care."),abort.
chataway_aux(1,0,_,_):-
  writeln("I have to go, sorry.Goodbye!"),
  writeln("No problem, goodbye. Take care."),abort.
%%.
%%%

%%%decides what type of answer to choose
semtrans([],_,_).
semtrans([[H1,H2,H3]|T],Type,F):-
  findall(Type1,sentence_type([H2],Type1),[L]),
  ( Type==L -> append([H1,H2,H3],[],F),!
  ;
  semtrans(T,Type,F)).
%%%
/*********************************************/
/*filters*/
/***************************************/
/*Verify if it is digit*/
digit(L):-number(L).

downcase_list(L,X):-
  maplist(downcase_atom,L,X).
/******************************************/
%choose topic to talk about
find_topic(H,0,L1):-
  (member(family,[H])->
  random_between(1,2,X),
  pick_nums(X,[family_grandpa,family_kids],L1));

  (member(weather,[H])->
  random_between(1,2,X),
  pick_nums(X,[weather_elsa,weather_australia],L1));

  (member(christmas,[H])->
  random_between(1,2,X),
  pick_nums(X,[christmas_food,christmas_presents],L1)).


find_topic(1,L1):-
  random_between(1,3,X),
  pick_nums(X,[family,weather,christmas],L1).
  %random_member(L,[family,weather,christmas]),
  %find_topic(L1,0,X).

%choose all possible convesations inside a topic
%find_all_convs(W,L1):-
%  findall(X,phrase(W,X),L1).

%%choose number of sub-topics and witch sub-topics
pick_nums(Count, From, To) :-
  random_permutation(From, Scrambled),
  append(To, _, Scrambled),
  length(To, Count),!.
%%
/******************************************/
%%%receives the list of selected dialogue([I|T])
%%saves type of each phrase in history([H|R]) and prints the answers
%%
interactions([],_).
interactions([I|T],[H|R]):-
  findall(Type,sentence_type([I],Type),H),
  writeln(I),
  interactions(T,R).
%%%

%%find type of last phrase written
get_type([[[H],_,_]|_],H).
%%

%%choose between possible answers
random_1(L,X):- random(1,3,I),nth1(I,L,X).
%%

%%print for greeting
printing([]).
printing([L|LS]):-writeln(L),printing(LS).
%%
