use AlphaMVP;

SELECT distinct cd.locale, cd.campaign_id, count(distinct td.slot_position)
	FROM campaign_definition_prod cd
	JOIN template_definition_prod td on td.template_id = cd.template_id
	JOIN segment_definition_prod csd on csd.segment_type_id = cd.campaign_segment_type_id AND csd.tpid = cd.tpid AND csd.eapid = cd.eapid 
	JOIN segment_module_prod sm on sm.segment_module_map_id = td.segment_module_map_id
	JOIN segment_definition_prod sd on sd.segment_type_id = sm.segment_type_id AND sd.tpid = cd.tpid AND sd.eapid = cd.eapid 
	JOIN module_definition_prod md on md.module_type_id = sm.module_type_id AND td.placement_type = md.placement_type and md.locale = cd.locale
	JOIN module_variable_definition_prod mvd on mvd.module_id = md.module_id AND mvd.locale = md.locale
	where 
		cd.locale = 'en_US'
		--cd.locale in( 'en_au','en_nz')
		AND 
		csd.segment_deleted_flag = 0
		AND sd.segment_deleted_flag = 0
		AND cd.campaign_deleted_flag = 0
		AND sm.seg_mod_deleted_flag = 0
		AND td.template_deleted_flag = 0
		--AND md.[status] = 'active published'  
		--AND cd.campaign_id in ('30','31','27','38','20','36','37','39')
		AND cd.campaign_id in (20,27,30,31,36,37,38,39,88)
		--and td.placement_type in ('subject','hero')
		--and md."default" = 0
	group by cd.locale, cd.campaign_id
	order by cd.locale, cd.campaign_id