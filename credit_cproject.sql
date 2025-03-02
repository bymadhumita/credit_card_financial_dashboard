drop table if exists cc_detail;
create table cc_detail(
    Client_Num INT,
    Card_Category VARCHAR(20),
    Annual_Fees INT,
    Activation_30_Days INT,
    Customer_Acq_Cost INT,
    Week_Start_Date DATE,
    Week_Num VARCHAR(20),
    Qtr VARCHAR(10),
    current_year INT,
    Credit_Limit DECIMAL(10,2),
    Total_Revolving_Bal INT,
    Total_Trans_Amt INT,
    Total_Trans_Ct INT,
    Avg_Utilization_Ratio DECIMAL(10,3),
    Use_Chip VARCHAR(10),
    Exp_Type VARCHAR(50),
    Interest_Earned DECIMAL(10,3),
    Delinquent_Acc VARCHAR(5)
);

CREATE TABLE cust_detail (
    Client_Num INT,
    Customer_Age INT,
    Gender VARCHAR(5),
    Dependent_Count INT,
    Education_Level VARCHAR(50),
    Marital_Status VARCHAR(20),
    State_cd VARCHAR(50),
    Zipcode VARCHAR(20),
    Car_Owner VARCHAR(5),
    House_Owner VARCHAR(5),
    Personal_Loan VARCHAR(5),
    Contact VARCHAR(50),
    Customer_Job VARCHAR(50),
    Income INT,
    Cust_Satisfaction_Score INT
);

select * from cc_detail;

copy cc_detail(Client_Num,Card_Category,Annual_Fees,Activation_30_Days,Customer_Acq_Cost,Week_Start_Date,
Week_Num,Qtr,current_year,Credit_Limit,Total_Revolving_Bal,Total_Trans_Amt,Total_Trans_ct,
Avg_Utilization_Ratio,Use_Chip,Exp_Type,Interest_Earned,Delinquent_acc)
from 'C:\Users\Chandan\Desktop\creditcardproject\credit_card.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', QUOTE '"');

copy cust_detail( Client_Num,Customer_Age,Gender,Dependent_Count,Education_Level,
Marital_Status,state_cd,Zipcode,Car_Owner,House_Owner,Personal_loan,contact,Customer_Job,Income,
Cust_Satisfaction_Score
)from 'C:\Users\Chandan\Desktop\creditcardproject\customer.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', QUOTE '"');

select * from cust_detail;

SELECT usename FROM pg_user;









