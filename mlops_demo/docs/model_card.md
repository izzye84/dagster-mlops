---
language: en
license: Neurospace ApS
---
# Model Card for Predictive Maintenance on Component 7

## Model Description
This model estimates weather the given component has failed or not,
based on input data from ['Air temperature [K]', 'Process temperature [K]', 'Rotational speed [rpm]', 'Torque [Nm]']

## Development Team

| Development Information  | Text                                               |
| -------------------------|----------------------------------------------------|
| Development Team         | René Petersen                                      |
| Development Organisation | Neurospace ApS <br> Nydamsvej 17 <br> 8362 Hørning |
| Customer Team            | Answer is always 42                                |
| Customer Organisation    | 42 Data Stream Boulevard, Innova City, CA 90210    |
| Supporting e-mail        | support@abc.dk                                     |

## Intended Use

| Text                      | Information                                 |
|---------------------------|---------------------------------------------|
| Primarily Intended Use    | Predictive maintenance on component 7       |
| Primarily Intended Users  | Operators in control room                   |
| Out of Scope applications | Predictive maintenance on other components  |

## Model Details

| Model details | Text |
|---------------|------|
| Model Date | 19/12/2025 |
| Model Type | RandomForestClassifier |
| Model Version | 0.0.1 |
| Training Duration | 0.38 minutes (22.8 seconds) |
| Scheduled Retraining date | 2025/08/10 |
| Expected lifetime | 2027/10/2 |

### Model Architecture
![RandomForestArchitecture](img/Figure_1.png)


| Parameter   | Params                                                       |
|-------------|--------------------------------------------------------------|
| n_estimator | 10               |
| max_depth   | None                  |
| min_samples_split   | 5  |
| min_samples_leaf   | 1    |
| max_features   | sqrt            |

## Training Data
The model is trained on 29504 observations, and tested on 12646 observations

Model is dependent on the following features:
['Air temperature [K]', 'Process temperature [K]', 'Rotational speed [rpm]', 'Torque [Nm]']

### Example input data
|   Air temperature [K] |   Process temperature [K] |   Rotational speed [rpm] |   Torque [Nm] |
|----------------------:|--------------------------:|-------------------------:|--------------:|
|                 298.1 |                     308.6 |                     1551 |          42.8 |
|                 298.1 |                     308.6 |                     1551 |          42.8 |
|                 298.1 |                     308.6 |                     1551 |          42.8 |
|                 298.1 |                     308.6 |                     1551 |          42.8 |
|                 298.1 |                     308.6 |                     1551 |          42.8 |
|                 298.1 |                     308.6 |                     1551 |          42.8 |
|                 298.1 |                     308.6 |                     1551 |          42.8 |
|                 298.1 |                     308.6 |                     1551 |          42.8 |
|                 298.2 |                     308.7 |                     1408 |          46.3 |
|                 298.2 |                     308.7 |                     1408 |          46.3 |

### Example output data (0 is good, 1 is failure)
|   Target |
|---------:|
|        0 |
|        0 |
|        0 |
|        0 |
|        0 |
|        0 |
|        0 |
|        0 |
|        0 |
|        0 |

## Training/Test split

| Dataset  | Number             | Percentage of dataset                                                   |
|----------|--------------------|-------------------------------------------------------------------------|
| Training | 29504 | 70.00%  |
| Test     | 12646  | 30.00%   |


## Number of representatives in train and test

| Dataset  | Number of normal components          | Number of failure components       |
|----------|--------------------------------------|------------------------------------|
| Training | 28729  | 775 |
| Test     | 12308    | 338   |


### Bias in training data

| Source       | Bias |
|--------------|------|
| Input Data   | [ ]  |
| Data Leakage | [ ]  |
| Labeling     | [ ]  |
| Test Data    | [ ]  |
| Evaluation   | [ ]  |

Bias-effect is considered Neutral, as sensor data is expected to be biased with the same amount of noise.

## Validation of model
The table below presents the accuracy of the training and test data

| Dataset | Accuracy               |
|---------|------------------------|
| Train   | 100.00% |
| Test    | 100.00%  |

Below is presented Test Confusion Matrix


|                  | True Normal        | True Failure       |
|------------------|--------------------|--------------------|
|Predicted Normal  | 12308 | 0 |
|Predicted Failure | 0 | 338 |

## Metrics and Limitations

**When component 7 is under service**


**Faulty input data**

