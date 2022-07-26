-- Questão 1:

SELECT users.name, cities.name AS city
FROM users 
INNER JOIN cities  ON cities.id = users."cityId"  
WHERE cities.name = 'Rio de Janeiro'


--Questão 2:

SELECT u1.name as writerId, u2.name as recipientId, testimonials.message  FROM testimonials 
INNER JOIN users u1 on u1.id = testimonials."writerId"
INNER JOIN users u2 on u2.id = testimonials."recipientId"

--Questão 3:

SELECT users.id, users.name, courses.name AS course, schools.name AS school, educations."endDate"  FROM educations
INNER JOIN users ON users.id = educations."userId"
INNER JOIN courses on courses.id = educations."courseId"
INNER JOIN schools on schools.id = educations."schoolId"
WHERE "userId" = 30 AND status = 'finished'

--Questão 4:

SELECT users.id, users.name, roles.name AS role, companies.name as company FROM experiences
INNER JOIN users on users.id = "userId"
INNER JOIN companies on companies.id = "companyId"
INNER JOIN roles on roles.id = "roleId"
WHERE "userId" = 50 and "endDate" IS NULL