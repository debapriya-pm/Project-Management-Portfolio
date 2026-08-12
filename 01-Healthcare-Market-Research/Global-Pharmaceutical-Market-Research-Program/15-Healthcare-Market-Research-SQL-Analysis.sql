-- ============================================================
-- Healthcare Market Research SQL Analysis
-- ============================================================
-- Project:
-- Global Pharmaceutical Market Research Program
--
-- Dataset:
-- physician_survey
--
-- Records:
-- 500 synthetic physician survey responses
--
-- Purpose:
-- Demonstrate SQL-based analysis of healthcare market
-- research data using PostgreSQL.
--
-- IMPORTANT:
-- This dataset is fictional/synthetic and contains no
-- confidential client, patient, or participant information.
-- ============================================================


-- ============================================================
-- QUESTION 1
-- How many physicians are represented in each specialty?
-- ============================================================

SELECT 
    specialty,
    COUNT(*) AS physician_count
FROM physician_survey
GROUP BY specialty
ORDER BY physician_count DESC;


-- ============================================================
-- QUESTION 2
-- What are the most common primary adoption barriers?
-- ============================================================

SELECT
    primary_adoption_barrier,
    COUNT(*) AS barrier_count
FROM physician_survey
GROUP BY primary_adoption_barrier
ORDER BY barrier_count DESC;


-- ============================================================
-- QUESTION 3
-- Which specialties show the highest likelihood of adopting
-- a new treatment concept?
-- ============================================================

SELECT
    specialty,
    ROUND(AVG(likelihood_to_adopt), 2) AS avg_adoption_likelihood,
    COUNT(*) AS physician_count
FROM physician_survey
GROUP BY specialty
ORDER BY avg_adoption_likelihood DESC;


-- ============================================================
-- QUESTION 4
-- Does administrative burden appear to be associated with
-- likelihood to adopt?
-- ============================================================

SELECT
    administrative_burden_rating,
    ROUND(AVG(likelihood_to_adopt), 2) AS avg_adoption_likelihood,
    COUNT(*) AS physician_count
FROM physician_survey
GROUP BY administrative_burden_rating
ORDER BY administrative_burden_rating;


-- ============================================================
-- QUESTION 5
-- Does adoption likelihood vary by country and specialty?
-- ============================================================

SELECT
    country,
    specialty,
    ROUND(AVG(likelihood_to_adopt), 2) AS avg_adoption_likelihood,
    COUNT(*) AS physician_count
FROM physician_survey
GROUP BY country, specialty
ORDER BY country, avg_adoption_likelihood DESC;


-- ============================================================
-- QUESTION 6
-- What is the most common adoption barrier in each country?
--
-- ROW_NUMBER() ranks barriers within each country.
-- Rank 1 represents the most frequently reported barrier.
-- ============================================================

SELECT
    country,
    primary_adoption_barrier,
    barrier_count
FROM (
    SELECT
        country,
        primary_adoption_barrier,
        COUNT(*) AS barrier_count,
        ROW_NUMBER() OVER (
            PARTITION BY country
            ORDER BY COUNT(*) DESC
        ) AS rank
    FROM physician_survey
    GROUP BY country, primary_adoption_barrier
) ranked
WHERE rank = 1
ORDER BY country;


-- ============================================================
-- QUESTION 7
-- Which country + specialty segments show strong adoption
-- potential while maintaining a meaningful sample size?
--
-- Only segments with at least 15 physicians are included.
-- ============================================================

SELECT
    country,
    specialty,
    COUNT(*) AS physician_count,
    ROUND(AVG(likelihood_to_adopt), 2) AS avg_adoption_likelihood,
    ROUND(AVG(effectiveness_rating), 2) AS avg_effectiveness,
    ROUND(AVG(administrative_burden_rating), 2) AS avg_admin_burden
FROM physician_survey
GROUP BY country, specialty
HAVING COUNT(*) >= 15
ORDER BY avg_adoption_likelihood DESC;


-- ============================================================
-- QUESTION 8
-- How are treatment options perceived across key attributes?
-- ============================================================

SELECT
    primary_treatment,
    COUNT(*) AS physician_count,
    ROUND(AVG(effectiveness_rating), 2) AS avg_effectiveness,
    ROUND(AVG(safety_rating), 2) AS avg_safety,
    ROUND(AVG(convenience_rating), 2) AS avg_convenience,
    ROUND(AVG(overall_treatment_satisfaction), 2) AS avg_satisfaction
FROM physician_survey
GROUP BY primary_treatment
ORDER BY avg_effectiveness DESC;


-- ============================================================
-- QUESTION 9
-- Which unmet needs are most frequently reported within
-- each physician specialty?
-- ============================================================

SELECT
    specialty,
    primary_unmet_need,
    COUNT(*) AS physician_count
FROM physician_survey
GROUP BY specialty, primary_unmet_need
ORDER BY specialty, physician_count DESC;


-- ============================================================
-- RESEARCH INTERPRETATION NOTE
-- ============================================================
--
-- These analyses are descriptive and exploratory.
--
-- Results should not be interpreted as proof of causation.
-- In a real healthcare market research engagement, findings
-- would also be assessed in the context of:
--
-- * Sample design
-- * Statistical significance
-- * Market differences
-- * Physician segmentation
-- * Patient mix
-- * Potential response bias
-- * Research objectives
--
-- The purpose of this portfolio analysis is to demonstrate
-- the ability to translate healthcare research questions
-- into structured SQL analysis.
-- ============================================================
