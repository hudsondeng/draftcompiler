grammar SystemRDL;

// TODO function


root : component_def*
     ;


component_def : enum_def
              | reg_def
              | reg_file_def
              ;


reg_def : 'reg' id LBRACE RBRACE SEMI
        ;


reg_file_def : 'regfile' id LBRACE RBRACE SEMI
             ;


enum_def : 'enum' id enum_body SEMI
         ;


enum_body : LBRACE (enum_entry)+ RBRACE
          ;


enum_entry : id EQ sized_numeric SEMI ; // TODO universal_property


id : ID ;


sized_numeric : INT ; // TODO


INT : [0-9]+ ;
ID : [a-zA-Z_]([a-zA-Z0-9_])* ;
LETTER : [a-zA-Z]+ ;

WS : [ \t\r\n]+ -> skip ;
LINE_COMMENT : '//' .*? '\r'? '\n' -> skip ; // channel(HIDDEN) ;
BLOCK_COMMENT : '/*' .*? '*/' -> skip ; // channel(HIDDEN) ;

SEMI : ';' ;
EQ : '=' ;
LBRACE : '{' ;
RBRACE : '}' ;

