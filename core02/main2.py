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

def Plotting(Matrix, Num):
    '''Plot Postition On Graph'''
    for i in range(Num):
        plt.plot(Matrix[i][0], Matrix[i][1],
                 'ko', markerfacecolor=[1, 1, 1], markersize=18)
    return None

def Connections(Matrix, Num):
    '''Plotting Positions & Conections on Graph'''
    Plotting(Matrix, Num)
    for base in range(Num):
        for others in range(base, Num):
            plt.plot([Matrix[base][0], Matrix[others][0]], [Matrix[base][1], Matrix[others][1]])

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

    '''Synapses Apparently'''
    Synapses = [[random.uniform(-1, 1) for x in range(Num_Neu)] for y in range(Num_Neu)]

    '''Deliverable #1'''
    Plotting(Neu_Positions, Num_Neu)
    plt.show()

    '''Deliverable #2'''
    Connections(Neu_Positions, Num_Neu)
    plt.show()











