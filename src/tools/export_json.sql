select 
'{"Category":"'|| IIF(Body<>0, 'hauberk',
					IIF(Legs<>0, 'legs',
					IIF(Boots<>0, 'feet',
					IIF(Cloak<>0, 'cloak',
					IIF(Helm<>0, 'helm', 
					IIF(Arms<>0, 'arms', 
					IIF(Gloves<>0, 'hands',
					IIF(Shield<>0, 'shield',
					IIF(CombatStance==0 AND LeftHand==1, 'instrument', 
					CASE CombatStance
						WHEN 1 THEN 'sword'
						WHEN 2 THEN 'twohanded'
						WHEN 3 THEN 'pole'
						WHEN 4 THEN 'staff'
						WHEN 5 THEN 'bow'
						WHEN 6 THEN 'crossbow'
						WHEN 7 THEN 'dagguer'
						WHEN 8 THEN 'throwing'
						WHEN 9 THEN 'flexible'
						WHEN 10 THEN 'flexible'
						WHEN 11 THEN 'flexible'
						WHEN 13 THEN 'greave'
						WHEN 14 THEN 'scythe'
						ELSE ''
					END
				))))))))) || '",' || 
'"IsArmor":' || IIF(Body<>0, 'true',
					IIF(Legs<>0, 'true',
					IIF(Boots<>0, 'true',
					IIF(Cloak<>0, 'true',
					IIF(Helm<>0, 'true', 
					IIF(Arms<>0, 'true', 
					IIF(Gloves<>0, 'true', 
					'false'
				))))))) || ','  || 
'"IsWeapon":' || IIF(CombatStance<>0, 'true',
					IIF(Shield<>0, 'true',
					IIF(LeftHand<>0, 'true',
					'false'
				))) || ','  || 
'"WeaponHand":' || LeftHand || ','  || 
'"WeaponHandName":' || LeftHand || ','  || 
'"IsSiegeWeapon":' || IIF(SiegeEquipment<>0, 'true',
					'false'
				) || ','  || 
'"IsHousingItem":' || IIF(HouseItemNif<>0, 'true',
					'false'
				) || ','  || 
'"IsWorldObject":' || IIF(Body<>0, 'false',
					IIF(Legs<>0, 'false',
					IIF(Boots<>0, 'false',
					IIF(Cloak<>0, 'false',
					IIF(Helm<>0, 'false', 
					IIF(Arms<>0, 'false', 
					IIF(Gloves<>0, 'false', 
					IIF(CombatStance<>0, 'false',
					IIF(Shield<>0, 'false',
					IIF(LeftHand<>0, 'false',
					IIF(HouseItemNif<>0, 'false',
					IIF(SiegeEquipment<>0, 'false',
					'true'
				)))))))))))) || ','  || 
'"IsInventory":false,'  || 
'"IsOther":false,'  || 
'"ModelId":'||ID||','  || 
'"Name":"'|| name || '"},' 
from objects;


