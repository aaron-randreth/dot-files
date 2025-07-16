if status is-interactive
    # Commands to run in interactive sessions can go here

    function fish_greeting
        #set -l greeting = $(random choice "Hello!" "Hi" "G'day" "Howdy")
    end

    set -g fish_key_bindings fish_vi_key_bindings

    # Aliases 
    abbr --add cl clear
    abbr --add l ls
    abbr --add pong ping 1.1.1.1
end
