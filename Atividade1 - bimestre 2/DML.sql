use avaliacao_22b;

 -- Inserir um novo Livro
INSERT INTO Livros(titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma) VALUES 
('As Crônicas de Nárnia', 'C.S Lewis', 1950, true, 'Fantasia', '978-0064471190', 'Harper Collins', 768, 'Inglês');

 -- Inserir mútiplos livros
INSERT INTO Livros(titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma) VALUES 
('Cem anos de solidão', 'Gabriel Garcia Marquez', 1967, true, 'Ficção', '978-0241968581', 'Penguin Books', 422, 'Espanhol');
INSERT INTO Livros(titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma) VALUES 
('Harry Potter e a pedra filosofal', 'J.K Rowlling', 1977, true, 'Fantasia', '978-0439708180', 'Bloomsbury', '309', 'Inglês');
INSERT INTO Livros(titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma) VALUES 
('O Senhor dos anéis: A Sociedade do Anel', 'J.R.R. Tolkien', 1954, true, 'Fantasia', '978-0618640157', 'HarperCollins', '423', 'Inglês');

 -- Inserir livro com categoria específica
 INSERT INTO Livros
 values(null, 'A Corrida do ouro brasileira', 'Ana Martins', 2024, true, 'História', '978-0957835731', 'EditoraX', '500', 'Português');

 -- Atualizar disponibilidade 
use avaliacao_22b;

UPDATE Livros  
SET disponivel = FALSE  
WHERE ano_publicacao < 2000;

 -- Atualizar Editora
UPDATE Livros
SET editora = "Plume Books"
WHERE titulo = '1984';

 -- Atualizar Idioma
UPDATE Livros
set idioma = "Inglês"
where editora = 'Penguin Books';

 -- Atualizar Título
 UPDATE Livros
 SET titulo = "Harry Potter e a Pedra Filosofal (Edição Especial)"
 WHERE isbn = '978-0439708180';
 
 -- Deletar por Categoria
 
 DELETE FROM Livros WHERE categoria = 'Terror';
 
 -- Deletar por Idioma e Ano
 DELETE FROM Livros WHERE idioma = 'Francês' and ano_publicacao < 1970;
 
 -- Deletar Livro Específico
 DELETE FROM Livros WHERE titulo = 'As Crônicas de Nárnia';
 
 -- Deletar por Editora
 DELETE FROM Livros WHERE editora = '"Penguin Books';
 
 -- Selecionar com WHERE
 SELECT titulo, quantidade_paginas
 FROM Livros
 WHERE quantidade_paginas > 500; 
 
 -- Selecionar com GROUP BY
 SELECT COUNT(titulo), categoria
 FROM Livros 
 GROUP BY categoria
 order by count(titulo) ASC;
 
-- Selecionar com LIMIT
SELECT * FROM Livros
LIMIT 3;

-- Selecionar com COUNT e AVG
SELECT COUNT(quantidade_paginas) 
FROM Livros
WHERE categoria = 'Drama'

UNION 

SELECT AVG(quantidade_paginas)
FROM Livros 
WHERE categoria = 'Drama';


-- Selecionar com AVG
SELECT AVG(ano_publicacao)
FROM Livros
WHERE disponivel = true;

-- Selecionar com MAX e MIN
SELECT MAX(ano_publicacao)
FROM Livros;

SELECT MIN(ano_publicacao)
FROM Livros;

-- Selecionar com ORDER BY
SELECT ano_publicacao, titulo
FROM Livros
ORDER BY ano_publicacao, titulo DESC; 

-- Selecionar com UNION
SELECT titulo, idiioma
FROM Livros
WHERE idioma = 'Inglês'

UNION 

SELECT titulo, idioma 
FROM Livros 
WHERE idioma = 'Português';

-- Selecionar Livros de um Autor Específico
SELECT * FROM Livros 
WHERE autor = 'George Orwell'; 

 