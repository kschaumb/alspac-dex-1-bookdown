library(ordinal)
load('data/glm_mice_girls/glm_mice_girls.Rdata')
clmm_mice_boys <- mi.res
rm(mi.res)

age_1_ewl_girls <- with(clmm_mice_girls, clmm(formula = as.factor(exercise_wtloss) ~ age_adjust + (1|id)))
save(age_1_ewl_girls, file = 'Age_1_EWL_girl_model')

covs_2_ewl_girls <- with(clmm_mice_girls, clmm(formula = as.factor(exercise_wtloss) ~ age_adjust + parent_highest_occupation + bmi_z_bestavail + (1|id)))
save(covs_2_ewl_girls, file = 'Covs_2_EWL_girl_model')

covs_3_ewl_girls <- with(clmm_mice_girls, clmm(formula = as.factor(exercise_wtloss) ~ age_adjust + parent_highest_occupation + bmi_z_bestavail + fear_wtgain_14 + body_sat_mean_14_std + ti_mean_14_std + (1|id)))
save(covs_3_ewl_girls, file = 'Covs_3_EWL_girl_model')

covs_4_ewl_girls <- with(clmm_mice_girls, clmm(formula = as.factor(exercise_wtloss) ~ age_adjust + parent_highest_occupation + bmi_z_bestavail + fear_wtgain_14 + body_sat_mean_14_std + ti_mean_14_std + age_adjust*bmi_z_bestavail + age_adjust*fear_wtgain_14 + age_adjust*body_sat_mean_14_std + age_adjust*ti_mean_14_std + (1|id)))
save(covs_4_ewl_girls, file = 'Covs_4_EWL_girl_model')

load('data/glm_mice_boys/glm_mice_boys.Rdata')
clmm_mice_boys <- mi.res
rm(mi.res)

age_1_ewl_boys <- with(clmm_mice_boys, clmm(formula = as.factor(exercise_wtloss) ~ age_adjust + (1|id)))
save(age_1_ewl_boys, file = 'Age_1_EWL_boy_model')

covs_2_ewl_boys <- with(clmm_mice_boys, clmm(formula = as.factor(exercise_wtloss) ~ age_adjust + parent_highest_occupation + bmi_z_bestavail + (1|id)))
save(covs_2_ewl_boys, file = 'Covs_2_EWL_boy_model')

covs_3_ewl_boys <- with(clmm_mice_boys, clmm(formula = as.factor(exercise_wtloss) ~ age_adjust + parent_highest_occupation + bmi_z_bestavail + fear_wtgain_14 + body_sat_mean_14_std + ti_mean_14_std + (1|id)))
save(covs_3_ewl_boys, file = 'Covs_3_EWL_boy_model')

covs_4_ewl_boys <- with(clmm_mice_boys, clmm(formula = as.factor(exercise_wtloss) ~ age_adjust + parent_highest_occupation + bmi_z_bestavail + fear_wtgain_14 + body_sat_mean_14_std + ti_mean_14_std + age_adjust*bmi_z_bestavail + age_adjust*fear_wtgain_14 + age_adjust*body_sat_mean_14_std + age_adjust*ti_mean_14_std + (1|id)))
save(covs_4_ewl_boys, file = 'Covs_4_EWL_boy_model')