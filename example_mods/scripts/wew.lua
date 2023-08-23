nps = 0

function goodNoteHit(_,_,_,s)
    if not s then nps = nps + 1 end

    cancelTimer('augh')
    runTimer('augh', 0.23)

end

function onTimerCompleted(t)
    if t == "augh" then
        if nps <= 2 then

            nps = 0
            characterDance('bf')
            
        end
    end
end
