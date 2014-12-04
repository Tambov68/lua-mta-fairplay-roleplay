﻿local weaponmodels = {
	[ 1 ] = 331, [ 2 ] = 333, [ 3 ] = 326, [ 4 ] = 335, [ 5 ] = 336, [ 6 ] = 337, [ 7 ] = 338, [ 8 ] = 339, [ 9 ] = 341,
	[ 15 ] = 326, [ 22 ] = 346, [ 23 ] = 347, [ 24 ] = 348, [ 25 ] = 349, [ 26 ] = 350, [ 27 ] = 351, [ 28 ] = 352,
	[ 29 ] = 353, [ 32 ] = 372, [ 30 ] = 355, [ 31 ] = 356, [ 33 ] = 357, [ 34 ] = 358, [ 35 ] = 359, [ 36 ] = 360,
	[ 37 ] = 361, [ 38 ] = 362, [ 16 ] = 342, [ 17 ] = 343, [ 18 ] = 344, [ 39 ] = 363, [ 41 ] = 365, [ 42 ] = 366,
	[ 43 ] = 367, [ 10 ] = 321, [ 11 ] = 322, [ 12 ] = 323, [ 14 ] = 325, [ 44 ] = 368, [ 45 ] = 369, [ 46 ] = 371,
	[ 40 ] = 364, [ 100 ] = 373
}

local weaponweights = {
	[ 22 ] = 1.14, [ 23 ] = 1.24, [ 24 ] = 2, [ 25 ] = 3.1, [ 26 ] = 2.1, [ 27 ] = 4.2, [ 28 ] = 3.6, [ 29 ] = 2.640, [ 30 ] = 4.3, [ 31 ] = 2.68, [ 32 ] = 3.6, [ 33 ] = 4.0, [ 34 ] = 4.3
}

local ammoweights = {
	[ 22 ] = 0.0224, [ 23 ] = 0.0224, [ 24 ] = 0.017, [ 25 ] = 0.037, [ 26 ] = 0.037, [ 27 ] = 0.037, [ 28 ] = 0.009, [ 29 ] = 0.012, [ 30 ] = 0.0165, [ 31 ] = 0.0112, [ 32 ] = 0.009, [ 33 ] = 0.0128, [ 34 ] = 0.027
}

local itemlist = {
	[ 1 ]  = { name = "Donut", description = "A delicious donut for your taste.", value = 10, model = 2222, offsetX = 0, offsetY = 0, offsetZ = 0.08, offsetRX = 0, offsetRY = 0, offsetRZ = 0, alpha = 255, collisions = true, type = 1, weight = 0.2 },
	[ 2 ]  = { name = "Dice", description = "Tonight we're getting lucky!", value = 10, model = 1271, offsetX = 0, offsetY = 0, offsetZ = 0.35, offsetRX = 0, offsetRY = 0, offsetRZ = 0, alpha = 255, collisions = true, type = 1, weight = 0.1 },
	[ 3 ]  = { name = "Water", description = "Fresh and pure natural water.", value = 10, model = 2647, offsetX = 0, offsetY = 0, offsetZ = 0.12, offsetRX = 0, offsetRY = 0, offsetRZ = 0, alpha = 255, collisions = true, type = 1, weight = 1.0 },
	[ 4 ]  = { name = "Coffee", description = "Fresh and warm cup of coffee.", value = 10, model = 2647, offsetX = 0, offsetY = 0, offsetZ = 0.12, offsetRX = 0, offsetRY = 0, offsetRZ = 0, alpha = 255, collisions = true, type = 1, weight = 1.2 },
	[ 5 ]  = { name = "LSPD Badge", description = "A Los Santos Police Department badge.", value = "", model = 1581, offsetX = 0, offsetY = 0, offsetZ = 0, offsetRX = 0, offsetRY = 0, offsetRZ = 0, alpha = 255, collisions = true, type = 1, weight = 0.5 },
	[ 6 ]  = { name = "House Key", description = "A key to a house.", value = 0, model = 1581, offsetX = 0, offsetY = 0, offsetZ = 0, offsetRX = 0, offsetRY = 0, offsetRZ = 0, alpha = 255, collisions = true, type = 2, weight = 0.1 },
	[ 7 ]  = { name = "Vehicle Key", description = "A key to a vehicle.", value = 0, model = 1581, offsetX = 0, offsetY = 0, offsetZ = 0, offsetRX = 0, offsetRY = 0, offsetRZ = 0, alpha = 255, collisions = true, type = 2, weight = 0.15 },
	[ 8 ]  = { name = "Backpack", description = "A pack that you carry on your back.", value = 0, model = 2386, offsetX = 0, offsetY = 0, offsetZ = 0.1, offsetRX = 0, offsetRY = 0, offsetRZ = 0, alpha = 255, collisions = true, type = 1, weight = 1.0 },
	[ 9 ]  = { name = "Duty Belt", description = "A belt that you can put your duty gear on.", value = 0, model = 2386, offsetX = 0, offsetY = 0, offsetZ = 0.1, offsetRX = 0, offsetRY = 0, offsetRZ = 0, alpha = 255, collisions = true, type = 1, weight = 1.2 },
	[ 10 ] = { name = "Cellphone", description = "It's a thing that you use to contact someone.", value = "", model = 330, offsetX = 0, offsetY = 0, offsetZ = 0.1, offsetRX = 0, offsetRY = 0, offsetRZ = 0, alpha = 255, collisions = true, type = 1, weight = 0.4 },
	[ 11 ] = { name = "Weapon", description = "A deadly looking object.", value = "", model = 1271, offsetX = 0, offsetY = 0, offsetZ = 0.1, offsetRX = 0, offsetRY = 0, offsetRZ = 0, alpha = 255, collisions = true, type = 3, weight = 0.4 },
	[ 12 ] = { name = "Ammopack", description = "A container with deadly looking bullets in it.", value = "", model = 1271, offsetX = 0, offsetY = 0, offsetZ = 0.1, offsetRX = 0, offsetRY = 0, offsetRZ = 0, alpha = 255, collisions = true, type = 3, weight = 0.4 },
	[ 13 ] = { name = "Walkie-Talkie", description = "A thing you can use to communicate with a frequency.", value = "", model = 330, offsetX = 0, offsetY = 0, offsetZ = 0.1, offsetRX = 0, offsetRY = 0, offsetRZ = 0, alpha = 255, collisions = true, type = 1, weight = 0.4 },
	[ 14 ] = { name = "Megaphone", description = "A big thing you can use to jumpscare people with.", value = "", model = 1271, offsetX = 0, offsetY = 0, offsetZ = 0.1, offsetRX = 0, offsetRY = 0, offsetRZ = 0, alpha = 255, collisions = true, type = 1, weight = 0.4 },
}

function getItem( id )
	return itemlist[ id ] or false
end

function getItemByName( name )
	if (not name) then
		return false
	end
	
	local matches = { }
	
	for itemID, item in ipairs( itemlist ) do
		if ( item.name == name ) then
			table.insert( matches, itemID )
		end
	end
	
	if ( #matches == 1 ) then
		return matches[ 1 ]
	end
	
	return false
end

function getItems( )
	return itemlist
end

function getItemName( itemID )
	if ( itemlist[ itemID ] ) then
		return itemlist[ itemID ].name
	else
		return false
	end
end

function getItemDescription( itemID )
	if ( itemlist[ itemID ] ) then
		return itemlist[ itemID ].description
	else
		return false
	end
end

function getItemValue( itemID )
	if ( itemlist[ itemID ] ) then
		return itemlist[ itemID ].value
	else
		return false
	end
end

function getItemModel( itemID )
	if ( itemlist[ itemID ] ) then
		return itemlist[ itemID ].model
	else
		return false
	end
end

function getItemOffset( itemID )
	if ( itemlist[ itemID ] ) then
		return itemlist[ itemID ].offsetX, itemlist[ itemID ].offsetY, itemlist[ itemID ].offsetZ, itemlist[ itemID ].offsetRX, itemlist[ itemID ].offsetRY, itemlist[ itemID ].offsetRZ
	else
		return false
	end
end

function getItemAlpha( itemID )
	if ( itemlist[ itemID ] ) then
		return itemlist[ itemID ].alpha
	else
		return false
	end
end

function isItemCollisionsEnabled( itemID )
	if ( itemlist[ itemID ] ) then
		return itemlist[ itemID ].collisions
	else
		return false
	end
end

function getItemType( itemID )
	if ( itemlist[ itemID ] ) then
		return itemlist[ itemID ].type
	else
		return false
	end
end

function getItemWeight( itemID )
	if ( itemlist[ itemID ] ) then
		return itemlist[ itemID ].weight
	else
		return false
	end
end

function isWorldItem( element )
	if ( not element ) or ( getElementType( element ) ~= "object" ) or ( not getElementData( element, "worlditem.id" ) ) then
		return false
	end
	
	return { id = tonumber( getElementData( element, "worlditem:id" ) ), item_id = tonumber( getElementData( element, "worlditem:item_id" ) ), value = getElementData( element, "worlditem:value" ) }
end