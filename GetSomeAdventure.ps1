function Get-SomeAdventure{
    <#
    .DESCRIPTION
    Returns a randon string.
    #>
    $Adventure = New-Object "System.Collections.Generic.List[PSObject]"

    $Adventure.Add([pscustomobject]@{
        Index = 1
        Threat = "Zorgon the Conqueror wants to"
        WantsTo = "$(@('destroy','corrupt') | Get-Random)"
        The = "the Space Pirate $(@('King','Queen') | Get-Random)"
        WhichWill = "destroy the solar system"
    })

    $Adventure.Add([pscustomobject]@{
        Index = 2
        Threat = "The Hive Armada wants to"
        WantsTo = "$(@('steal','capture') | Get-Random)"
        The = "the Void Crystals"
        WhichWill = "reverse time"
    })

    $Adventure.Add([pscustomobject]@{
        Index = 3
        Threat = "A Rogue Captain wants to"
        WantsTo = "bond with"
        The = "the Star Dreadnought"
        WhichWill = "enslave a planet"
    })

    $Adventure.Add([pscustomobject]@{
        Index = 4
        Threat = "Space Pirates want to"
        WantsTo = "$(@('protect','empower') | Get-Random)"
        The = "the Quantum Tunnel"
        WhichWill = "start a $(@('war','invasion') | Get-Random)"
    })

    $Adventure.Add([pscustomobject]@{
        Index = 5
        Threat = "Cyber Zombies want to"
        WantsTo = "$(@('build','synthesize') | Get-Random)"
        The = "an ancient space ruin"
        WhichWill = "rip a hole in reality"
    })

    $Adventure.Add([pscustomobject]@{
        Index = 6
        Threat = "Alien brain worms want to"
        WantsTo = "$(@('pacify','occupy') | Get-Random)"
        The = "an alien artifact"
        WhichWill = "fix everything"
    })

    function Get-Adventure{
        param(
            [string]$Section
        )
        $Adventure | Get-Random | Select-Object -ExpandProperty $Section
    }

    "$(Get-Adventure -Section Threat) $(Get-Adventure -Section WantsTo) $(Get-Adventure -Section The)$(@(', ',' ') | Get-Random)which will $(Get-Adventure -Section WhichWill)!"
}
