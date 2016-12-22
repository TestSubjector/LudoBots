'''The Hill Climber'''

# Libraries
import random
import copy
import matplotlib.pyplot as plt
from numpy import asarray


# Defined Functions
def matrix_create(rows, columns):
    '''Intialize an array with element values being zero'''
    mat = [[0 for x in range(rows)] for y in range(columns)]
    return mat


def matrix_randomize(mat):
    ''' Get a random value between 0 & 1 back'''
    for xenum in range(len(mat)):
        for yenum in range(len(mat[xenum])):
            mat[xenum][yenum] = random.random()
    return mat


def fitness(mat):
    '''Finding Mean of Elements'''
    store = 0
    for xenum in range(len(mat)):
        for yenum in range(len(mat[xenum])):
            store += mat[xenum][yenum]
    store = store / len(mat)
    return store


def matrix_prob(pmat, prob):
    '''Assign different value based on probability'''
    p_copy = copy.deepcopy(pmat)
    for xenum in range(len(p_copy)):
        for yenum in range(len(p_copy[xenum])):
            if prob > random.random():
                p_copy[xenum][yenum] = random.random()
    return p_copy


def vect_asline(mat):
    '''Graph Plotter'''
    plt.plot(mat)
    plt.ylabel('Fitness')
    plt.xlabel('Generation')


def imshow(gen):
    '''Show Statistical Image'''
    plt.imshow(gen, cmap=plt.cm.gray, aspect='auto', interpolation='nearest')
    # imshow works with only 2 dimensions (check via .ndim), so squeeze() used
    plt.show()


def hill_climber(case):
    '''Serial Hill Climber'''
    parent = matrix_create(1, 50)
    parent = matrix_randomize(parent)
    parent_fitness = fitness(parent)
    vect = matrix_create(1, 5000)       # For Fitness Storage
    genes = matrix_create(50, 5000)

    for current_generation in range(5000):
        # print(current_generation, parent_fitness)   # Checking Fitness
        child = matrix_prob(parent, 0.05)
        child_fitness = fitness(child)

        # Updating Parent
        if child_fitness > parent_fitness:
            parent = child
            parent_fitness = child_fitness

        # Updating Gene
        for i in range(50):
            genes[current_generation][i] = parent[i]

        # Recording Fitness Growth
        vect[current_generation] = parent_fitness

    if case == 1:
        return genes
    else:
        return vect

# Main Area [So that functions are usable in other files]
if __name__ == "__main__":

    # Plot Fitness Growth [Deliverable #1]
    vect_asline(hill_climber(2))
    plt.show()

    # Plot Multiple Cycles of Fitness Growth [Deliverable #2]
    for cycle in range(5):
        vect_asline(hill_climber(2))
    plt.show()

    # Plot Genes [Deliverable #3]
    # Converting to array
    GENE = (asarray(hill_climber(1)).squeeze()).T
    imshow(GENE)
