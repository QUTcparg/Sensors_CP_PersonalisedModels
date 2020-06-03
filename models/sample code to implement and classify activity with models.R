#' Make predictions on new data with the activity classification models 
# install and load the following packages:
library(randomForest)
library(RCurl)


#'The "sample data" .RData file contains physical activity accelerometer features during simulated free-living for each 
#'placement to make predictions on children classified as either GMFCS I, II, or III.

#'The column labelled "activity" in each sample data file indicates the observed activity class.
#'The columns labelled "t.sed, t.sum, t.walk" represent the duration of each activity class in a 10s window
#'activity classes include: 
#'1) Sedentary; 2) Standing utilitarian movements; 3) Walking

# Load sample data for each placement
load(url("https://github.com/QUTcparg/Sensors_CP_PersonalisedModels/raw/master/models/sample%20data%20Group_personalised.RData"))

#'Each "Classifiers_Group" and "Classifiers_Group_Personalised" RData file contains the RF models for 
#'either Group or Group-personalised models for each of the following placements:
#'Wrist, Hip, Ankle, 
#'Hip-Ankle, Hip-Wrist, Wrist-Ankle,
#'and Hip-Wrist-Ankle#'

# Load Group models for each placement and make predictions using the Hip-Ankle Group RF Model:
load(url("https://github.com/QUTcparg/Sensors_CP_PersonalisedModels/raw/master/models/Classifiers_Group.RData"))
Group_prediction<-predict(hipankle,
                          sample_data$hipankle)

# Load Group models for each placement and make predictions using the Hip-Ankle Group-personalised RF Model:
# Note: each Group-personalised model contains a separate model for GMFCS I, II, and III
load(url("https://github.com/QUTcparg/Sensors_CP_PersonalisedModels/raw/master/models/Classifiers_Group_personalised.RData"))

#Make prediction with Hip-Ankle GMFCS I model

GroupPersonalised_GMFCSI_prediction<-predict(hipankle$hipankle_1,
                                             sample_data$hipankle[sample_data$hipankle$gmfcs==1,])

#Make prediction with Hip-Ankle GMFCS II model

GroupPersonalised_GMFCSII_prediction<-predict(hipankle$hipankle_2,
                                             sample_data$hipankle[sample_data$hipankle$gmfcs==2,])

#Make prediction with Hip-Ankle GMFCS III model

GroupPersonalised_GMFCSIII_prediction<-predict(hipankle$hipankle_3,
                                             sample_data$hipankle[sample_data$hipankle$gmfcs==3,])



#Combine group and group-personalised predictions with ground-truth and GMFCS level into one dataframe
compare<-sample_data$hipankle[,c("activity","gmfcs")]
compare$group_prediction<-Group_prediction

compare$group_personalised<-NA
compare$group_personalised[which(compare$gmfcs==1)]<-GroupPersonalised_GMFCSI_prediction
compare$group_personalised[which(compare$gmfcs==2)]<-GroupPersonalised_GMFCSII_prediction
compare$group_personalised[which(compare$gmfcs==3)]<-GroupPersonalised_GMFCSIII_prediction

table(compare$group_prediction,compare$activity)
table(compare$group_personalised,compare$activity)

