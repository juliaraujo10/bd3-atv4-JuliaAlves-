CREATE DATABASE atv3_bd3_Julia_Alves;

USE atv3_bd3_Julia_Alves;

CREATE TABLE tbl_turma (
    cod_turma INT(10) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    sigla VARCHAR(10) NOT NULL,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE tbl_alunos (
    cod_aluno INT(10) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    cod_turma INT(10) UNSIGNED NOT NULL,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) NOT NULL,
    rg VARCHAR(9) NOT NULL, 
    telefone_aluno VARCHAR(11),
    telefone_responsavel VARCHAR(11),
    email VARCHAR(100),
    data_nascimento TIMESTAMP(6),
    CONSTRAINT FK_TURMA_ALUNO FOREIGN KEY (cod_turma) REFERENCES tbl_turma(cod_turma)
);

CREATE TABLE tbl_disciplinas (
    cod_disciplinas INT(10) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    cod_turma INT(10) UNSIGNED NOT NULL,
    sigla VARCHAR(50),
    CONSTRAINT FK_TURMA_DISCIPLINA FOREIGN KEY (cod_turma) REFERENCES tbl_turma(cod_turma)
);

CREATE TABLE tbl_frequencia (
    cod_aluno INT(10) UNSIGNED NOT NULL,
    cod_disciplinas INT(10) UNSIGNED NOT NULL,
    data_chamada TIMESTAMP(6),
    frequencia DECIMAL(2,2),
    CONSTRAINT FK_ALUNO_FREQUENCIA FOREIGN KEY (cod_aluno) REFERENCES tbl_alunos(cod_aluno),
    CONSTRAINT FK_DISCIPLINA_FREQUENCIA FOREIGN KEY (cod_disciplinas) REFERENCES tbl_disciplinas(cod_disciplinas)
);


#DROP DATABASE atv3_bd3_Julia_Alves;