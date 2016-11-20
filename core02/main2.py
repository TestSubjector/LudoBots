'''Artificial Neural Network'''

#Libraries
from modules.mod1 import *
import random
import math
import matplotlib.pyplot as plt

#Defined Functions
def InitialValues(Matrix):
    '''Give Neurons Initial Values'''
    for loop in range(Num_Neu):
        Matrix[0][loop] = random.random()
    return Matrix


def NeuronPositions(Matrix, Num):
    '''Compute Neuron Positions'''
    angle = 0.0
    angleUpdate = 2 * math.radians(180) / Num
    for i in range(Num):
        Matrix[i][0] = math.sin(angle)
        Matrix[i][1] = math.cos(angle)
        angle = angle + angleUpdate
    return Matrix

#Main
if __name__ == "__main__":

    '''Number of Neurons'''
    Num_Neu = 10

    '''Neuron Centre'''
    Neu_Values = MatrixCreate(Num_Neu,50)
    Neu_Values = InitialValues(Neu_Values)

    '''Neurons Positions in 2D'''
    Neu_Positions = MatrixCreate(2, Num_Neu)
    Neu_Positions = NeuronPositions(Neu_Positions, Num_Neu)












