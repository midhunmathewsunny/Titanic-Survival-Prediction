
# Module to read data

path = "https://raw.githubusercontent.com/midhunmathewsunny/Titanic-Survival-Prediction/master/"
train_filename = "train.csv"
test_filename = "test.csv"
train_column_types <- c('integer',   # PassengerId
                        'factor',    # Survived 
                        'factor',    # Pclass
                        'character', # Name
                        'factor',    # Sex
                        'numeric',   # Age
                        'integer',   # SibSp
                        'integer',   # Parch
                        'character', # Ticket
                        'numeric',   # Fare
                        'character', # Cabin
                        'factor'     # Embarked
                    )
test_column_types = train_column_types[-2]
missing_types = c("NA","")

train_raw = readdata(path,train_filename,train_column_types,missing_types)
test_raw = readdata(path,test_filename,test_column_types,missing_types)

rm(readdata,train_column_types,train_filename,test_filename,test_column_types,path,missing_types)

#