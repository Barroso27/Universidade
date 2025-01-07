import ply.lex as lex
import sys

class MyLexer(object):
    tokens = [
        'INTEIRO',
        'ID',
        'IGUAL',
        'NUMERO',
        'EQUIVALENTE',
        'DIFERENTE',  
        'ADICAO',
        'SUBTRACAO',
        'MULTIPLICACAO',
        'DIVISAO',
        'RESTO',
        'MENOR',
        'MAIOR',
        'MENORIGUAL',
        'MAIORIGUAL',
        'ABREPARENTESES',
        'FECHAPARENTESES',
        'CITACAO',
        'NOVALINHA',
        'ASPAS'
    ]
    
    RESERVED = {
        'se': 'SE',
        'senao': 'SENAO',
        'enquanto': 'ENQUANTO',
        'faca': 'FACA',
        'imprimir': 'IMPRIMIR',
        'entrada': 'ENTRADA',
        'e': 'E',
        'ou': 'OU',
        'nao': 'NAO',
        'definir': 'DEFINIR',
        'retornar': 'RETORNAR',
    }
    
    literais = [':']
    
    tokens += list(RESERVED.values())
    
    t_ENTRADA = r'entrada'
    t_IMPRIMIR = r'imprimir'
    t_ADICAO = r'\+'
    t_SUBTRACAO = r'-'
    t_MULTIPLICACAO = r'\*'
    t_DIVISAO = r'/'
    t_RESTO = r'%'
    t_IGUAL = r'='
    t_EQUIVALENTE = r'=='
    t_DIFERENTE = r'!='
    t_MENOR = r'<'
    t_MAIOR = r'>'
    t_MENORIGUAL = r'<='
    t_MAIORIGUAL = r'>='
    t_OU = r'\|\|'
    t_E = r'\&\&'
    t_FECHAPARENTESES = r'\)'
    t_ABREPARENTESES = r'\('
    t_ASPAS = r'\"'
    
    def t_CITACAO(self, t):
        r'[^"\n]+'
        # Só retorna o token se estiver entre aspas
        if hasattr(self, 'in_string') and self.in_string:
            return t
        else:
            # Se não estiver entre aspas, tenta reconhecer como outro token
            if t.value in self.RESERVED:
                t.type = self.RESERVED[t.value]
                return t
            # Verifica se é um ID
            if t.value.isidentifier():
                t.type = 'ID'
                return t
            # Verifica se é um número
            if t.value.isdigit():
                t.type = 'NUMERO'
                t.value = int(t.value)
                return t
            
    def t_NUMERO(self, t):
        r'\d+'
        t.value = int(t.value)
        return t

    def t_INTEIRO(self, t):
        r'inteiro'  
        return t
    
    def t_ID(self, t):
        r'[a-zA-Z_][a-zA-Z0-9_]*'
        t.type = self.RESERVED.get(t.value, 'ID')
        return t
    
    def t_NOVALINHA(self, t):
        r'\n+'
        t.lexer.lineno += len(t.value)
        return t
    
    t_ignore = ' \t\r'  
    
    def t_error(self, t):
        print("Caractere ilegal:", t.value[0])
        t.lexer.skip(1)
        return
    
    def token(self):
        try:
            return next(self.token_stream)
        except StopIteration:
            return None
    
    def __init__(self, debug=0, optimize=0, lextab='lextab', reflags=0):
        self.lexer = lex.lex(module=self, debug=debug, optimize=optimize, 
                            lextab=lextab, reflags=reflags)
        self.token_stream = None
    
    def entrada(self, s):
        self.lexer.input(s)
        self.token_stream = iter(self.lexer.token, None)

lexer = MyLexer()

# Test code

data = '''
inteiro a = 10
inteiro b = 20
inteiro c = a + b
entrada("Digite um numero: ")
imprimir("O valor de c eh: ", c)
'''
lexer.entrada(data)
for token in lexer.token_stream:
    print(token)