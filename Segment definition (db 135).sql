select * 
from [AlphaMVP]..[segment_definition_prod] 
where 
segment_type_id in (1074)
and segment_deleted_flag = 0
and tpid = 1
order by segment_type_id


select * 
from [AlphaMVP]..[segment_definition_prod] 
where segment_criteria = 'tpid = 1 and eapid = 0 and ( test_keys >= 1 and test_keys  <= 10   and mer_status  in ( 1 )  )'
and tpid = 1 
and segment_deleted_flag = 0
order by segment_type_id
