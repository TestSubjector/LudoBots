import matplotlib;
import numpy

def MatrixCreate(Rows,Columns):
    ''' Intialize an array with element values being zero '''
    A = [[0 for x in range(Rows)] for y in range(Columns)]
    return A
  
print(MatrixCreate(5,5));
 
 #def MatrixRandomize(V):
 #    ''' Get a random value between 0 & 1 back'''
     