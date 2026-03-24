import sys

def main():
    print("Running test script....")
    x = 5

    if x != 5:
        print("test failed")
        sys.exit(1)

    print("Test Passed")

if __name__ == "__main__":
    main()