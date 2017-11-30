select * from AlphaMVP..mis_lx_offers_mod_images
where tpid = 3 and eapid = 0
order by regionid, TripDayNumber

select distinct regionid from AlphaMVP..mis_lx_offers_mod_images
where tpid = 3 and eapid = 0
order by regionid

select distinct TripDayNumber from AlphaMVP..mis_lx_tripday_activity
where tpid = 3 and eapid = 0
order by TripDayNumber

