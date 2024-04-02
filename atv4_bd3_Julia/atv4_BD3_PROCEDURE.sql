DELIMITER //

CREATE PROCEDURE ListarAlunosETurmas()
BEGIN
    SELECT 
        tbl_turma.sigla AS 'Sigla da Turma',
        tbl_turma.nome AS 'Nome da Turma',
        tbl_alunos.nome AS 'Nome do Aluno',
        tbl_alunos.telefone_aluno AS 'Telefone do Aluno',
        tbl_alunos.telefone_responsavel AS 'Telefone do Responsável',
        tbl_alunos.email AS 'E-mail do Aluno',
        tbl_alunos.data_nascimento AS 'Data de Nascimento'
    FROM 
        tbl_turma
    INNER JOIN 
        tbl_alunos ON tbl_turma.cod_turma = tbl_alunos.cod_turma;
END //

CREATE PROCEDURE ListarAlunoEspecifico(IN p_cod_aluno INT)
BEGIN
    SELECT 
        tbl_turma.sigla AS 'Sigla da Turma',
        tbl_turma.nome AS 'Nome da Turma',
        tbl_alunos.nome AS 'Nome do Aluno',
        tbl_alunos.telefone_aluno AS 'Telefone do Aluno',
        tbl_alunos.telefone_responsavel AS 'Telefone do Responsável',
        tbl_alunos.email AS 'E-mail do Aluno',
        tbl_alunos.data_nascimento AS 'Data de Nascimento'
    FROM 
        tbl_turma
    INNER JOIN 
        tbl_alunos ON tbl_turma.cod_turma = tbl_alunos.cod_turma
    WHERE 
        tbl_alunos.cod_aluno = p_cod_aluno;
END //

CREATE PROCEDURE ContarAlunos()
BEGIN
    SELECT COUNT(*) AS 'Total de Alunos'
    FROM tbl_alunos;
END //

DELIMITER ;