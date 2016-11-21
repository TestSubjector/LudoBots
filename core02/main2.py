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


def Weight_Con(Matrix, Num, Sign, Path):        #Path For Respective Deliverable
    '''Plotting Positions & Health(+/-) of Conections on Graph'''
    if Path == 1:
        for ele1 in range(Num):
            for ele2 in range(Num):
                if Sign[ele1][ele2] < 0:
                    plt.plot([Matrix[ele1][0], Matrix[ele2][0]], [Matrix[ele1][1],
                             Matrix[ele2][1]], color=[0.8, 0.8, 0.8])
                else:
                    plt.plot([Matrix[ele1][0], Matrix[ele2][0]], [Matrix[ele1][1],
                             Matrix[ele2][1]], color=[0, 0, 0])
    else:
        for ele1 in range(Num):
            for ele2 in range(Num):
                w = int(10 * abs(Sign[ele1][ele2])) + 1
                if Sign[ele1][ele2] < 0:
                    plt.plot([Matrix[ele1][0], Matrix[ele2][0]], [Matrix[ele1][1],
                             Matrix[ele2][1]], color=[0.8, 0.8, 0.8], linewidth=w)
                else:
                    plt.plot([Matrix[ele1][0], Matrix[ele2][0]], [Matrix[ele1][1],
                             Matrix[ele2][1]], color=[0, 0, 0], linewidth=w)


def Neu_Update(Neurons, Weight, Count, Num):
    '''Updating Neuron Values & Storing Progression'''
    for ele1 in range(Num):
        #To store new neuron value
        Temp = 0.0  
        for ele2 in range(Num):
            Temp += Neurons[Count][ele2] * Weight[ele1][ele2]
        if Temp < 0:
            Temp = 0
        elif Temp > 1:
            Temp = 1
        Neurons[Count+1][ele1] = Temp
    return Neurons

 

#Main
if __name__ == "__main__":

    '''Number of Neurons [Can be different then 10] [Increasing Versatility]'''
    Num_Neu = 10

    '''Neuron Centre'''
    Neu_Values = MatrixCreate(Num_Neu, 50)
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

    '''Delivarable #3'''
    Weight_Con(Neu_Positions, Num_Neu, Synapses, 1)
    plt.show()

    '''Deliverable #4'''
    Weight_Con(Neu_Positions, Num_Neu, Synapses, 2)
    plt.show()
    
    '''Deliverable 5 [Important]'''
    for Next in range(49):
        Neu_Values = Neu_Update(Neu_Values, Synapses, Next, Num_Neu)
    ImShow(Neu_Values)









