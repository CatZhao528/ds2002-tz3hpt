#!/C:/Users/surface/anaconda3/python.exe

import os

# Prompt for user input
favorite_city = input("What is your favorite city? ")
hobby = input("What is your favorite hobby? ")
favorite_color = input("What is your favorite color? ")

# Set environment variables based on the input
os.environ["FAVORITE_CITY"] = favorite_city
os.environ["HOBBY"] = hobby
os.environ["FAVORITE_COLOR"] = favorite_color

# Print the environment variables
print("Favorite City: ", os.getenv("FAVORITE_CITY"))
print("Hobby: ", os.getenv("HOBBY"))
print("Favorite Color: ", os.getenv("FAVORITE_COLOR"))
