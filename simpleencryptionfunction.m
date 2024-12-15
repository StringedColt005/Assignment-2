% Author Name: Joshua Oliveira
% Email: olivei64@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: Simple Encryption Function
% Date: October 18, 2024

function encrypted_message = caesar_cipher(message, shift)
    % CIPHER!!!!
    encrypted_message = '';
    for i = 1:length(message)
        char_code = double(message(i)) + shift;
        if char_code > double('z')
            char_code = char_code - 26;
        end
        encrypted_message = [encrypted_message, char(char_code)];
    end
end

% Main scripting
message = input('Enter a message (lowercase letters only): ', 's');
shift = input('Enter a shift value (1-25): ');
encrypted_message = caesar_cipher(message, shift);
fprintf('Original Message: %s\n', message);
fprintf('Encrypted Message: %s\n', encrypted_message);
