REM How to import / export to JSON in 4 steps 

REM Step 1 : modify file objects.csv manually with below header :
ID,name,NIF,Icon,SkinsBody,FemBody,Arms,Gloves,Lbody,Legs,Boots,Cloak,Helm,Head,Body,Lbody2,Cloak2,Belt,Shield,CombatStance,LeftHand,SoundSet,ApplyTexture,ShowName,AlternateNIF,UseEmblem,SiegeEquipment,detailtexture,Nif2,Nif3,Nif4,Nif5,Arms2,Gloves2,Legs2,Boots2,HouseItemNif,FemBody2,FemLbody,FemArms,FemGloves,FemLegs,FemBoots,HouseCollide,GardenHeight,Length,Width,X_Offset,Y_Offset,Multi1,MMulti2,EnvMap,Colideable,ObjectIdleAnim,ObjectRunAnim,ObjectEffect,AlbRealmEffect,MidRealmEffect,HibRealmEffect,SiegeLoad,SiegeFire,SiegeEffect,SmallSiege,LargeSiege,PlayerBoatFlag,CataStatus,CataSkinBody,CataSkinFbody,CataSkinArms,CataSkinGloves,CataSkinLegs,CataSkinBoots,CataSkinCloak,CataBody,CataGloves,CataBoots,CataArms,CataLegs,CataCloak,CataNif1,CataNif2,CataNif3,CataNif4,CataNif5,CataNif6,CataNif7,CataNif8,CataNif9,CataNif10,CataNif11,CataNif12,CataHelmTexture,RVRPrecache,WeaponEffect,WeaponPostScale,GroundNif,FullHelmHeadSwap,IgnoreCataNoArmorHelm

REM Step 2 : create SQLite database "objects.sqlit" where table "objects" will contain the objects from modified objects.csv (with good header line from previous step) : 
sqlite3.exe objects.sqlite -separator "," ".import objects-header.csv objects"

REM Step 3 : export the objects to the items_new.json via export_json.sql query 
sqlite3.exe objects.sqlite < export_json.sql > items_new.json 

REM Step 4 : modify "items_new.json" file to add [ as first character and ] as last one and removing the latest "," character 
