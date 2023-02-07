UPDATE LocalizedText
    SET Text = CASE WHEN INSTR(Text,'(') > 0 AND INSTR(Text,'(') > 0 THEN
    SUBSTR(Text, INSTR(Text,'(') + 1, INSTR(Text,')') - INSTR(Text,'(') - 1)
    ELSE Text END
WHERE Language = 'en_US'
AND Tag LIKE '%LOC_DIPLO%'
AND Tag LIKE '%GEDEMO_BISMARK%'
AND INSTR(Text,'(') > 0
AND INSTR(Text,'(') > 0;