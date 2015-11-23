create or replace trigger "D3_RFE_AFTER_INSERT"
AFTER
insert on "D3_RFE"
for each row
declare
r_selected APEX_APPLICATION_GLOBAL.VC_ARR2;
begin

INSERT INTO D3_SHIST (D3_RFE_RFEID,
                      STATUSID,
                      EMPID,
                      EXPLANATION,
                      ALTPROTECTIONS,
                      D3_TASK_TASKID,
                      APPREVDATE,
                      EFFECTDATE)
                VALUES (:new.RFEID,
                        1, -- ON INSERT HISTORY WILL ALWAYS BE 1
                        nv('P7_EMP_EMPID'),
                        v('P7_EXPLANATION'),
                        v('P7_ALTPROTECTIONS'),
                        v('P7_D3_TASK_TASKID'),
                        '1-JAN-1111',
                        v('P7_EFFECTDATE'));


 -- Convert the colon separated string from the shuttle into the array
 
 r_selected := APEX_UTIL.STRING_TO_TABLE(v('P7_FYI'));

 -- the array should now contain empids from the shuttle LOV
 
 -- Now insert those empidss into the D3_CONTACTS table with the RFEID from Next
 FOR i IN 1..r_selected.count LOOP
    insert into D3_CONTACTS (CONTACTID, D3_EMP_EMPID, D3_RFE_RFEID)
    values (i, r_selected(i), :new.RFEID);
 END LOOP;

end;

------------------------------------
create or replace trigger "D3_RFE_BEFORE_UPDATE"
BEFORE
update on "D3_RFE"
for each row
begin
DECLARE
  NEXT_RANK D3_EMP.ROLE_RANK%TYPE := 0;
BEGIN

INSERT INTO D3_SHIST (D3_RFE_RFEID,
                      STATUSID,
                      EMPID,
                      EXPLANATION,
                      ALTPROTECTIONS,
                      D3_TASK_TASKID,
                      APPREVDATE,
                      EFFECTDATE)
                VALUES (:old.RFEID,
                        :old.D3_STATUS_STATUSID, -- Save old status before it is updated
                        nv('LOGIN_EMP_SELECT'), -- Actor is the one logged in
                        :old.EXPLANATION,
                        :old.ALTPROTECTIONS,
                        :old.D3_TASK_TASKID,
                        SYSDATE, --Updated date
                        SYSDATE); --Ask user for effective date
                        
IF nv('P13_IS_OWNER') IS NULL THEN -- DO ACTIONS AS REVIEWER

    IF nv('P13_RFE_ACTION_REVIEWER') = 3 THEN -- RETURN
    
      SELECT h.EMPID INTO :new.D3_EMP_EMPID FROM D3_SHIST h WHERE h.statusid = 1 AND h.D3_RFE_RFEID = :old.RFEID; -- SET EMPID BACK TO ORIGINATOR
      :new.D3_STATUS_STATUSID := 3;
    
    ELSIF nv('P13_RFE_ACTION_REVIEWER') = 5 THEN -- REJECT
    
      :new.D3_EMP_EMPID := nv('LOGIN_EMP_SELECT');
      :new.D3_STATUS_STATUSID := 5;
    
    ELSE -- APPROVED

      SELECT role_rank INTO NEXT_RANK FROM D3_EMP e WHERE e.EMPID = nv('LOGIN_EMP_SELECT');
      NEXT_RANK := NEXT_RANK + 1; -- Advance Rank
      
      IF (NEXT_RANK = 4) THEN --LAB DIR IS NEXT
      
        :new.D3_EMP_EMPID := nv('P13_FORWARD_TO');
        :new.D3_STATUS_STATUSID := 6; -- 6 is SA APPROVAL
      
      ELSIF (NEXT_RANK = 5) THEN --CHAIR IS NEXT
      
        :new.D3_EMP_EMPID := nv('P13_FORWARD_TO');
        :new.D3_STATUS_STATUSID := 7; --LD APPROVAL
      
      ELSIF (NEXT_RANK = 6) THEN --NEXT IS FINAL APPROVAL
      
        :new.D3_EMP_EMPID := nv('P13_FORWARD_TO');
        :new.D3_STATUS_STATUSID := 8; -- CHAIR APPROVAL
      
      ELSE --FINAL APPROVAL
      
        :new.D3_EMP_EMPID := nv('LOGIN_EMP_SELECT');
        :new.D3_STATUS_STATUSID := 9; -- FINAL APPROVAL
      
      END IF;

    END IF;

ELSIF nv('P13_IS_OWNER') IS NOT NULL THEN -- DO ACTIONS AS OWNER

    IF v('P13_RFE_ACTION_OWNER') = 4 THEN --RECALL RFE

        :new.D3_EMP_EMPID := nv('LOGIN_EMP_SELECT');
        :new.D3_STATUS_STATUSID := 4; -- RECALLED
    
    ELSIF v('P13_RFE_ACTION_OWNER') = 2 THEN -- SUBMIT
    
        :new.D3_EMP_EMPID := nv('P13_FORWARD_TO');
        :new.D3_STATUS_STATUSID := 2; -- SUBMITTED
    
    ELSE --ERROR
        
        :new.D3_STATUS_STATUSID := -1;
        
    END IF;
END IF;

END;

end;

