<#
Program Name : Rock, Paper, Scissors
Date: <1/19/2023
Author: Jared Meldrum
Corse: CIT361
I, Jared Meldrum, affirm that I wrote this script as original work completed by me.
#> 

#create variable that picks a random choice for the computer 
do
{
$options = 'rock', 'paper', 'scissors'
$option = $options|Get-Random 
$round =$round + 1

$selection = Read-Host "Please choose rock, paper, or scissors"

switch -Wildcard ($selection){
    {$_-eq'paper' -or $_-like 'p*'}{'You choose paper'}
    {$_-eq'rock' -or $_-like 'r*'} {'You choose rock'}
    {$_-eq'scissors' -or $_-like 's*'} {'You choose scissors'}
    default {'Invalid input'}
}
#Compare the user input to the random selection and determine a winnder
    if ($option -eq $selection){
        Write-Host 'It''s'' a tie!' 
        #show the current score
        write-host 'Current score'$userscore
        #show what round it is
        write-host 'Round' $round -ForegroundColor Green
    }
    elseif (($selection -eq'rock') -and ($option -eq 'scissors')) {
        write-host ' You win!' -ForegroundColor Green
        $userscore = $userscore + 1
        write-host 'Current score'$userscore
        write-host 'Round' $round -ForegroundColor Green
    }
    elseif (($selection -eq 'paper') -and ($option -eq 'rock' )) {
        write-host ' You win!' -ForegroundColor Green
        $userscore = $userscore + 1
        write-host 'Current score'$userscore
        write-host 'Round' $round -ForegroundColor Green
    }
    elseif (($selection -eq 'scissors') -and ($option -eq 'paper' )) {
        write-host ' You win!' -ForegroundColor Green
        $userscore = $userscore + 1
        write-host 'Current score'$userscore
        write-host 'Round' $round -ForegroundColor Green
    }
    else{
        Write-Host 'Sorry, you lose' -ForegroundColor Red
        $cscore = $cscore + 1 
        write-host 'Current score'$userscore
        write-host 'Round' $round -ForegroundColor Green
    } 
} 
#Determine the winner of the match from based off of points and the number of rounds
until (($round -eq 3)-or($userscore -eq 2) -or($cscore -eq 2))
    if ($userscore -gt $cscore){
        Write-host 'You win, with a score of'$userscore' to the computers score of ' $cscore'.' -ForegroundColor Green
    }
    elseif ($userscore -eq $cscore) {
        write-host 'You tie, with a score of'$userscore' to the computers score of ' $cscore'.'
    }
    else{
        Write-Host 'You lose, with a score of '$userscore' to the computers score of '$cscore'.' -ForegroundColor Red
    }
#ask the user if they want to play the again. Breaks on anything but a y but won't restart.
$playagain = Read-Host "Would you like to play again? Press y for yes and any other key to exit"
if($playagain -ne 'y'){
    break
}
else{
    rps.ps1
}

