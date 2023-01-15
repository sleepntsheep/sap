#!/bin/sh
basename() {
    # Usage: basename "path" ["suffix"]
    # Strip all trailing forward-slashes '/' from
    # the end of the string.
    #
    # "${1##*[!/]}": Remove all non-forward-slashes
    # from the start of the string, leaving us with only
    # the trailing slashes.
    # "${1%%"${}"}:  Remove the result of the above
    # substitution (a string of forward slashes) from the
    # end of the original string.
    dir=${1%${1##*[!/]}}
    # Remove everything before the final forward-slash '/'.
    dir=${dir##*/}
    # If a suffix was passed to the function, remove it from
    # the end of the resulting string.
    dir=${dir%"$2"}
    # Print the resulting string and if it is empty,
    # print '/'.
    printf '%s\n' "${dir:-/}"
}

set -e

gcc -o test/lexer test/lexer.c src/lexer.c src/token.c src/sstring.c -g
printf '\nRunning test/lexer\n'

for f in example/*.sap
do
    printf "\t$f"
    ./test/lexer "$f" >| test/lexed/"$(basename $f)"
done

gcc -o test/parser test/parser.c src/parser.c src/lexer.c \
    src/token.c src/ast.c src/sobject.c src/sstring.c src/error.c -g
printf '\nRunning test/parser\n'

for f in example/*.sap
do
    printf "\t$f"
    ./test/parser "$f" >| test/parsed/"$(basename $f)"
done

exit

gcc -o test/eval test/eval.c src/parser.c src/token.c src/ast.c src/sobject.c -g
printf '\nRunning test/eval\n'
./test/eval
