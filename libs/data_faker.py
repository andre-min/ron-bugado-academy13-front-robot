import random
from faker import Faker

faker = Faker('pt_BR')

def centro_de_custo():
    centro_de_custo = [
        "Departamento de Vendas",
        "Departamento de Marketing",
        "Departamento de TI",
        "Departamento de Recursos Humanos",
        "Produção",
        "Logística",
        "Financeiro",
        "Jurídico",
        "Serviços Gerais",
        "Pesquisa e Desenvolvimento",
        "TI & Infraestrutura",
        "TI & Suporte",
        "Comercial",
        "Atendimento ao Cliente",
        "Gestão de Projetos",
        "Compras",
        "Armazenagem",
        "Transporte",
        "Gestão de Qualidade",
        "Treinamento e Capacitação",
        "Departamento de Auditoria",
        "Tecnologia - Desenvolvimento",
        "Sistemas de Informação",
        "Suprimentos",
        "Marketing Digital",
        "Publicidade e Propaganda",
        "Eventos",
        "Publicidade Institucional",
        "Gestão de Relacionamento com Clientes",
        "Investimentos",
        "Relações Públicas"
    ]
    return random.choice(centro_de_custo)


def diretoria():
    diretoria = [
        "Operassavbnvnvbn", "Contasa", "Diretoria&ogfapzfbfx", "cadastros", 
        "marketing", "wqewqewqe", "Operações&finançasad", "Financeiro&pl", "bla", "Operações", 
        "Operações &", "Marketing&ckb", "Marketing&u", "Marketing&pa", "TI&az", 
        "Executivo&mg", "Teste NaraQH", "Financeiro&su", "Marketing&ha", "Tecnologia&ast", "Marketing&es", 
        "Teste&DiretoriaDez", "Marketing&gu", "TI&ha", "qq", "Diretoria de Automacao", "Squad Blacklist", "Teste Nara atualizar H"
    ]
    return random.choice(diretoria)


def departamento():
    departamento = ["Departamento de Financeiro", "Departamento de Marketing", 
     "Departamento Comercial/Vendas", "Departamento de Atendimento ao Cliente", "Departamento de TI (Tecnologia da Informação)", 
     "Departamento de Compras", "Departamento de Logística", "Departamento de Produção", "Departamento de Qualidade", "Departamento Jurídico", 
     "Departamento de Pesquisa e Desenvolvimento (P&D)", "Departamento de Comunicação Interna", "Departamento de Relações Públicas (RP)", 
     "Departamento de Treinamento e Desenvolvimento", "Departamento de Segurança do Trabalho", "Departamento de Engenharia", "Departamento de Design", 
     "Departamento de Suprimentos", "Departamento de Auditoria Interna", "Departamento de Estratégia e Planejamento", "Departamento de Planejamento Financeiro", 
     "Departamento de Tecnologia e Inovação", "Departamento de Sustentabilidade e Meio Ambiente", 
     "Departamento de Desenvolvimento de Produtos", "Departamento de Gestão de Projetos", 
     "Departamento de Contabilidade", "Departamento de Expansão e Franquias", "Departamento de Eventos", 
     "Departamento de Relacionamento com Investidores"
    ]
    return random.choice(departamento)


def centro_de_custo():
    centro_de_custo = [
        "Banana", "dgdgdgd", "teste", "adsadasd", "huyutyu", "Marketing&M", "Marketing&Mn", 
        "pruebaf", "Master&et", "Responsável Financeiro&hu", "Contador&yi", "Administrador&el",
        "Admin&sh", "Rh&yi", "Rh&nl", "Recepcionista&uk", "Testes", "Testess", "Testeeess", "MariTest", 
        "Cadastro", "Administrador&sm", "&ASFSAF", "Master&ht", "Controladoria&mo", "Guest&om", 
        "Recepcionista&eo", "Rh&sl", "Financeiro&az", "Personal"
    ]
    return random.choice(centro_de_custo)


def gerar_telefone_sem_formatacao():
    return faker.msisdn()

def limpar_zipCode(zipCode):
    zipCode_limpo = zipCode.replace('.', '').replace('-', '').replace('/', '')
    return zipCode_limpo

def limpar_cnpj(cnpj):
    cnpj_limpo = cnpj.replace('.', '').replace('-', '').replace('/', '')
    return cnpj_limpo

def get_fake_company():
    company = {
        "nome_empresa": faker.company(),
        "cnpj": limpar_cnpj(faker.cnpj()),
        "telefone": gerar_telefone_sem_formatacao(),
        "email": faker.company_email(),
        "zipCode": limpar_zipCode(faker.postcode()),
        "city": faker.city(),
        "state": faker.state_abbr(),
        "district": faker.street_name(),
        "street": faker.street_name(),
        "number": faker.building_number(),
        "country": faker.city(),
        "descricao": faker.job(),
        "responsavel": faker.first_name(), 
    }
    return company

# Remove pontos de uma string
def limpar_ponto_nome(nome):
    nome_limpo = nome.replace('.', '')
    return nome_limpo

def limpar_cpf(cpf):
    cpf_limpo = cpf.replace('.', '').replace('-', '')
    return cpf_limpo

def get_fake_person():
    person = {
        "name": limpar_ponto_nome(faker.name()),
        "email": faker.email(),
        "cpf": limpar_cpf(faker.cpf()),
        "rg": faker.rg()
    }
    
    return person

def telefone_14_caracteres():
    numero_14_digitos = ''.join(str(random.randint(1, 9)) for _ in range(14))
    return numero_14_digitos
print(telefone_14_caracteres())

def telefone_16_caracteres():
    numero_16_digitos = ''.join(str(random.randint(1, 9)) for _ in range(16))
    return numero_16_digitos
print(telefone_16_caracteres())
