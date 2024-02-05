%Baha Türk
%220709071
%Computer Engineering
%CEN103/Introduction to Programming
%Project1
%Fall 2023
%Dr.Lecturer Deniz DAL

clc;
clear;

disp(' Welcome To The Multi-Level Guessing Game! ');

% Random number ranges by level
level1_max = 5;
level2_max = 10;
level3_max = 20;

level1_game_right = 3;
level2_game_right = 4;
level3_game_right = 5;

total_guess = 0;
exit_game = 0;
game_won = 0;

for level = 1:3
    disp([' Level ' num2str(level)]);    
    
    % Random number is generated
    min_number = 1;
    %guess_rights = 0;
    if  level == 1
        max_number = level1_max;
        total_game_right = level1_game_right;
        guess_rights = level1_game_right; % Guess rights are determined
    elseif level == 2
        max_number = level2_max;
        total_game_right = level2_game_right;
        guess_rights = level2_game_right; % Guess rights are determined
    else
        max_number = level3_max;
        total_game_right = level3_game_right;
        guess_rights = level3_game_right; % Guess rights are determined
    end
    
    true_number = randi([min_number, max_number]);
    
    while guess_rights > 0
        guess = input([' Please guess a number between ' num2str(min_number) ' and ' num2str(max_number) ':']);

        if guess == -1
            exit_game = 1;
            disp([' You finished the game. Level: ' num2str(level) ', Number of guesses: ' num2str(total_game_right - guess_rights)]);
            break;
        end
        
        % Range control of the number entered by the user
        if guess < min_number || guess > max_number
            disp('Please enter a value within range!');
            continue;
        end
        
        total_guess = total_guess + 1;
        
        if guess == true_number
            disp(' Congratulations! Right guess!');
            break;
        else
            guess_rights = guess_rights - 1;
            disp([' Wrong guess. Your remaining guess: ' num2str(guess_rights)]);
        end
    end
    
    % End game status check
    if guess_rights == 0 || exit_game == 1
        disp([' Game over. Correct number was ' num2str(true_number) '.']);
        break;
    end
    if guess_rights > 0 && level == 3
        disp([' Congratulations! You won the game. Total number of guesses: ' num2str(total_guess)]);
    end
end