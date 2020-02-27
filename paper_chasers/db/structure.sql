
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `comparisons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comparisons` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `supplied_name` varchar(255) DEFAULT NULL,
  `user_id` bigint NOT NULL,
  `degree_program_id` bigint NOT NULL,
  `institution_id` bigint NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_comparisons_on_user_id` (`user_id`),
  KEY `index_comparisons_on_degree_program_id` (`degree_program_id`),
  KEY `index_comparisons_on_institution_id` (`institution_id`),
  CONSTRAINT `fk_rails_5218446a90` FOREIGN KEY (`degree_program_id`) REFERENCES `degree_programs` (`id`),
  CONSTRAINT `fk_rails_a27d3c02c3` FOREIGN KEY (`institution_id`) REFERENCES `institutions` (`id`),
  CONSTRAINT `fk_rails_b1253cb401` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `cost_and_financial_aid_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cost_and_financial_aid_profiles` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `institution_id` bigint NOT NULL,
  `percent_awarded_fin_aid` int DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `percent_awarded_fed_state_local_grant` int DEFAULT NULL,
  `average_amount_fed_state_local_grant` int DEFAULT NULL,
  `percent_awarded_student_loans` int DEFAULT NULL,
  `average_student_load_amount` int DEFAULT NULL,
  `percent_awarded_federal_loans` int DEFAULT NULL,
  `average_federal_loan_amount` int DEFAULT NULL,
  `sti_store` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_cost_and_financial_aid_profiles_on_institution_id` (`institution_id`),
  CONSTRAINT `fk_rails_4aaa32a97e` FOREIGN KEY (`institution_id`) REFERENCES `institutions` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `degree_programs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `degree_programs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `credit_level` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `detailed_graduation_rate_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detailed_graduation_rate_profiles` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `institution_id` bigint NOT NULL,
  `grad_rate_total_cohort` int DEFAULT NULL,
  `pell_grant_recipients_grad_rate_in_150_percent_normal_time` int DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `grad_rate_men` varchar(255) DEFAULT NULL,
  `grad_rate_women` varchar(255) DEFAULT NULL,
  `subsidized_stafford_loan_recipients_not_receiving_pell_grants` int DEFAULT NULL,
  `did_not_receive_pell_grants_or_subsidized_stafford_loans` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_detailed_graduation_rate_profiles_on_institution_id` (`institution_id`),
  CONSTRAINT `fk_rails_f01e69fda2` FOREIGN KEY (`institution_id`) REFERENCES `institutions` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorites` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `favorable_id` bigint DEFAULT NULL,
  `favorable_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_favorites_on_user_id_and_favorable_id_and_favorable_type` (`user_id`,`favorable_id`,`favorable_type`),
  KEY `index_favorites_on_user_id` (`user_id`),
  KEY `index_favorites_on_favorable_id` (`favorable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `institution_to_degrees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `institution_to_degrees` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `med_debt` decimal(10,0) DEFAULT NULL,
  `mean_debt` decimal(10,0) DEFAULT NULL,
  `median_wage` decimal(10,0) DEFAULT NULL,
  `institutions_id` bigint DEFAULT NULL,
  `degree_programs_id` bigint DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_institution_to_degrees_on_institutions_id` (`institutions_id`),
  KEY `index_institution_to_degrees_on_degree_programs_id` (`degree_programs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `institutions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `institutions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `state_abbreviation` varchar(255) DEFAULT NULL,
  `total_enrollment` varchar(255) DEFAULT NULL,
  `sector_of_institition` varchar(255) DEFAULT NULL,
  `institutional_control_or_affiliation` varchar(255) DEFAULT NULL,
  `institutional_category` varchar(255) DEFAULT NULL,
  `hbcu` varchar(255) DEFAULT NULL,
  `degree_of_urbanization` varchar(255) DEFAULT NULL,
  `institution_size_category` int DEFAULT NULL,
  `open_enrollement` varchar(255) DEFAULT NULL,
  `tes_scores_considered` varchar(255) DEFAULT NULL,
  `highest_degree_offered` varchar(255) DEFAULT NULL,
  `carnegie_classification_basic` varchar(255) DEFAULT NULL,
  `carnegie_classification_undergraduate` varchar(255) DEFAULT NULL,
  `carnegie_classification_graduate` varchar(255) DEFAULT NULL,
  `nces_data_reporting_category` varchar(255) DEFAULT NULL,
  `percent_admitted` int DEFAULT NULL,
  `percent_admitted_men` int DEFAULT NULL,
  `percent_admitted_women` int DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `sti_store` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `student_demographic_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_demographic_profiles` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `institution_id` bigint NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `undergrad_total` int DEFAULT NULL,
  `undergrad_men` int DEFAULT NULL,
  `undergrad_women` int DEFAULT NULL,
  `american_indian_total_undergrad` int DEFAULT NULL,
  `asian_total_undergrad` int DEFAULT NULL,
  `black_or_african_american_total_undergrad` int DEFAULT NULL,
  `hispanic_total_undergrad` int DEFAULT NULL,
  `native_hawaiian_pacific_islander_total_undergrad` int DEFAULT NULL,
  `white_undergrad` int DEFAULT NULL,
  `graduate_student_total` int DEFAULT NULL,
  `graduate_student_men` int DEFAULT NULL,
  `graduate_student_woman` int DEFAULT NULL,
  `american_indian_total_grad` int DEFAULT NULL,
  `asian_total_grad` int DEFAULT NULL,
  `black_or_african_american_total_grad` int DEFAULT NULL,
  `hispanic_total_grad` int DEFAULT NULL,
  `native_hawaiian_pacific_islander_total_grad` int DEFAULT NULL,
  `white_grad` int DEFAULT NULL,
  `total_undergrad_under_25` int DEFAULT NULL,
  `total_undergrad_over_25` int DEFAULT NULL,
  `total_grad_under_25` int DEFAULT NULL,
  `total_grad_over_25` int DEFAULT NULL,
  `first_time_undergrad_us` int DEFAULT NULL,
  `first_time_undergrad_foreign` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_student_demographic_profiles_on_institution_id` (`institution_id`),
  CONSTRAINT `fk_rails_467f2f0982` FOREIGN KEY (`institution_id`) REFERENCES `institutions` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password_digest` varchar(255) DEFAULT NULL,
  `act_sat_score` int DEFAULT NULL,
  `parent_income` int DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `string` varchar(255) DEFAULT NULL,
  `interests` text,
  `race` varchar(255) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_users_on_email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

INSERT INTO `schema_migrations` (version) VALUES
('20200214011345'),
('20200214012653'),
('20200214012953'),
('20200214013138'),
('20200214014419'),
('20200214015446'),
('20200214015601'),
('20200214022726'),
('20200214025042'),
('20200214025451'),
('20200221120424'),
('20200221122226'),
('20200221122947'),
('20200221123811'),
('20200221124903'),
('20200221130917'),
('20200221214850'),
('20200221221452'),
('20200221222335');


