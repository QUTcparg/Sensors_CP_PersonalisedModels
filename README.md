# Sensors_CP_PersonalisedModels
## Classify activities on new data
Activity classification models for children with cerebral palsy classified at GMFCS I-III can be found in directory [models](https://github.com/QUT-CPARG/Preschool_PAClassification/tree/master/models). The directory contains
machine learning models for [Group](https://github.com/QUT-CPARG/Preschool_PAClassification/tree/master/models/hip), and [Group-personalised](https://github.com/QUT-CPARG/Preschool_PAClassification/tree/master/models/hip%2Bwrist) models. Sample data for each model placement is also found in the model folder. The directory also contains a [Feature ID spreadsheet](https://github.com/QUT-CPARG/Preschool_PAClassification/blob/master/models/Feature%20ID.xlsx)
describing the feature naming protocol used for the models.  The accompanying [R script](https://github.com/QUT-CPARG/Preschool_PAClassification/blob/master/models/sample%20code%20to%20classify%20activity%20with%20each%20model.R) provides examples to implement each model using the sample data.  
  
All models classify activity into 1 of 3 activity classes:
1. 1 = Sedentary (SED)
2. 2 = Standing utilitarian movements (SUM)
3. 3 = Walking (WALK)
  
