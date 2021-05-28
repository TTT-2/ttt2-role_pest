L = LANG.GetLanguageTableReference("english")

-- GENERAL ROLE LANGUAGE STRINGS
L[PESTILENCE.name] = "Pestilence"
L[TEAM_PESTILENCE] = "TEAM Pestilence"
L["hilite_win_" .. TEAM_PESTILENCE] = "THE PESTILENCE WON"
L["win_" .. TEAM_PESTILENCE] = "The Pest wins!"
L["info_popup_" .. PESTILENCE.name] = [[You are now a Pestilence!
Since every unworthy person got infected, you are now able to eliminate them all!]]
L["body_found_" .. PESTILENCE.abbr] = "They were a Pestilence."
L["search_role_" .. PESTILENCE.abbr] = "This person was a Pestilence!"
L["ev_win_" .. TEAM_PESTILENCE] = "The evil Pest wins!"
L["target_" .. PESTILENCE.name] = "Pestilence"
L["ttt2_desc_" .. PESTILENCE.name] = [[Pestilence wins alone!]]

L[PLAGUEHOST.name] = "Plague-Host"
L["info_popup_" .. PLAGUEHOST.name] = [[You are a Plague-Host!
Infect all the others silently, to transform into Pestilence and become immortal!]]
L["body_found_" .. PLAGUEHOST.abbr] = "They were a Plague-Host."
L["search_role_" .. PLAGUEHOST.abbr] = "This person was a Plague-Host!"
L["target_" .. PLAGUEHOST.name] = "Plague-Host"
L["ttt2_desc_" .. PLAGUEHOST.name] = [[Pestilence has infected and eliminated everyone!]]

--OTHER ROLE LANGUAGE STRINGS
