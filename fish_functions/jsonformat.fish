function jsonformat
    # Format, temporary save, overwrite
    # set outfile /tmp/(date +%s)_reformat.json
    set outfile /tmp/tmpjson.json
    python3 -mjson.tool $argv > $outfile
    less $outfile > $argv
end
