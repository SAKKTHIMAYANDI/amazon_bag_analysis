#1
create database alumni;
use alumni;
#3
use alumni;
desc college_a_hs;
desc college_a_se;
desc college_a_sj;
desc college_b_hs;
desc college_b_se;
desc college_b_sj;
#6
CREATE VIEW college_a_hs_v AS
    (SELECT 
        *
    FROM
        college_a_hs
    WHERE
        RollNo IS NOT NULL
            AND LastUpdate IS NOT NULL
            AND Name IS NOT NULL
            AND FatherName IS NOT NULL
            AND MotherName IS NOT NULL
            AND Batch IS NOT NULL
            AND Degree IS NOT NULL
            AND PresentStatus IS NOT NULL
            AND HSDegree IS NOT NULL
            AND EntranceExam IS NOT NULL
            AND Institute IS NOT NULL
            AND Location IS NOT NULL); 
select * from college_a_hs_v;
#7
CREATE VIEW college_a_se_v AS
    (SELECT 
        *
    FROM
        college_a_se
    WHERE
        RollNo IS NOT NULL
            AND LastUpdate IS NOT NULL
            AND Name IS NOT NULL
            AND FatherName IS NOT NULL
            AND MotherName IS NOT NULL
            AND Batch IS NOT NULL
            AND Degree IS NOT NULL
            AND PresentStatus IS NOT NULL
            AND Organization IS NOT NULL
            AND Location IS NOT NULL); 
select * from college_a_se_v;
#8
CREATE VIEW college_a_sj_v AS
    (SELECT 
        *
    FROM
        college_a_sj
    WHERE
        RollNo IS NOT NULL
            AND LastUpdate IS NOT NULL
            AND Name IS NOT NULL
            AND FatherName IS NOT NULL
            AND MotherName IS NOT NULL
            AND Batch IS NOT NULL
            AND Degree IS NOT NULL
            AND PresentStatus IS NOT NULL
            AND Organization IS NOT NULL
            AND Designation IS NOT NULL
            AND Location IS NOT NULL); 
select * from college_a_sj_v;
#9
CREATE VIEW college_b_hs_v AS
    (SELECT 
        *
    FROM
        college_b_hs
    WHERE
        RollNo IS NOT NULL
            AND LastUpdate IS NOT NULL
            AND Name IS NOT NULL
            AND FatherName IS NOT NULL
            AND MotherName IS NOT NULL
            AND Branch IS NOT NULL
            AND Batch IS NOT NULL
            AND Degree IS NOT NULL
            AND PresentStatus IS NOT NULL
            AND HSDegree IS NOT NULL
            AND EntranceExam IS NOT NULL
            AND Institute IS NOT NULL
            AND Location IS NOT NULL); 
select * from college_b_hs_v;
#10
CREATE VIEW college_b_se_v AS
    (SELECT 
        *
    FROM
        college_b_se
    WHERE
        RollNo IS NOT NULL
            AND LastUpdate IS NOT NULL
            AND Name IS NOT NULL
            AND FatherName IS NOT NULL
            AND MotherName IS NOT NULL
            AND Branch IS NOT NULL
            AND Batch IS NOT NULL
            AND Degree IS NOT NULL
            AND PresentStatus IS NOT NULL
            AND Organization IS NOT NULL
            AND Location IS NOT NULL); 
select * from college_b_se_v;
#11
CREATE VIEW college_b_sj_v AS
    (SELECT 
        *
    FROM
        college_b_sj
    WHERE
        RollNo IS NOT NULL
            AND LastUpdate IS NOT NULL
            AND Name IS NOT NULL
            AND FatherName IS NOT NULL
            AND MotherName IS NOT NULL
            AND Branch IS NOT NULL
            AND Batch IS NOT NULL
            AND Degree IS NOT NULL
            AND PresentStatus IS NOT NULL
            AND Organization IS NOT NULL
            AND Designation IS NOT NULL
            AND Location IS NOT NULL); 
select * from college_b_sj_v;
#12
select lower(Name) as Name,lower(FatherName) as FatherName,lower(MotherName) as MotherName from college_a_hs_v;
select lower(Name) as Name,lower(FatherName) as FatherName,lower(MotherName) as MotherName from college_a_se_v;
select lower(Name) as Name,lower(FatherName) as FatherName,lower(MotherName) as MotherName from college_a_sj_v;
select lower(Name) as Name,lower(FatherName) as FatherName,lower(MotherName) as MotherName from college_b_hs_v;
select lower(Name) as Name,lower(FatherName) as FatherName,lower(MotherName) as MotherName from college_b_se_v;
select lower(Name) as Name,lower(FatherName) as FatherName,lower(MotherName) as MotherName from college_b_sj_v; 
#16
select * from college_a_hs;
select * from college_b_hs;
SELECT 'Higher Studies'Career_choice, (SELECT COUNT(*) FROM college_a_hs_v)/((SELECT COUNT(*) FROM college_a_hs_v) + (SELECT COUNT(*) FROM college_a_se_v) 
+ (SELECT COUNT(*) FROM college_a_sj_v))*100 'College A Percentage', (SELECT COUNT(*) FROM college_b_hs_v)/((SELECT COUNT(*) FROM college_b_hs_v) + (SELECT COUNT(*) FROM college_b_se_v) 
+ (SELECT COUNT(*) FROM college_b_sj_v))*100 'College B Percentage' UNION SELECT 'self Employed'Career_choice, (SELECT COUNT(*) FROM college_a_se_v)/((SELECT COUNT(*) FROM college_a_se_v) + (SELECT COUNT(*) FROM college_a_sj_v) 
+ (SELECT COUNT(*) FROM college_a_hs_v))*100 'College A Percentage', (SELECT COUNT(*) FROM college_b_se_v)/((SELECT COUNT(*) FROM college_b_se_v) + (SELECT COUNT(*) FROM college_b_sj_v) 
+ (SELECT COUNT(*) FROM college_b_hs_v))*100 'College B Percentage' UNION SELECT 'Service Job'Career_choice, (SELECT COUNT(*) FROM college_a_sj_v)/((SELECT COUNT(*) FROM college_a_sj_v) + (SELECT COUNT(*) FROM college_a_hs_v) 
+ (SELECT COUNT(*) FROM college_a_se_v))*100 'College A Percentage', (SELECT COUNT(*) FROM college_b_sj_v)/((SELECT COUNT(*) FROM college_b_sj_v) + (SELECT COUNT(*) FROM college_b_hs_v) 
+ (SELECT COUNT(*) FROM college_b_se_v))*100 'College B Percentage';