# Sensors_CP_PersonalisedModels
## Classify activities on new data
Activity classification models for children with cerebral palsy classified at GMFCS I-III can be found in directory [models](https://github.com/QUTcparg/Sensors_CP_PersonalisedModels/tree/master/models). The directory contains
machine learning models for [Group](https://github.com/QUTcparg/Sensors_CP_PersonalisedModels/blob/master/models/Classifiers_Group.RData), and [Group-personalised](https://github.com/QUTcparg/Sensors_CP_PersonalisedModels/blob/master/models/Classifiers_Group_personalised.RData) models. [Sample data](https://github.com/QUTcparg/Sensors_CP_PersonalisedModels/blob/master/models/sample%20data.RData) for each model placement is also found in the model folder. The directory also contains a [Feature ID spreadsheet](https://github.com/QUTcparg/Sensors_CP_PersonalisedModels/blob/master/models/Feature%20ID.xlsx)
describing the feature naming protocol used for the models and the [annotated data](https://github.com/QUTcparg/Sensors_CP_PersonalisedModels/tree/master/models/annotated%20data) for each placement.  The accompanying [R script](https://github.com/QUTcparg/Sensors_CP_PersonalisedModels/blob/master/models/sample%20code%20to%20implement%20and%20classify%20activity%20with%20models.R) provides examples to implement each model using the sample data.  
  
All models classify activity into 1 of 3 activity classes:
1. 1 = Sedentary (SED)
2. 2 = Standing utilitarian movements (SUM)
3. 3 = Walking (WALK)
  
