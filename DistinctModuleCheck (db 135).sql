use AlphaMVP;

SELECT distinct cd.campaign_id, md.module_id, md.[status], md."default"
	FROM campaign_definition_prod cd
	JOIN template_definition_prod td on td.template_id = cd.template_id
	JOIN segment_definition_prod csd on csd.segment_type_id = cd.campaign_segment_type_id AND csd.tpid = cd.tpid AND csd.eapid = cd.eapid 
	JOIN segment_module_prod sm on sm.segment_module_map_id = td.segment_module_map_id
	JOIN segment_definition_prod sd on sd.segment_type_id = sm.segment_type_id AND sd.tpid = cd.tpid AND sd.eapid = cd.eapid 
	JOIN module_definition_prod md on md.module_type_id = sm.module_type_id AND td.placement_type = md.placement_type and md.locale = cd.locale
	JOIN module_variable_definition_prod mvd on mvd.module_id = md.module_id AND mvd.locale = md.locale
	where 
		--cd.locale = 'en_ca'
		--AND 
		csd.segment_deleted_flag = 0
		AND sd.segment_deleted_flag = 0
		AND cd.campaign_deleted_flag = 0
		AND sm.seg_mod_deleted_flag = 0
		AND td.template_deleted_flag = 0
		AND md.[status] = 'active published'  
		--AND cd.campaign_id in (123,118,122,121,126,120,119,125,124)
		AND cd.campaign_id in (38)
		--AND td.segment_module_map_id in (1168)
		--and td.placement_type in ('subject','hero')
		--and md."default" = 0
		--and md.module_id in (12581)
		--and md.module_type_id in (10)
		order by campaign_id
	
