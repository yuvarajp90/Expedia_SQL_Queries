use AlphaMVP;

SELECT distinct cd.locale, cd.campaign_id, cd.campaign_type, cd.campaign_segment_type_id, cd.[priority],
td.slot_position,td.template_id, td.placement_type, td.segment_module_map_id, td.module_priority_in_slot,
sm.segment_type_id,csd.segment_scriteria, 
md.module_type_id, md.[version], md.module_id, md.[default], mvd.var_position, mvd.var_name, mvd.var_type, mvd.var_source, mvd.var_structure
	FROM campaign_definition_prod cd
	JOIN template_definition_prod td on td.template_id = cd.template_id
	JOIN segment_definition_prod csd on csd.segment_type_id = cd.campaign_segment_type_id AND csd.tpid = cd.tpid AND csd.eapid = cd.eapid 
	JOIN segment_module_prod sm on sm.segment_module_map_id = td.segment_module_map_id
	JOIN segment_definition_prod sd on sd.segment_type_id = sm.segment_type_id AND sd.tpid = cd.tpid AND sd.eapid = cd.eapid 
	JOIN module_definition_prod md on md.module_type_id = sm.module_type_id AND td.placement_type = md.placement_type and md.locale = cd.locale
	JOIN module_variable_definition_prod mvd on mvd.module_id = md.module_id AND mvd.locale = md.locale
	where 
		cd.locale = 'en_au'
		--cd.locale in( 'en_nz', 'en_au')
		AND 
		csd.segment_deleted_flag = 0
		AND sd.segment_deleted_flag = 0
		AND cd.campaign_deleted_flag = 0
		AND sm.seg_mod_deleted_flag = 0
		AND td.template_deleted_flag = 0
		AND md.[status] = 'active published'  
		AND cd.campaign_id in (24)
		--AND cd.campaign_id in (27,30,31,36,37,38,39)
		--and td.placement_type in ('subject','hero')
		--and md."default" = 0
		--and td.segment_module_map_id = 8
		--and sm.segment_type_id = 11
		--and md.module_type_id = 79
		--and mvd.module_id in (12503)
	order by cd.campaign_type, cd.campaign_id,  td.slot_position, td.placement_type, td.module_priority_in_slot, md.[version], md.module_id, mvd.var_position

