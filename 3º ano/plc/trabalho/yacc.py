from lexer import lexer, MyLexer
import ply.yacc as yacc

tokens = MyLexer.tokens

def p_ProgramaInit(p):
    "ProgramaInit : Programa"
    parser.assembly = f"{p[1]}"
    
def p_Programa(p):
    "Programa : Declaracoes Corpo"
    p[0] = f"{p[1]} {p[2]}"

def p_Corpo(p):
    """Corpo : Processo NovaLinha
             | Corpo Processo NovaLinha
             | NovaLinha"""
    p[0] = "".join(p[1:])
    
    
def p_NovaLinha(p):
    """NovaLinha : NOVALINHA"""
    p.parser.lineno += 1
    p[0] = ''
    
def p_Declaracoes(p):
    """Declaracoes : Declaracao NovaLinha
                   | Declaracoes Declaracao NovaLinha"""
    p[0] = f'{p[1]}{p[2]}'

def p_Declaracao(p):
    '''Declaracao : INTEIRO ID
                 | INTEIRO ID IGUAL NUMERO
                 | INTEIRO ID IGUAL Entrada'''
    if len(p) == 3:
        parser.registos[p[2]] = 0
        p[0] = f"PUSHI 0"
    else:
        parser.registos[p[2]] = p[4]
        p[0] = f"PUSHI {p[4]}"

def p_Processo(p):
    '''Processo : If
                | Ciclo
                | Atributo
                | Imprimir'''
    p[0] = p[1]

def p_Entrada(p):
    '''Entrada : ENTRADA ABREPARENTESES Texto FECHAPARENTESES'''
    p[0] = f'{p[3]}'
    
def p_Imprimir(p):
    '''Imprimir : IMPRIMIR ABREPARENTESES Argumento FECHAPARENTESES'''
    p[0] = p[3]
    
def p_Argumento_Texto(p):
    '''Argumento : Texto'''
    p[0] = p[1]
    
def p_Argumento_Expressao(p):
    '''Argumento : Expressao'''
    p[0] = f'{p[1]}IMPRIME\nIMPRIME\n'
    
def p_Texto(p):
    '''Texto : '"' CITACAO '"' '''
    p[0] = f'PUSH "{p[2]}"\nENTRADA\n'

def p_If(p):
    '''If : SE ABREPARENTESES Cond FECHAPARENTESES ':' Corpo
          | SE ABREPARENTESES Cond FECHAPARENTESES ':' Corpo SENAO ':' Corpo'''
    if len(p) == 7:
        label_fim = gerar_label()
        p[0] = f"{p[3]}\nJF {label_fim}\n{p[6]}\n{label_fim}:"
    else:
        label_fim = gerar_label()
        label_else = gerar_label()
        p[0] = f"{p[3]}\nJF {label_else}\n{p[6]}\nJUMP {label_fim}\n{label_else}: {p[9]}\n{label_fim}:"

def p_Ciclo(p):
    '''Ciclo : FACA ':' Corpo ENQUANTO ABREPARENTESES Cond FECHAPARENTESES
             | ENQUANTO ABREPARENTESES Cond FECHAPARENTESES ':' Corpo'''
    label_inicio = gerar_label()
    label_fim = gerar_label()
    if len(p) == 8:  # do-while
        p[0] = f"{label_inicio}: {p[3]}\n{p[6]}\nJF {label_fim}\nJUMP {label_inicio}\n{label_fim}:"
    else:  # while
        p[0] = f"{label_inicio}: {p[3]}\nJF {label_fim}\n{p[6]}\nJUMP {label_inicio}\n{label_fim}:"

def p_Atributo(p):
    '''Atributo : ID IGUAL Expressao
                | ID IGUAL Entrada'''
    p[0] = f"{p[3]}\nSTORE {p[1]}\n"

def p_Expressao(p):
    '''Expressao : ID
                 | NUMERO
                 | Expressao ADICAO Expressao
                 | Expressao SUBTRACAO Expressao
                 | Expressao MULTIPLICACAO Expressao
                 | Expressao DIVISAO Expressao
                 | Expressao RESTO Expressao'''
    if len(p) == 2:
        if isinstance(p[1], int):
            p[0] = f"PUSHI {p[1]}\n"
        else:
            p[0] = f"PUSHG {p[1]}\n"
    else:
        op_map = {
            '+': 'ADICAO',
            '-': 'SUBTRACAO',
            '*': 'MULTIPLICACAO',
            '/': 'DIVISAO',
            '%': 'RESTO'
        }
        p[0] = f"{p[1]}{p[3]}{op_map[p[2]]}\n"

def p_Cond(p):
    '''Cond : Expressao Operadores Expressao
            | Cond Operadores Cond'''
    p[0] = f'{p[1]}{p[2]}{p[3]}'
    
def p_Operadores(p):
    '''Operadores : IGUAL
                 | EQUIVALENTE
                 | MAIOR
                 | MENOR
                 | MAIORIGUAL
                 | MENORIGUAL
                 | DIFERENTE
                 | E
                 | OU'''
    op_map = {
        '=': 'IGUAL',
        '==': 'EQUIVALENTE',
        '>': 'MAIOR',
        '<': 'MENOR',
        '>=': 'MAIOREQ',
        '<=': 'MENOREQ',
        '!=': 'DIFERENTE',
        '&&': 'AND',
        '||': 'OU'
    }
    p[0] = f"{op_map[p[1]]}\n"

def p_error(p):
    if p:
        print(f"Erro de sintaxe na linha {p.lineno}")
        parser.sucesso = False
    else:
        print("Erro de sintaxe no final do arquivo")
        parser.sucesso = False
  
contador = 0
  
def gerar_label():
    global contador
    contador += 1
    return f"LABEL_{contador}"

# Initialize parser
parser = yacc.yacc(start="ProgramaInit")
parser.assembly = ""
parser.registos = {}
parser.sucesso = True

def compilar(data):
    resultado = parser.parse(data, lexer=lexer)
    if parser.sucesso:
        print("Compilado com sucesso")
        print("Assembly gerado:")
        print(parser.assembly)
        with open('teste.vm', 'w') as f:
            f.write(parser.assembly)
        print("Arquivo gerado: teste.vm")
    else:
        print("Erro na compilação")
    return resultado

if __name__ == "__main__":
    data = '''
inteiro a = 10
inteiro b = 20
inteiro c = a + b
entrada("Digite um numero: ")
imprimir("O valor de c eh: ", c)
'''
    compilar(data)