# ankit-data
I have solved this problem using two techniques.
1. validation
2. logistic regression

In validation method,I divided the train dataset into train and test by dividing in the ratio of 75:25.

As because the dependent variable is catagorical,I used logistic regression in make the model on the train set and then apply it 
on test set.

At last I run the confusion matrix to get the result,
	
	 Sensitivity : 0.8552          
            Specificity : 0.7051          
         Pos Pred Value : 0.8435          
         Neg Pred Value : 0.7237          
             Prevalence : 0.6502          
         Detection Rate : 0.5561          
   Detection Prevalence : 0.6592          
      Balanced Accuracy : 0.7802 
