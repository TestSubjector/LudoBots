'''The Hill Climber'''

#Libraries
import random
import copy
import matplotlib.pyplot as plt
from numpy import asarray

#Defined Functions
def MatrixCreate(Rows, Columns):
    '''Intialize an array with element values being zero'''
    A = [[0 for x in range(Rows)] for y in range(Columns)]
    return A


def MatrixRandomize(V):
    ''' Get a random value between 0 & 1 back'''
    for x in range(len(V)):
        for y in range(len(V[x])):
            V[x][y] = random.random()
    return V

def Fitness(W):
    '''Finding Mean of Elements'''
    store = 0
    for x in range(len(W)):
        for y in range(len(W[x])):
            store += W[x][y]
    store = store / len(W)
    return store

def MatrixProb(P, Prob):
    '''Assign different value based on probability'''
    P_Copy = copy.deepcopy(P)
    for x in range(len(P_Copy)):
        for y in range(len(P_Copy[x])):
            if Prob > random.random():
                P_Copy[x][y] = random.random()
    return P_Copy

def VectAsLine(VL):
    plt.plot(VL)
    plt.ylabel('Fitness')
    plt.xlabel('Generation')
    plt.show()

#Main Area [So that functions are usable in other files]
if __name__ == "__main__":

#Serial Hill Climber
    def HillClimber(case):
        parent = MatrixCreate(1, 50)
        parent = MatrixRandomize(parent)
        parentFitness = Fitness(parent)
        vect = MatrixCreate(1, 5000)       #For Fitness Storage
        genes = MatrixCreate(50, 5000)

        for currentGeneration in range(5000):
           #print(currentGeneration, parentFitness)   #Checking Fitness
            child = MatrixProb(parent, 0.05)
            childFitness = Fitness(child)

            #Updating Parent
            if childFitness > parentFitness:
                parent = child
                parentFitness = childFitness

            #Updating Gene
            for i in range(50):
                genes[currentGeneration][i] = parent[i]

            #Recording Fitness Growth
            vect[currentGeneration] = parentFitness
        
        if case == 1:
            return genes
        else:
            return vect

    #Plot Genes
    Gene = (asarray(HillClimber(1)).squeeze()).T    #Converting to array

    plt.imshow(Gene, cmap = plt.cm.gray, aspect = 'auto', interpolation = 'nearest') 
    #imshow works with only 2 dimensions (check via .ndim), so squeeze() is used

    plt.show()

    #Plot Fitness Growth
    VectAsLine(HillClimber(2))
