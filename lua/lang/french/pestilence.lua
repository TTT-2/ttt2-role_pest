L = LANG.GetLanguageTableReference("french")

-- GENERAL ROLE LANGUAGE STRINGS
L[PESTILENCE.name] = "La Peste"
L[TEAM_PESTILENCE] = "TEAM Pestilence"
L["hilite_win_" .. TEAM_PESTILENCE] = "LA PESTILENCE A GAGNÉ"
L["win_" .. TEAM_PESTILENCE] = "La Peste gagne!"
L["info_popup_" .. PESTILENCE.name] = [[Vous êtes la Peste!
Après que  le Propagateur de la Peste ait infecté tous les indignes, vous êtes capable de tous les éliminer!]]
L["body_found_" .. PESTILENCE.abbr] = "C'était la Peste."
L["search_role_" .. PESTILENCE.abbr] = "C'était la Peste!"
L["ev_win_" .. TEAM_PESTILENCE] = "La Peste gagne!"
L["target_" .. PESTILENCE.name] = "Pestilence"
L["ttt2_desc_" .. PESTILENCE.name] = [[La peste gagne seule!]]

L[PLAGUEHOST.name] = "Propagateur de la Peste"
L["info_popup_" .. PLAGUEHOST.name] = [[Vous êtes le Propagateur de la Peste!
Infecter tous les autres silencieusement, pour les transformer en Pestilence et devenir immortel!]]
L["body_found_" .. PLAGUEHOST.abbr] = "C'était le Propagateur de la Peste."
L["search_role_" .. PLAGUEHOST.abbr] = "Cette personne était le Propagateur de la Peste!"
L["target_" .. PLAGUEHOST.name] = "Propagateur de la Peste"
L["ttt2_desc_" .. PLAGUEHOST.name] = [[Le Propagateur de la Peste se transforme en peste et gagne seul!]]

--OTHER ROLE LANGUAGE STRINGS
