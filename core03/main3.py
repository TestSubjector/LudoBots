'''Evolving A Neural Network'''

#Libraries
import random
import copy
import matplotlib.pyplot as plt
from modules.mod1 import ImShow,VectAsLine

#Definded Function
def MatrixCreate(Rows, Columns):
    '''Intialize an array with element values being zero'''
    A = [[0 for x in range(Rows)] for y in range(Columns)]
    return A


def MatrixRandomize(V):
    ''' Get a random value between -1 & 1 back'''
    for x in range(len(V)):
        for y in range(len(V[x])):
            V[x][y] = random.uniform(-1, 1)
    return V


def Fitness(Num, Synapses, X):
    '''Quality of Neural Network'''
    Fit_Matrix = MatrixCreate(Num, Num)
    #Initial Neurons
    for Next in range(Num):
        Fit_Matrix[0][Next] = 0.5

    for Next in range(9):
        Fit_Matrix = Neu_Update(Fit_Matrix, Synapses, Next, Num)
    
    if X == 1 or X == 3:
        ImShow(Fit_Matrix)

    #Fitness 2
    if X == 2 or X == 3:
        diff = 0.0
        for i in range(1,9):
            for j in range(0,9):
                diff = diff + abs(Fit_Matrix[i][j]-Fit_Matrix[i][j+1])
                diff = diff + abs(Fit_Matrix[i+1][j]-Fit_Matrix[i][j]) 
        diff = diff/(2*8*9)
        return diff

    Des_Neu_Values = [0, 1, 0, 1, 0, 1, 0, 1, 0, 1]
    Actual_Neu_Values = Fit_Matrix[9][:]
    return Mean_Distance(Des_Neu_Values, Actual_Neu_Values, Num)


def MatrixProb(P, Prob):
    '''Assign different value based on probability'''
    P_Copy = copy.deepcopy(P)
    for x in range(len(P_Copy)):
        for y in range(len(P_Copy[x])):
            if Prob > random.uniform(-1, 1):
                P_Copy[x][y] = random.uniform(-1, 1)
    return P_Copy


def Mean_Distance(Aim, Actual, Num):
    '''Mean Squaed Error'''
    Loss = 0
    for Next in range(Num):
        Loss += (Aim[Next] - Actual[Next])**2
    return (1 - Loss/10)

   
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

#Main Area
if __name__ == "__main__":

    parent = MatrixCreate(10, 10)
    parent = MatrixRandomize(parent)
    Fit_vect = MatrixCreate(1, 5000)

    '''Number of Neurons | Default = 10'''
    Num_Neu = 10

    #Deliverable #1, #2, #3 -> Opt = 1 and Sim = 0
    #Deliverable #4, #5, #6 -> Opt = 3 and Sim = 2
    Opt = 3
    Sim = 2

    '''Hill Climer'''
    parentFitness = Fitness(Num_Neu, parent, Opt)
    for currentGeneration in range(0, 5000):
        print(currentGeneration, parentFitness)
        child = MatrixProb(parent, 0.05)
        childFitness = Fitness(Num_Neu, child, Sim)
        if childFitness > parentFitness:
            parent = child
            parentFitness = childFitness

        #Recording Fitness Growth
        Fit_vect[currentGeneration] = parentFitness

    Fitness(Num_Neu, parent, Opt)
    VectAsLine(Fit_vect)
    plt.show()







