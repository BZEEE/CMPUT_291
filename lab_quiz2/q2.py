

import sqlite3


if __name__ == '__main__':
    print("\nWelcome to Question 2")
    stop = False
    while (not stop):
        userInput = input("Enter a minimum number of likes: ")
        if (userInput >= 0):
            stop = True

    query  = "select f.productID, f.brand " \
            "from food f, favourite v " \
            "where f.productID = v.productID " \
            "group by f.productID, f.brand " \
            "having count(distinct catname) >= {0}".format(userInput)
    conn = sqlite3.connect('./db.db')
    cursor = conn.cursor()

    cursor.execute(query)
    conn.commit()

    response = cursor.fetchall()

    tag1 = cursor.description[0][0]
    tag2 = cursor.description[1][0]


    # cursor = conn.cursor()
    cursor.execute("create table if not exists popularProducts({0} integer, {1} char(10))".format(tag1, tag2))
    # conn.commit()

    for i in range(len(response)):
        query = "INSERT INTO popularProducts({0}, {1}) Values({2}, '{3}')".format(tag1, tag2, response[i][0], response[i][1])
        print(query)
        cursor.execute(query)
        #conn.commit()

    conn.close()








