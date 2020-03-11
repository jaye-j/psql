-- SELECT *
-- FROM tech
-- INNER JOIN
-- project_uses_tech
-- ON
-- tech.id = project_uses_tech.tech_id
-- INNER JOIN
-- project
-- ON
-- project.id = project_uses_tech.project_id
-- WHERE
-- tech_id = 3;

-- SELECT project.name AS project_name, tech.name AS tech_name
-- FROM tech
-- INNER JOIN
-- project_uses_tech
-- ON
-- tech.id = project_uses_tech.tech_id
-- INNER JOIN
-- project
-- ON
-- project.id = project_uses_tech.project_id
-- WHERE
-- project_id = 4;

-- SELECT 
-- *
-- FROM 
-- tech
-- LEFT OUTER JOIN
-- project_uses_tech pt
-- ON
-- tech.id = pt.tech_id
-- WHERE pt.tech_id IS NULL;

-- SELECT 
-- project.name AS project_name, COUNT(tech.id) AS num_of_techs_used
-- FROM 
-- project
-- JOIN
-- project_uses_tech
-- ON
-- project.id = project_uses_tech.project_id
-- JOIN
-- tech 
-- ON tech.id = project_uses_tech.tech_id
-- GROUP BY project.name;

-- SELECT 
-- *
-- FROM 
-- project
-- LEFT OUTER JOIN
-- project_uses_tech
-- ON
-- project.id = project_uses_tech.project_id
-- WHERE project_uses_tech.project_id IS NULL;

-- SELECT 
-- tech.name AS tech_name, COUNT(project.id) AS num_of_projects_used
-- FROM 
-- tech
-- JOIN
-- project_uses_tech
-- ON
-- tech.id = project_uses_tech.tech_id
-- JOIN
-- project 
-- ON project.id = project_uses_tech.project_id
-- GROUP BY tech.name;

-- SELECT
-- project.name, tech.name
-- FROM
-- project
-- INNER JOIN
-- project_uses_tech
-- ON
-- project.id = project_uses_tech.project_id
-- INNER JOIN
-- tech
-- ON
-- tech.id = project_uses_tech.tech_id;

-- SELECT DISTINCT ON (name) tech FROM tech
-- INNER JOIN project_uses_tech pt ON tech.id = pt.tech_id;

-- SELECT DISTINCT ON (name) tech FROM tech
-- FULL OUTER JOIN project_uses_tech pt ON tech.id = pt.tech_id 
-- WHERE pt.tech_id IS NULL;

-- SELECT DISTINCT ON (name) p FROM project p
-- INNER JOIN project_uses_tech pt ON p.id = pt.project_id;

-- SELECT DISTINCT ON (name) p FROM project p
-- FULL OUTER JOIN project_uses_tech pt ON p.id = pt.project_id
-- WHERE pt.project_id IS NULL;

-- SELECT
-- p.name,
-- COUNT(t.id) AS tc 
-- FROM 
-- project p 
-- FULL OUTER JOIN project_uses_tech pt ON p.id = pt.project_id
-- FULL OUTER JOIN tech t ON t.id = pt.tech_id
-- GROUP BY
-- p.name
-- ORDER BY tc desc;

-- SELECT
-- t.name,
-- COUNT(p.id) AS pc
-- FROM 
-- project p
-- FULL OUTER JOIN project_uses_tech pt ON p.id = pt.project_id
-- FULL OUTER JOIN tech t ON t.id = pt.tech_id
-- GROUP BY
-- t.name
-- ORDER BY pc desc;

SELECT
COUNT(t.id)::decimal / MAX(p.id) AS avg_num_of_tech_used
FROM 
project p
FULL OUTER JOIN project_uses_tech pt ON p.id = pt.project_id
FULL OUTER JOIN tech t ON t.id = pt.tech_id;

