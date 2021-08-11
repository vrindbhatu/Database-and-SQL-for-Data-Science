select count(*) from CHICAGO_PUBLIC_SCHOOLS where "Elementary, Middle, or High School" = 'ES';

select MAX(Safety_Score) AS MAX_SAFETY_SCORE from CHICAGO_PUBLIC_SCHOOLS;

select NAME_OF_SCHOOL from CHICAGO_PUBLIC_SCHOOLS where SAFETY_SCORE= (select MAX(SAFETY_SCORE) from CHICAGO_PUBLIC_SCHOOLS);

select Name_of_School, Average_Student_Attendance from CHICAGO_PUBLIC_SCHOOLS
    order by Average_Student_Attendance desc nulls last limit 10 ;
    
select Name_of_School, Average_Student_Attendance from CHICAGO_PUBLIC_SCHOOLS 
    order by Average_Student_Attendance nulls last limit 5; 
    
select Name_of_School, REPLACE(Average_Student_Attendance,'%','') from CHICAGO_PUBLIC_SCHOOLS 
    order by Average_Student_Attendance nulls last limit 5;
    
SELECT Name_of_School, Average_Student_Attendance 
     from CHICAGO_PUBLIC_SCHOOLS 
     where DECIMAL ( REPLACE(Average_Student_Attendance, '%', '') ) < 70
     order by Average_Student_Attendance;
     
select Community_Area_Name, sum(College_Enrollment) AS TOTAL_ENROLLMENT 
   from CHICAGO_PUBLIC_SCHOOLS
   group by Community_Area_Name;
   
select Community_Area_Name, sum(College_Enrollment) AS TOTAL_ENROLLMENt
   from CHICAGO_PUBLIC_SCHOOLS
   group by Community_Area_Name
   order by TOTAL_ENROLLMENT nulls last limit 5;
   

   