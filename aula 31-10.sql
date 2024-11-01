1) Criar um banco de dados chamado escola e rodar o script dele.

2) Comandos para as seguintes pesquisas:
a) Todos os cursos da universidade.
b) Quais os nomes e telefones de alunos da cidade de S�o Carlos - SP em ordem DESC de nome.

select nome, telefone, from aluno where cidade = 'Sao Carlos - SP'

c) Quais os nomes de professores que foram contratados antes que 01/jan/1993.

select nome, admissao from professor where admissao <'01/01/1993'

d) Quais os nomes de alunos que iniciam com a letra 'J'.

select  * from aluno where nome like 'j%'

e) Quais os nomes das disciplinas do curso de Ci�ncia da Computa��o.

select disciplina.nome as Disciplina, curso.nome as Curso
from disciplina inner join disciplinacurso on disciplina.numdisp = disciplinacurso.numdisp inner join curso on disciplinacurso.numcurso=curso.numcurso
where curso.nome = 'ciencia da computacao'

f) Quais os nomes do cursos que possuem no curriculum a disciplina C�lculo Num�rico

select curso.nome
from curso inner join disciplinacurso on 
curso.numcurso=disciplinacurso.numcurso
inner join disciplina on disciplina.numdisp=disciplinacurso.numdisp
where disciplina.nome='Calculo Numerico'

g) Quais os nomes das disciplina que o aluno Marcos Jo�o Casanova cursou no 1� semestre de 1998.

select disciplina.nome as disciplina, aluno.nome as aluno, aula.semestre
from disciplina inner join aula on disciplina.numdisp=aula.numdisp
inner join aluno on aula.numaluno=aluno.numaluno
where aluno.nome = 'Marcos Joao Casanova' and aula.semestre='01/1998'

h) Quais os nomes de disciplinas que o aluno Ailton Castro foi reprovado.


select disciplina.nome as disciplina, aluno.nome, aula.nota
from disciplina inner join aula on disciplina.numdisp=aula.numdisp
inner join aluno on aluno.numaluno=aula.numaluno
where aluno.nome='Ailton Castro' and aula.nota<=7

i) Quais os nomes de alunos reprovados na disciplina de C�lculo Num�rico no 1� semestre de 1998.

select disciplina.nome as disciplina, aluno.nome, aula.nota
from disciplina inner join aula on disciplina.numdisp=aula.numdisp
inner join aluno on aluno.numaluno=aula.numaluno
where aula.nota<7 and disciplina.nome = 'Calculo Numerico'

j) Quais os nomes das disciplinas ministradas pelo prof. Ramon Travanti.

select * from professor

select disciplina.nome as disciplina_ministrada, professor.nome
from professor inner join aula on professor.numfunc=aula.numfunc
inner join disciplina on aula.numdisp=disciplina.numdisp
where professor.nome = 'Ramon Travanti'


k) Quais os nomes professores que j� ministraram aula de Banco de Dados.
l) Qual a maior e a menor nota na disciplina de C�lculo Num�rico no 1� semestre de 1998.
m) Quais aulas, nome de disciplina e nome de professores que cursaram o 1� semestre de 1998 em ordem ASC de aluno.
n) Quais nomes de aulas, nome de disciplina e notas do 1� semestre de 1998 no curso de Ci�ncia da Computa��o.
o) Qual a m�dia de notas do professor Marcos Salvador.
p) Quais nomes de alunos, nomes de disciplinas e notas que tiveram nota entre 5.0 e 7.0 em ordem de ASC de disciplina.
q) Qual a m�dia de notas da disciplina C�lculo Num�rico no 1� semestre de 1998.
r) Quantos alunos o professor Abgair teve no 1� semestre de 1998.
s) Qual a m�dia de notas e quantidade de aulas do aluno Edvaldo Carlos Silva.
t) Quais as m�dias por nome de disciplina de todos os cursos do 1� semestre de 1998 em ordem ASC de disciplina.
u) Quais as m�dias e quantidades das notas por nome de professor no 1� semestre de 1998.
v) Qual a m�dia por disciplina no 1� semestre de 1998 do curso do Ci�ncia da Computa��o
w) Qual foi quantidade de cr�ditos conclu�do (somente as disciplinas aprovadas) do aluno Edvaldo Carlos Silva.
x) Quais nomes de alunos e quantidade de cr�ditos que j� completaram 70 cr�ditos (somente os aprovados na disciplina).
y) Quais nomes de aulos, nome de disciplina e nome de professores que cursaram o 1� semestre de 1998 e pertencem ao curso
de ci�ncia da Computa��o que possuem nota superior � 8.0.
