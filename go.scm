(begin (define-macro (ZEDor a b) `(or ,a ,b)) (define-macro (ZEDand a b) `(and ,a ,b)) (define-macro (ZEDse a b) `(begin ,a ,b)) (define-macro (ZEDc a b) `(cons (delay ,a) (delay ,b))) (define-macro (ZEDquote a) `,a) (define ZEDalways #t) (define ZEDerr 'err) (define ZEDnil '()))
(begin (define (ZED! pair) (cond (#t (ZEDforce1 (cdr pair))) (else ZEDerr))) (define (ZED1 pair) (cond (#t (ZEDforce1 (car pair))) (else ZEDerr))) (define (ZED= value1 value2) (cond (#t (eqv? value1 value2)) (else ZEDerr))) (define (ZEDadd-between item list) (cond (#t (reverse (ZEDadd-between1 item list ZEDnil))) (else ZEDerr))) (define (ZEDadd-between-ra list item) (cond (#t (reverse (ZEDadd-between1 item list ZEDnil))) (else ZEDerr))) (define (ZEDadd-between1 item list collect) (cond ((null? list) collect) ((null? (cdr list)) (cons (car list) collect)) (#t (ZEDadd-between1 item (cdr list) (cons item (cons (car list) collect)))) (else ZEDerr))) (define (ZEDalpha) (cond (#t (ZEDwrite-all! (ZEDflatten (ZEDnewlines (ZEDby-four (ZEDfunction-sort (ZEDsentences (ZEDleading-newline (ZEDspace-newline (ZEDtab-replace (ZEDnewline-space-tab-repeats (ZEDnewline-space (ZEDfilter ZEDnot-return? (ZEDread-all!)))))))))))))) (else ZEDerr))) (define (ZEDapplication? expression) (cond (#t (and (not (null? expression)) (pair? (car expression)))) (else ZEDerr))) (define (ZEDarity arity-hash function) (cond (#t (cdr (assoc function arity-hash))) (else ZEDerr))) (define (ZEDarity-hash program) (cond (#t (append (map ZEDarity-hash1 program) (append (list (cons 'ZED001 1) (cons 'ZEDor 2) (cons 'ZEDand 2) (cons 'ZEDse 2) (cons 'ZEDc 2) (cons 'ZEDquote 1)) (list (cons 'ZED002 2) (cons 'ZED003 3) (cons 'ZED004 4) (cons 'ZED005 5) (cons 'ZED006 6) (cons 'ZED007 7) (cons 'ZED008 8) (cons 'ZED009 9) (cons 'ZED010 10) (cons 'ZED011 11) (cons 'ZED012 12) (cons 'ZED013 13) (cons 'ZED014 14) (cons 'ZED015 15) (cons 'ZED016 16) (cons 'ZED017 17) (cons 'ZED018 18) (cons 'ZED019 19) (cons 'ZED020 20) (cons 'ZED021 21) (cons 'ZED022 22) (cons 'ZED023 23) (cons 'ZED024 24) (cons 'ZED025 25) (cons 'ZED026 26) (cons 'ZED027 27) (cons 'ZED028 28) (cons 'ZED029 29) (cons 'ZED030 30) (cons 'ZED031 31) (cons 'ZED032 32) (cons 'ZED033 33) (cons 'ZED034 34) (cons 'ZED035 35) (cons 'ZED036 36) (cons 'ZED037 37) (cons 'ZED038 38) (cons 'ZED039 39) (cons 'ZED040 40) (cons 'ZED041 41) (cons 'ZED042 42) (cons 'ZED043 43) (cons 'ZED044 44) (cons 'ZED045 45) (cons 'ZED046 46) (cons 'ZED047 47) (cons 'ZED048 48) (cons 'ZED049 49) (cons 'ZED050 50) (cons 'ZED051 51) (cons 'ZED052 52) (cons 'ZED053 53) (cons 'ZED054 54) (cons 'ZED055 55) (cons 'ZED056 56) (cons 'ZED057 57) (cons 'ZED058 58) (cons 'ZED059 59) (cons 'ZED060 60) (cons 'ZED061 61) (cons 'ZED062 62) (cons 'ZED063 63) (cons 'ZED064 64) (cons 'ZED065 65) (cons 'ZED066 66) (cons 'ZED067 67) (cons 'ZED068 68) (cons 'ZED069 69) (cons 'ZED070 70) (cons 'ZED071 71) (cons 'ZED072 72) (cons 'ZED073 73) (cons 'ZED074 74) (cons 'ZED075 75) (cons 'ZED076 76) (cons 'ZED077 77) (cons 'ZED078 78) (cons 'ZED079 79) (cons 'ZED080 80) (cons 'ZED081 81) (cons 'ZED082 82) (cons 'ZED083 83) (cons 'ZED084 84) (cons 'ZED085 85) (cons 'ZED086 86) (cons 'ZED087 87) (cons 'ZED088 88) (cons 'ZED089 89) (cons 'ZED090 90) (cons 'ZED091 91) (cons 'ZED092 92) (cons 'ZED093 93) (cons 'ZED094 94) (cons 'ZED095 95) (cons 'ZED096 96) (cons 'ZED097 97) (cons 'ZED098 98) (cons 'ZED099 99))))) (else ZEDerr))) (define (ZEDarity-hash1 clause) (cond (#t (cons (ZEDclause-name clause) (ZEDclause-arity clause))) (else ZEDerr))) (define (ZEDby-four sentences) (cond (#t (reverse (ZEDby-four1 sentences ZEDnil))) (else ZEDerr))) (define (ZEDby-four1 sentences collect) (cond ((null? sentences) collect) (#t (ZEDby-four1 (cddddr sentences) (cons (list (car sentences) (cadr sentences) (caddr sentences) (cadddr sentences)) collect))) (else ZEDerr))) (define (ZEDby-three sentences) (cond (#t (reverse (ZEDby-three1 sentences ZEDnil))) (else ZEDerr))) (define (ZEDby-three1 sentences collect) (cond ((null? sentences) collect) (#t (ZEDby-three1 (cdddr sentences) (cons (list (car sentences) (cadr sentences) (caddr sentences)) collect))) (else ZEDerr))) (define (ZEDcharacter-less? character1 character2) (cond (#t (< (char->integer character1) (char->integer character2))) (else ZEDerr))) (define (ZEDclause-arguments clause) (cond (#t (cadr clause)) (else ZEDerr))) (define (ZEDclause-arguments-agree clause1 clause2) (cond ((equal? (ZEDclause-arguments clause1) (ZEDclause-arguments clause2)) (ZEDclause-arguments clause1)) (else ZEDerr))) (define (ZEDclause-arity clause) (cond (#t (length (ZEDclause-arguments clause))) (else ZEDerr))) (define (ZEDclause-body clause) (cond (#t (cddr clause)) (else ZEDerr))) (define (ZEDclause-less? clause1 clause2) (cond (#t (ZEDsentence-less? (car clause1) (car clause2))) (else ZEDerr))) (define (ZEDclause-name clause) (cond (#t (car clause)) (else ZEDerr))) (define (ZEDclause-name-agree clause1 clause2) (cond ((eq? (ZEDclause-name clause1) (ZEDclause-name clause2)) (ZEDclause-name clause1)) (else ZEDerr))) (define (ZEDcombine-all program) (cond (#t (reverse (ZEDcombine-all1 program ZEDnil))) (else ZEDerr))) (define (ZEDcombine-all1 program collect) (cond ((null? program) collect) ((null? (cdr program)) (cons (car program) collect)) ((eq? (ZEDclause-name (car program)) (ZEDclause-name (cadr program))) (ZEDcombine-all1 (ZEDcombine-head-clauses program) collect)) (#t (ZEDcombine-all1 (cdr program) (cons (car program) collect))) (else ZEDerr))) (define (ZEDcombine-clauses clause1 clause2) (cond (#t (cons (ZEDclause-name-agree clause1 clause2) (cons (ZEDclause-arguments-agree clause1 clause2) (append (ZEDclause-body clause1) (ZEDclause-body clause2))))) (else ZEDerr))) (define (ZEDcombine-head-clauses program) (cond (#t (cons (ZEDcombine-clauses (car program) (cadr program)) (cddr program))) (else ZEDerr))) (define (ZEDcombine-program-clauses program) (cond (#t (ZEDcombine-all (ZEDready-program program))) (else ZEDerr))) (define (ZEDcomp1) (cond (#t (ZEDcomp1a (ZEDcombine-program-clauses (ZEDby-three (ZEDread-sentences (ZEDdiscard-comments (ZEDfunction-sort (ZEDsentences (ZEDleading-newline (ZEDspace-newline (ZEDtab-replace (ZEDnewline-space-tab-repeats (ZEDnewline-space (ZEDfilter ZEDnot-return? (ZEDread-all!))))))))))))))) (else ZEDerr))) (define (ZEDcomp1a combined) (cond (#t (ZEDcomp1aa (ZEDprogramize combined (ZEDarity-hash combined)))) (else ZEDerr))) (define (ZEDcomp1aa programized) (cond (#t (begin (display (ZEDprimitives)) (newline) (display programized))) (else ZEDerr))) (define (ZEDcomp2) (cond (#t (ZEDcomp2a (ZEDcombine-program-clauses (ZEDby-three (ZEDdebug-sentences (ZEDdiscard-comments (ZEDfunction-sort (ZEDsentences (ZEDleading-newline (ZEDspace-newline (ZEDtab-replace (ZEDnewline-space-tab-repeats (ZEDnewline-space (ZEDfilter ZEDnot-return? (ZEDread-all!))))))))))))))) (else ZEDerr))) (define (ZEDcomp2a combined) (cond (#t (ZEDcomp1aa (ZEDprogramize combined (ZEDarity-hash combined)))) (else ZEDerr))) (define (ZEDcondefy expressions) (cond (#t (reverse (ZEDcondefy1 expressions ZEDnil))) (else ZEDerr))) (define (ZEDcondefy1 expressions collect) (cond ((null? expressions) collect) (#t (ZEDcondefy1 (cddr expressions) (cons (append (car expressions) (cadr expressions)) collect))) (else ZEDerr))) (define (ZEDdebug-sentence sentence) (cond (#t (reverse (ZEDdebug-sentence1 sentence ZEDnil))) (else ZEDerr))) (define (ZEDdebug-sentence1 sentence collect) (cond ((null? sentence) collect) ((eqv? #\space (car sentence)) (ZEDdebug-sentence1 (cdr sentence) collect)) ((eqv? #\( (car sentence)) (ZEDdebug-sentence1a sentence (ZEDgather-verb (cdr sentence)) collect)) (#t (ZEDdebug-sentence1b sentence (ZEDgather-noun sentence) collect)) (else ZEDerr))) (define (ZEDdebug-sentence1a sentence gather-verb collect) (cond (#t (ZEDdebug-sentence1aa sentence gather-verb (ZEDverb gather-verb) collect)) (else ZEDerr))) (define (ZEDdebug-sentence1aa sentence gather-verb verb collect) (cond ((null? sentence) collect) ((or (eq? verb 'c) (eq? verb 'let*) (and (eqv? #\0 (car gather-verb)) (ZEDdigit? (cadr gather-verb)) (ZEDdigit? (caddr gather-verb)))) (ZEDread-sentence1 (ZEDtails (+ 2 (length gather-verb)) sentence) (cons (ZEDnamefy (list verb)) (cons (string-append "\"" (list->string (ZEDrd ZEDnil append (map ZEDslashefy sentence))) "\"") (cons (list 'ZEDgrr) collect))))) (#t (ZEDdebug-sentence1 (ZEDtails (+ 2 (length gather-verb)) sentence) (cons (ZEDnamefy (list verb)) (cons (string-append "\"" (list->string (ZEDrd ZEDnil append (map ZEDslashefy sentence))) "\"") (cons (list 'ZEDgrr) (cons (list 'ZEDdr) collect)))))) (else ZEDerr))) (define (ZEDdebug-sentence1b sentence gather-noun collect) (cond (#t (ZEDdebug-sentence1 (ZEDtails (length gather-noun) sentence) (cons (ZEDnamefy (ZEDnoun gather-noun)) collect))) (else ZEDerr))) (define (ZEDdebug-sentences sentences) (cond (#t (reverse (ZEDdebug-sentences1 sentences ZEDnil))) (else ZEDerr))) (define (ZEDdebug-sentences1 sentences collect) (cond ((null? sentences) collect) (#t (ZEDdebug-sentences1a sentences (cdr (ZEDgather-verb (car sentences))) collect)) (else ZEDerr))) (define (ZEDdebug-sentences1a sentences gather-verb collect) (cond ((or (equal? gather-verb (list #\p #\r #\1)) (equal? gather-verb (list #\p #\r)) (equal? gather-verb (list #\d #\r #\1)) (equal? gather-verb (list #\d #\r)) (equal? gather-verb (list #\d #\r #\r)) (equal? gather-verb (list #\g #\r)) (equal? gather-verb (list #\g #\r #\r))) (ZEDdebug-sentences1 (cdddr sentences) collect)) (#t (ZEDdebug-sentences1 (cdddr sentences) collect)) (else ZEDerr))) (define (ZEDdigit? character) (cond (#t (or (eqv? #\0 character) (eqv? #\1 character) (eqv? #\2 character) (eqv? #\3 character) (eqv? #\4 character) (eqv? #\5 character) (eqv? #\6 character) (eqv? #\7 character) (eqv? #\8 character) (eqv? #\9 character))) (else ZEDerr))) (define (ZEDdiscard-comments program) (cond (#t (reverse (ZEDdiscard-comments1 program ZEDnil))) (else ZEDerr))) (define (ZEDdiscard-comments1 program collect) (cond ((null? program) collect) (#t (ZEDdiscard-comments1 (cddddr program) (cons (cadddr program) (cons (caddr program) (cons (car program) collect))))) (else ZEDerr))) (define (ZEDdr value) (cond (#t (begin (display (ZEDpr (ZEDdr1 value))) (newline) (newline) value)) (else ZEDerr))) (define (ZEDdr1 value) (cond ((pair? value) (ZEDmp ZEDdr1 (ZEDfirst 64 value))) (#t value) (else ZEDerr))) (define (ZEDdrr value) (cond (#t (begin (display (ZEDpr value)) (newline) (newline) value)) (else ZEDerr))) (define (ZEDfi function list) (cond ((null? list) ZEDnil) ((function (ZED1 list)) (ZEDc (ZED1 list) (ZEDfi function (ZED! list)))) (#t (ZEDfi function (ZED! list))) (else ZEDerr))) (define (ZEDfilter predicate list) (cond (#t (reverse (ZEDfilter1 predicate list ZEDnil))) (else ZEDerr))) (define (ZEDfilter1 predicate list collect) (cond ((null? list) collect) ((predicate (car list)) (ZEDfilter1 predicate (cdr list) (cons (car list) collect))) (#t (ZEDfilter1 predicate (cdr list) collect)) (else ZEDerr))) (define (ZEDfirst integer list) (cond ((not (pair? list)) list) ((zero? integer) ZEDnil) ((> integer 0) (ZEDc (ZED1 list) (ZEDfirst (- integer 1) (ZED! list)))) (else ZEDerr))) (define (ZEDflatten object) (cond (#t (ZEDflatten1 object ZEDnil)) (else ZEDerr))) (define (ZEDflatten1 object collect) (cond ((null? object) collect) ((not (pair? object)) (cons object collect)) (#t (ZEDflatten1 (car object) (append (ZEDflatten1 (cdr object) collect)))) (else ZEDerr))) (define (ZEDflexefy part) (cond ((symbol? part) (ZEDflexefy1 (string->list (symbol->string part)))) ((string? part) (string->symbol part)) ((exact? part) part) (#t (string->number (string-append "#e" (number->string part)))) (else ZEDerr))) (define (ZEDflexefy1 part) (cond ((equal? part (list #\# #\t #\r #\u #\e)) #t) ((equal? part (list #\# #\f #\a #\l #\s #\e)) #f) ((eqv? #\# (car part)) (string->symbol (list->string (append (list #\# #\\) (cdr part))))) (#t (ZEDzedefy (list->string part))) (else ZEDerr))) (define (ZEDforce1 value) (cond ((promise? value) (force value)) (#t value) (else ZEDerr))) (define (ZEDfunction expression) (cond (#t (caar expression)) (else ZEDerr))) (define (ZEDfunction-sort sentences) (cond (#t (ZEDrd ZEDnil append (ZEDsort ZEDclause-less? (ZEDby-four sentences)))) (else ZEDerr))) (define (ZEDfunctionize clause arity-hash) (cond (#t (list 'define (cons (ZEDclause-name clause) (ZEDclause-arguments clause)) (cons 'cond (append (ZEDcondefy (ZEDmap-with ZEDschemefy (ZEDclause-body clause) arity-hash)) (list (list 'else 'ZEDerr)))))) (else ZEDerr))) (define (ZEDgather-count? symbol) (cond (#t (ZEDgather-count?1 (string->list (symbol->string symbol)))) (else ZEDerr))) (define (ZEDgather-count?1 candidate) (cond (#t (and (= 6 (length candidate)) (eqv? #\Z (car candidate)) (eqv? #\E (cadr candidate)) (eqv? #\D (caddr candidate)) (eqv? #\0 (cadddr candidate)) (ZEDdigit? (car (cddddr candidate))) (ZEDdigit? (cadr (cddddr candidate))))) (else ZEDerr))) (define (ZEDgather-noun sentence) (cond ((null? sentence) ZEDnil) ((eqv? #\space (car sentence)) ZEDnil) (#t (cons (car sentence) (ZEDgather-noun (cdr sentence)))) (else ZEDerr))) (define (ZEDgather-verb sentence) (cond ((eqv? #\) (car sentence)) ZEDnil) (#t (cons (car sentence) (ZEDgather-verb (cdr sentence)))) (else ZEDerr))) (define (ZEDgr garbage value) (cond (#t (begin (ZEDdr garbage) value)) (else ZEDerr))) (define (ZEDgrr garbage value) (cond (#t (begin (ZEDdrr garbage) value)) (else ZEDerr))) (define (ZEDid x) (cond (#t x) (else ZEDerr))) (define (ZEDleading-newline program) (cond ((null? program) ZEDnil) ((eqv? #\newline (car program)) (cdr program)) (#t program) (else ZEDerr))) (define (ZEDmap-with function list extra) (cond (#t (reverse (ZEDmap-with1 function list extra ZEDnil))) (else ZEDerr))) (define (ZEDmap-with1 function list extra collect) (cond ((null? list) collect) (#t (ZEDmap-with1 function (cdr list) extra (cons (function (car list) extra) collect))) (else ZEDerr))) (define (ZEDmerge comparator list1 list2) (cond (#t (ZEDmerge1 comparator list1 list2 ZEDnil)) (else ZEDerr))) (define (ZEDmerge1 comparator list1 list2 collect) (cond ((null? list2) (append (reverse collect) list1)) ((null? list1) (append (reverse collect) list2)) ((comparator (car list2) (car list1)) (ZEDmerge1 comparator list1 (cdr list2) (cons (car list2) collect))) (#t (ZEDmerge1 comparator (cdr list1) list2 (cons (car list1) collect))) (else ZEDerr))) (define (ZEDmp function list) (cond ((null? list) ZEDnil) ((pair? list) (ZEDc (function (ZED1 list)) (ZEDmp function (ZED! list)))) (#t (function list)) (else ZEDerr))) (define (ZEDnamefy part) (cond ((pair? part) (list (ZEDsymbolize (car part)))) (#t (ZEDflexefy part)) (else ZEDerr))) (define (ZEDnewline-space program) (cond (#t (ZEDnewline-space1 program)) (else ZEDerr))) (define (ZEDnewline-space-tab-repeats program) (cond (#t (reverse (ZEDnewline-space-tab-repeats1 program ZEDnil))) (else ZEDerr))) (define (ZEDnewline-space-tab-repeats1 program collect) (cond ((or (null? program) (null? (cdr program))) (append program collect)) ((and (eqv? #\newline (car program)) (eqv? #\newline (cadr program))) (ZEDnewline-space-tab-repeats1 (cdr program) collect)) ((and (or (eqv? #\space (car program)) (eqv? #\tab (car program))) (or (eqv? #\space (cadr program)) (eqv? #\tab (cadr program)))) (ZEDnewline-space-tab-repeats1 (cdr program) collect)) (#t (ZEDnewline-space-tab-repeats1 (cdr program) (cons (car program) collect))) (else ZEDerr))) (define (ZEDnewline-space1 program) (cond (#t (cons #\newline (ZEDnewline-space1a program))) (else ZEDerr))) (define (ZEDnewline-space1a program) (cond (#t (ZEDnewline-space1aa program (reverse (ZEDnewline-space1ab program ZEDnil)))) (else ZEDerr))) (define (ZEDnewline-space1aa program transformed) (cond ((equal? program transformed) program) (#t (ZEDnewline-space1a transformed)) (else ZEDerr))) (define (ZEDnewline-space1ab program collect) (cond ((null? program) collect) ((null? (cdr program)) (cons (car program) collect)) ((and (eqv? #\newline (car program)) (or (eqv? #\space (cadr program)) (eqv? #\tab (cadr program)))) (ZEDnewline-space1ab (cdr program) collect)) (#t (ZEDnewline-space1ab (cdr program) (cons (car program) collect))) (else ZEDerr))) (define (ZEDnewlines clauses) (cond (#t (ZEDadd-between-ra (ZEDmap-with ZEDadd-between-ra clauses (list #\newline)) (list #\newline #\newline))) (else ZEDerr))) (define (ZEDnot-return? character) (cond (#t (not (eqv? #\return character))) (else ZEDerr))) (define (ZEDnoun gather-noun) (cond (#t (ZEDnoun1 (list->string gather-noun))) (else ZEDerr))) (define (ZEDnoun-number string number) (cond (#t (ZEDnoun-number1 string (string->list string) number)) (else ZEDerr))) (define (ZEDnoun-number1 string list number) (cond (number number) (#t (ZEDnoun-number1a string list (reverse list))) (else ZEDerr))) (define (ZEDnoun-number1a string list reversed) (cond ((and (eqv? #\" (car list)) (eqv? #\" (car reversed))) (list->string (cdr (reverse (cdr reversed))))) (#t (string->symbol string)) (else ZEDerr))) (define (ZEDnoun1 string) (cond (#t (ZEDnoun-number string (string->number string))) (else ZEDerr))) (define (ZEDpop stack) (cond (#t (cdr stack)) (else ZEDerr))) (define (ZEDpr value) (cond (#t (ZEDpr1 value (open-output-string))) (else ZEDerr))) (define (ZEDpr1 value output-string) (cond (#t (begin (display (ZEDpr1a value) output-string) (get-output-string output-string))) (else ZEDerr))) (define (ZEDpr1a value) (cond ((char? value) (list->string (list #\# value))) ((string? value) (string-append "\"" value "\"")) ((not (pair? value)) value) (#t (cons (ZEDpr1a (ZED1 value)) (ZEDpr1a (ZED! value)))) (else ZEDerr))) (define (ZEDprimitives) (cond (#t '(begin (define-macro (ZEDor a b) `(or ,a ,b)) (define-macro (ZEDand a b) `(and ,a ,b)) (define-macro (ZEDse a b) `(begin ,a ,b)) (define-macro (ZEDc a b) `(cons (delay ,a) (delay ,b))) (define-macro (ZEDquote a) `,a) (define ZEDerr 'err) (define ZEDnil '()))) (else ZEDerr))) (define (ZEDprogramize program arity-hash) (cond (#t (cons 'begin (ZEDmap-with ZEDfunctionize program arity-hash))) (else ZEDerr))) (define (ZEDpush object stack) (cond (#t (cons object stack)) (else ZEDerr))) (define (ZEDrd final function list) (cond ((null? list) final) (#t (function (ZED1 list) (ZEDrd final function (ZED! list)))) (else ZEDerr))) (define (ZEDread-all!) (cond (#t (ZEDread-all!1 (read-char))) (else ZEDerr))) (define (ZEDread-all!1 character) (cond ((eof-object? character) ZEDnil) (#t (cons character (ZEDread-all!))) (else ZEDerr))) (define (ZEDread-sentence sentence) (cond (#t (reverse (ZEDread-sentence1 sentence ZEDnil))) (else ZEDerr))) (define (ZEDread-sentence1 sentence collect) (cond ((null? sentence) collect) ((eqv? #\space (car sentence)) (ZEDread-sentence1 (cdr sentence) collect)) ((eqv? #\( (car sentence)) (ZEDread-sentence1a sentence (ZEDgather-verb (cdr sentence)) collect)) (#t (ZEDread-sentence1b sentence (ZEDgather-noun sentence) collect)) (else ZEDerr))) (define (ZEDread-sentence1a sentence gather-verb collect) (cond (#t (ZEDread-sentence1 (ZEDtails (+ 2 (length gather-verb)) sentence) (cons (ZEDnamefy (list (ZEDverb gather-verb))) collect))) (else ZEDerr))) (define (ZEDread-sentence1b sentence gather-noun collect) (cond (#t (ZEDread-sentence1 (ZEDtails (length gather-noun) sentence) (cons (ZEDnamefy (ZEDnoun gather-noun)) collect))) (else ZEDerr))) (define (ZEDread-sentences sentences) (cond (#t (ZEDread-sentences1 sentences ZEDnil)) (else ZEDerr))) (define (ZEDread-sentences1 sentences collect) (cond (#t (map reverse (ZEDmap-with ZEDread-sentence1 sentences collect))) (else ZEDerr))) (define (ZEDready-clause clause) (cond (#t (cons (caaar clause) (cons (cdar clause) (cdr clause)))) (else ZEDerr))) (define (ZEDready-program program) (cond (#t (map ZEDready-clause program)) (else ZEDerr))) (define (ZEDschemefy expression arity-hash) (cond (#t (list (ZEDschemefy1 (reverse expression) arity-hash (ZEDstack)))) (else ZEDerr))) (define (ZEDschemefy1 expression arity-hash stack) (cond ((zero? (length expression)) (ZEDtop stack)) ((not (ZEDapplication? expression)) (ZEDschemefy1 (ZEDpop expression) arity-hash (ZEDpush (ZEDtop expression) stack))) (#t (ZEDschemefy1a expression arity-hash stack (ZEDfunction expression))) (else ZEDerr))) (define (ZEDschemefy1a expression arity-hash stack function) (cond (#t (ZEDschemefy1aa expression arity-hash stack function (ZEDarity arity-hash function))) (else ZEDerr))) (define (ZEDschemefy1aa expression arity-hash stack function arity) (cond ((ZEDgather-count? function) (ZEDschemefy1 (ZEDpop expression) arity-hash (ZEDpush (ZEDzed->scheme (ZEDfirst arity stack)) (ZEDzed->scheme (ZEDtails arity stack))))) (#t (ZEDschemefy1 (ZEDpop expression) arity-hash (ZEDpush (ZEDpush function (ZEDzed->scheme (ZEDfirst arity stack))) (ZEDzed->scheme (ZEDtails arity stack))))) (else ZEDerr))) (define (ZEDsentence-less? sentence1 sentence2) (cond ((null? sentence2) #f) ((null? sentence1) #t) ((ZEDcharacter-less? (car sentence1) (car sentence2)) #t) ((ZEDcharacter-less? (car sentence2) (car sentence1)) #f) (#t (ZEDsentence-less? (cdr sentence1) (cdr sentence2))) (else ZEDerr))) (define (ZEDsentences program) (cond (#t (ZEDsentences1 program ZEDnil)) (else ZEDerr))) (define (ZEDsentences1 program collect) (cond ((null? program) ZEDnil) ((eqv? #\newline (car program)) (cons (reverse collect) (ZEDsentences1 (cdr program) ZEDnil))) (#t (ZEDsentences1 (cdr program) (cons (car program) collect))) (else ZEDerr))) (define (ZEDslashefy character) (cond ((eqv? #\" character) (list #\\ #\")) ((eqv? #\\ character) (list #\\ #\\)) (#t (list character)) (else ZEDerr))) (define (ZEDsort comparator jumble) (cond (#t (car (ZEDsort2 comparator (ZEDsort1 jumble)))) (else ZEDerr))) (define (ZEDsort1 jumble) (cond (#t (map list jumble)) (else ZEDerr))) (define (ZEDsort2 comparator jumble) (cond ((null? jumble) ZEDnil) ((null? (cdr jumble)) jumble) (#t (ZEDsort2 comparator (cons (ZEDmerge comparator (car jumble) (cadr jumble)) (ZEDsort2 comparator (cddr jumble))))) (else ZEDerr))) (define (ZEDspace-newline program) (cond ((or (null? program) (null? (cdr program))) program) ((and (eqv? #\space (car program)) (eqv? #\newline (cadr program))) (ZEDspace-newline (cdr program))) (#t (cons (car program) (ZEDspace-newline (cdr program)))) (else ZEDerr))) (define (ZEDstack) (cond (#t ZEDnil) (else ZEDerr))) (define (ZEDsymbol-character character) (cond ((char=? character #\@) (list #\@ #\@)) ((char=? character #\[) (list #\@ #\1)) ((char=? character #\]) (list #\@ #\2)) ((char=? character #\{) (list #\@ #\3)) ((char=? character #\}) (list #\@ #\4)) ((char=? character #\') (list #\@ #\q)) ((char=? character #\`) (list #\@ #\Q)) ((char=? character #\,) (list #\@ #\c)) ((char=? character #\:) (list #\@ #\C)) ((char=? character #\;) (list #\@ #\s)) ((char=? character #\\) (list #\@ #\b)) (#t (list character)) (else ZEDerr))) (define (ZEDsymbolize part) (cond ((symbol? part) (ZEDzedefy (symbol->string part))) (#t (string->symbol part)) (else ZEDerr))) (define (ZEDtab-replace program) (cond ((null? program) ZEDnil) ((eqv? #\tab (car program)) (cons #\space (ZEDtab-replace (cdr program)))) (#t (cons (car program) (ZEDtab-replace (cdr program)))) (else ZEDerr))) (define (ZEDtails number list) (cond ((null? list) ZEDnil) ((zero? number) list) ((> number 0) (ZEDtails (- number 1) (cdr list))) (else ZEDerr))) (define (ZEDtop stack) (cond (#t (car stack)) (else ZEDerr))) (define (ZEDverb gather-verb) (cond ((and (not (null? (cdr gather-verb))) (eqv? #\" (car gather-verb)) (eqv? #\" (car (reverse gather-verb)))) (list->string (cdr (reverse (cdr (reverse gather-verb)))))) (#t (string->symbol (list->string gather-verb))) (else ZEDerr))) (define (ZEDwhen-file-exists path) (cond (#t (delete-file path)) (else ZEDerr))) (define (ZEDwrite-all! program) (cond ((null? program) ZEDerr) (#t (begin (write-char (car program)) (ZEDwrite-all! (cdr program)))) (else ZEDerr))) (define (ZEDzed->scheme value) (cond ((not (pair? value)) value) (#t (cons (ZEDzed->scheme (ZED1 value)) (ZEDzed->scheme (ZED! value)))) (else ZEDerr))) (define (ZEDzedefy string) (cond (#t (string->symbol (list->string (append (list #\Z #\E #\D) (ZEDflatten (map ZEDsymbol-character (string->list string))))))) (else ZEDerr))))
