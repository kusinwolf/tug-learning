-- TestModScript

include("Scripts/Core/Common.lua")

-------------------------------------------------------------------------------
if TestModScript == nil then
	TestModScript = EternusEngine.ModScriptClass.Subclass("TestModScript")
end

-------------------------------------------------------------------------------
function TestModScript:Constructor(  )

end

 -------------------------------------------------------------------------------
 -- Called once from C++ at engine initialization time
function TestModScript:Initialize()

	Eternus.GameState:RegisterSlashCommand("TestCommand", self, "TestCommandFunction")
	
end

-------------------------------------------------------------------------------
-- Called from C++ when the current game enters 
function TestModScript:Enter()	
end

-------------------------------------------------------------------------------
-- Called from C++ when the game leaves it current mode
function TestModScript:Leave()
end


-------------------------------------------------------------------------------
-- Called from C++ every update tick
function TestModScript:Process(dt)
end


function TestModScript:TestCommandFunction(args)
	NKError("Registered Command Worked!")
end

EntityFramework:RegisterModScript(TestModScript)