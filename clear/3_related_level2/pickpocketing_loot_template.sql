DELETE lt FROM pickpocketing_loot_template AS lt
WHERE lt.entry NOT IN (SELECT pickpocketloot FROM creature_template)
OR (lt.mincountOrRef > 0 AND lt.item NOT IN (SELECT entry FROM item_template))
OR (lt.mincountOrRef < 0 AND ABS(lt.mincountOrRef) NOT IN (SELECT entry FROM reference_loot_template));