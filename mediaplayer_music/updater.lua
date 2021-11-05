function Initialize()
	LastValue = null
	HAaddr=SKIN:GetVariable('HA_addr')
end 

function Update()
	artParseMeasure = SKIN:GetMeasure('artParse')	
	artAddr = artParseMeasure:GetStringValue()
	wholepathL= HAaddr .. artAddr

	titleParseMeasure = SKIN:GetMeasure('titleParse')
	CurrentValue = titleParseMeasure:GetStringValue()

	if CurrentValue ~= LastValue then       		
		SKIN:Bang('!SetVariable', 'wholePath' , wholepathL)
		SKIN:Bang('!CommandMeasure','ImageGet', 'Run')

		LastValue = CurrentValue		
		return
	end	
end 