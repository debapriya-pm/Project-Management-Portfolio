import random

play_again = "yes"

while play_again == "yes":

    secret_number = random.randint(1, 10)
    attempts = 0

    # Get the first guess
    while True:
        try:
            guess = int(input("Guess a number between 1 and 10: "))

            if guess < 1 or guess > 10:
                print("Please enter a number between 1 and 10.")
                continue

            break

        except ValueError:
            print("Please enter a valid number.")

    attempts = attempts + 1

    # Continue guessing until the number is correct or 5 attempts are used
    while guess != secret_number and attempts < 5:

        if guess < secret_number:
            print("Too low!")

        elif guess > secret_number:
            print("Too high!")

        # Get the next guess
        while True:
            try:
                guess = int(input("Guess again: "))

                if guess < 1 or guess > 10:
                    print("Please enter a number between 1 and 10.")
                    continue

                break

            except ValueError:
                print("Please enter a valid number.")

        attempts = attempts + 1

    # Display the result
    if guess == secret_number:
        print("Congratulations! You got it!")
        print("Number of attempts:", attempts)

    else:
        print("Game over! You used all 5 attempts.")
        print("The secret number was:", secret_number)

    play_again = input(
        "Do you want to play again? yes/no: "
    ).lower()

print("Thanks for playing!")