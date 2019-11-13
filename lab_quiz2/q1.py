
import sqlite3


if __name__ == '__main__':
    print("\nWelcome to Question 1")
    print("Enter (1) for 'domestic shorthair'")
    print("Enter (2) for 'british shorthair'")
    print("Enter (3) for 'bobtail'")
    stop = False
    while (not stop):
        userInput = input("Select one of the following breeds: ")
        if (userInput == 1):
            stop = True
        elif (userInput == 2):
            stop = True
        elif (userInput == 3):
            stop = True

    if (userInput == 1):
        userInput = "domestic shorthair"
    elif (userInput == 2):
        userInput = "british shorthair"
    elif (userInput == 3):
        userInput = "bobtail"

    query = "Select name, age, color From cats Where breed='" + userInput + "' Order By age DESC"

    conn = sqlite3.connect('./db.db')
    cursor = conn.cursor()

    cursor.execute(query)
    conn.commit()

    response = cursor.fetchall()
    for i in range(len(response)):
        print("\nname = {0}    age = {1}    color = {2}".format(response[i][0], response[i][1], response[i][2]))

    conn.close()
