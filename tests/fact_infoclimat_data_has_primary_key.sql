-- {{ config(severity = "error") }}
-- Vérifier que chaque ID de fact_infoclimat_data est unique (clé primaire)
SELECT id, COUNT(*) as cnt
FROM {{ ref('fact_infoclimat_data') }}
GROUP BY id
HAVING COUNT(*) > 1
