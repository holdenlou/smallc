# smallc
small c,modified then could compiled by morden gcc
i have tested,and worked
type this:
make test
then input test1.c
you could see:
;main(){
main:
;    int i;
        PUSH B
addloc i,-2
;    i = 0;
        LXI H,0
        DAD SP
        PUSH H
        LXI H,0
        POP D
        CALL ccpint
;    test(i);
        LXI H,0
        DAD SP
        CALL ccgint
        PUSH H
        CALL test
        POP B
;}
        POP B
