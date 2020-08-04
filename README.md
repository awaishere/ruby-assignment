# ruby-assignment
For practicing ruby skills

Solution for the following problems,

Problem 1:
Alice is playing an arcade game and wants to climb to the top of the leaderboard and wants to track her ranking. The game uses Dense Ranking, so its leaderboard works like this:
The player with the highest score is ranked number 1 on the leaderboard.
Players who have equal scores receive the same ranking number, and the next player(s) receive the immediately following ranking number.
For example, the four players on the leaderboard have high scores of 100, 90, 90, and 80. Those players will have ranks 1, 2, 2, and 3, respectively. If Alice's scores are 70, 80 and 105, her rankings after each game are 4th, 3rd and 1st.
Function Description:
Name the function climbingLeaderboard. It should return an integer array where each element res[j] represents Alice's rank after the jth game.
climbingLeaderboard has the following parameter(s):
scores: an array of integers that represent leaderboard scores
alice: an array of integers that represent Alice's scores
Input Format:
The first line contains an integer n, the number of players on the leaderboard. 
The next line contains n space-separated integers scores[i], the leaderboard scores in decreasing order.
The next line contains an integer, m, denoting the number games Alice plays.
The last line contains m space-separated integers alice[j], the game scores.
Constraints:
1  n  2 105
1  m  2 105
0  scores[i]  109 for 0  i  n
0  alice[j]  109 for 0  j  n
The existing leaderboard, scores, is in descending order.
Alice's scores, alice, are in ascending order.


Subtask:
For 60% of the maximum score:
1  n  200
1  m  200
Output Format:
Print m integers. The jth integer should indicate Alice's rank after playing the jth game.


================================================

Problem 2:
Sherlock considers a string to be valid if all characters of the string appear the same number of times. It is also valid if he can remove just 1 character at 1 index in the string, and the remaining characters will occur the same number of times. Given a string s, determine if it is valid. If so, return YES, otherwise return NO.
For example, if s = abc, it is a valid string because frequencies are { a:1, b:1, c:1 }. So is s=abcc because we can remove one c and have 1 of each character in the remaining string. If s=abccc however, the string is not valid as we can only remove 1 occurrence of c. That would leave character frequencies of {a:1, b:1, c:2}.
Function Description:
Name the function isValid. It should return either the string YES or the string NO.
isValid has the following parameter(s):
s: a string
Input Format:
A single string s.
Constraints:
1  s  105
Each character s[i] ascii[a-z]
Output Format:
Print YES if string s is valid, otherwise, print NO.


================================================
