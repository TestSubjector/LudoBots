import matplotlib
import random

def MatrixCreate(Rows,Columns):
    '''Intialize an array with element values being zero'''
    A = [[0 for x in range(Rows)] for y in range(Columns)]
    return A


def MatrixRandomize(V):
    ''' Get a random value between 0 & 1 back'''
    for x in range(len(V)):
        for y in range(len(V[x])):
            V[x][y] = random.random()
    return V

parent = MatrixCreate(1, 50) 
parent = MatrixRandomize(parent)
print(parent)