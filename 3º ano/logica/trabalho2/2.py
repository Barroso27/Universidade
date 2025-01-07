from pysmt.shortcuts import *
from pysmt.typing import BVType

def even(value, nBits):
    return Equals(BVExtract(value, 0, 0), BV(0, 1))

def gState(vars, prefix, i, nBits):
    state = {}
    for v in vars:
        state[v] = Symbol(f'{v}_{prefix}_{i}', BVType(nBits))
    return state

def init(state, a, b, nBits):
    return And(
        Equals(state['pc'], BV(0, nBits)), 
        Equals(state['x'], BV(a, nBits)), 
        Equals(state['y'], BV(b, nBits)),
        Equals(state['z'], BV(0, nBits))
    )

def error(s, nBits):
    max_value = BV((1 << nBits) - 1, nBits)  # Valor máximo representável com nBits
    return Or(
        BVUGT(s['x'], max_value),  # BVUGT verifica se s['x'] é maior que max_value
        BVUGT(s['y'], max_value),
        BVUGT(s['z'], max_value)
    )


def trans(curr, prox, nBits):
    t01 = And(
        Equals(curr['pc'], BV(0, nBits)), 
        NotEquals(curr['y'], BV(0, nBits)), 
        Equals(prox['pc'], BV(1, nBits)), 
        Equals(prox['x'], curr['x']), 
        Equals(prox['y'], curr['y']), 
        Equals(prox['z'], curr['z'])
    )
    t12 = And(
        Equals(curr['pc'], BV(1, nBits)), 
        even(curr['y'], nBits), 
        Equals(prox['pc'], BV(2, nBits)), 
        Equals(prox['x'], curr['x']), 
        Equals(prox['y'], curr['y']), 
        Equals(prox['z'], curr['z'])
    )
    t20 = And(
        Equals(curr['pc'], BV(2, nBits)), 
        Equals(prox['pc'], BV(0, nBits)),
        Equals(prox['x'], BVMul(curr['x'], BV(2, nBits))), 
        Equals(prox['y'], BVUDiv(curr['y'], BV(2, nBits))), 
        Equals(prox['z'], curr['z'])
    )
    t13 = And(
        Equals(curr['pc'], BV(1, nBits)), 
        Not(even(curr['y'], nBits)), 
        Equals(prox['pc'], BV(3, nBits)), 
        Equals(prox['x'], curr['x']), 
        Equals(prox['y'], curr['y']), 
        Equals(prox['z'], curr['z'])
    )
    t34 = And(
        Equals(curr['pc'], BV(3, nBits)), 
        Equals(prox['pc'], BV(4, nBits)), 
        Equals(prox['x'], curr['x']), 
        Equals(prox['y'], curr['y']), 
        Equals(prox['z'], curr['z'])
    )
    t40 = And(
        Equals(curr['pc'], BV(4, nBits)), 
        Equals(prox['pc'], BV(0, nBits)), 
        Equals(prox['x'], curr['x']), 
        Equals(prox['y'], BVSub(curr['y'], BV(1, nBits))), 
        Equals(prox['z'], BVAdd(curr['z'], curr['x']))
    )
    t05 = And(
        Equals(curr['pc'], BV(0, nBits)), 
        Equals(curr['y'], BV(0, nBits)), 
        Equals(prox['pc'], BV(5, nBits)), 
        Equals(prox['x'], curr['x']), 
        Equals(prox['y'], curr['y']), 
        Equals(prox['z'], curr['z'])
    )

    return Or(t01, t12, t13, t20, t34, t40, t05)

def genTrace(vars, init, trans, error, n, a, b, nBits):
    max_value = (1 << nBits) - 1
    product = a * b

    # Verificar se o produto a*b é maior que o máximo representável
    if product > max_value:
        print(f"Erro: O produto a * b ({product}) é maior que o valor máximo representável ({max_value}) com {nBits} bits.")
        return

    s = Solver()
    X = [gState(vars, 'X', i, nBits) for i in range(n+1)]
    
    # Inicializar o estado inicial
    I = init(X[0], a, b, nBits)
    
    # Transições e verificação de erro a cada iteração
    for i in range(n):
        # Transição e verificação de erro
        transition = trans(X[i], X[i+1], nBits)
        error_condition = error(X[i+1], nBits)
        
        # Verificar se a transição é satisfatível
        if s.solve([I, transition, Not(error_condition)]):
            print(f"Estado {i+1} válido:")
            for v in X[i+1]:
                print(f"    {v} = {s.get_value(X[i+1][v])}")
            # Atualiza o estado inicial para a próxima iteração
            I = And(I, transition)  # Atualiza I com a transição realizada
        else:
            print(f"Erro encontrado após a iteração {i+1}:")
            # Verificando os valores para o estado atual
            for v in X[i]:
                print(f"    {v} = {s.get_model().get_value(X[i][v])}" if s.get_model() else "Modelo não encontrado.")
            break
    else:
        # Condição final: z no último estado deve ser igual a a * b
        final_check = Equals(X[n]['z'], BV(a * b, nBits))
        if s.solve([I, final_check]):
            print(f"Condição final satisfeita: z = a * b = {a * b}.")
            for v in X[n]:
                print(f"    {v} = {s.get_model().get_value(X[n][v])}")
        else:
            print("Nenhuma solução que satisfaça a condição final (z == a * b) encontrada.")

vars = ['pc', 'x', 'y', 'z']
n = 10    # numero de passos
nbits = 8 # numeros com 8 bits
a = 4
b = 4
genTrace(vars, init, trans, error, n,a,b, nbits)
