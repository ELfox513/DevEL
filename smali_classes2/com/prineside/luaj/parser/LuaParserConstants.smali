.class public interface abstract Lcom/prineside/luaj/parser/LuaParserConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AND:I = 0x1d

.field public static final BREAK:I = 0x1e

.field public static final CHAR:I = 0x43

.field public static final CHARSTRING:I = 0x3e

.field public static final COMMENT:I = 0x11

.field public static final DBCOLON:I = 0x41

.field public static final DECIMAL:I = 0x40

.field public static final DEFAULT:I = 0x0

.field public static final DIGIT:I = 0x37

.field public static final DO:I = 0x1f

.field public static final ELSE:I = 0x20

.field public static final ELSEIF:I = 0x21

.field public static final END:I = 0x22

.field public static final EOF:I = 0x0

.field public static final EXP:I = 0x38

.field public static final FALSE:I = 0x23

.field public static final FLOAT:I = 0x35

.field public static final FNUM:I = 0x36

.field public static final FOR:I = 0x24

.field public static final FUNCTION:I = 0x25

.field public static final GOTO:I = 0x26

.field public static final HEX:I = 0x39

.field public static final HEXDIGIT:I = 0x3b

.field public static final HEXEXP:I = 0x3c

.field public static final HEXNUM:I = 0x3a

.field public static final IF:I = 0x27

.field public static final IN:I = 0x28

.field public static final IN_COMMENT:I = 0x1

.field public static final IN_LC0:I = 0x2

.field public static final IN_LC1:I = 0x3

.field public static final IN_LC2:I = 0x4

.field public static final IN_LC3:I = 0x5

.field public static final IN_LCN:I = 0x6

.field public static final IN_LS0:I = 0x7

.field public static final IN_LS1:I = 0x8

.field public static final IN_LS2:I = 0x9

.field public static final IN_LS3:I = 0xa

.field public static final IN_LSN:I = 0xb

.field public static final LF:I = 0x44

.field public static final LOCAL:I = 0x29

.field public static final LONGCOMMENT0:I = 0x12

.field public static final LONGCOMMENT1:I = 0x13

.field public static final LONGCOMMENT2:I = 0x14

.field public static final LONGCOMMENT3:I = 0x15

.field public static final LONGCOMMENTN:I = 0x16

.field public static final LONGSTRING0:I = 0x17

.field public static final LONGSTRING1:I = 0x18

.field public static final LONGSTRING2:I = 0x19

.field public static final LONGSTRING3:I = 0x1a

.field public static final LONGSTRINGN:I = 0x1b

.field public static final NAME:I = 0x33

.field public static final NIL:I = 0x2a

.field public static final NOT:I = 0x2b

.field public static final NUMBER:I = 0x34

.field public static final OR:I = 0x2c

.field public static final QUOTED:I = 0x3f

.field public static final REPEAT:I = 0x2e

.field public static final RETURN:I = 0x2d

.field public static final STRING:I = 0x3d

.field public static final THEN:I = 0x2f

.field public static final TRUE:I = 0x30

.field public static final UNICODE:I = 0x42

.field public static final UNTIL:I = 0x31

.field public static final WHILE:I = 0x32

.field public static final tokenImage:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const/16 v0, 0x5f

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "<EOF>"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\" \""

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\"\\t\""

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\"\\n\""

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\"\\r\""

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\"\\f\""

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\"--[[\""

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\"--[=[\""

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\"--[==[\""

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\"--[===[\""

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "<token of kind 10>"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\"[[\""

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\"[=[\""

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\"[==[\""

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\"[===[\""

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "<token of kind 15>"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\"--\""

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "<COMMENT>"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\"]]\""

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v3, "\"]=]\""

    aput-object v3, v0, v1

    const/16 v1, 0x14

    const-string v4, "\"]==]\""

    aput-object v4, v0, v1

    const/16 v1, 0x15

    const-string v5, "\"]===]\""

    aput-object v5, v0, v1

    const/16 v1, 0x16

    const-string v6, "<LONGCOMMENTN>"

    aput-object v6, v0, v1

    const/16 v1, 0x17

    aput-object v2, v0, v1

    const/16 v1, 0x18

    aput-object v3, v0, v1

    const/16 v1, 0x19

    aput-object v4, v0, v1

    const/16 v1, 0x1a

    aput-object v5, v0, v1

    const/16 v1, 0x1b

    const-string v2, "<LONGSTRINGN>"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "<token of kind 28>"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\"and\""

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\"break\""

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\"do\""

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\"else\""

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\"elseif\""

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "\"end\""

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "\"false\""

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\"for\""

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "\"function\""

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "\"goto\""

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "\"if\""

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "\"in\""

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "\"local\""

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "\"nil\""

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "\"not\""

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "\"or\""

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "\"return\""

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "\"repeat\""

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "\"then\""

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "\"true\""

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "\"until\""

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "\"while\""

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "<NAME>"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "<NUMBER>"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "<FLOAT>"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "<FNUM>"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "<DIGIT>"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "<EXP>"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "<HEX>"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "<HEXNUM>"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "<HEXDIGIT>"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "<HEXEXP>"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "<STRING>"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "<CHARSTRING>"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "<QUOTED>"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "<DECIMAL>"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "\"::\""

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "<UNICODE>"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "<CHAR>"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "<LF>"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "\"#\""

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "\";\""

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "\"=\""

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "\",\""

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "\".\""

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "\":\""

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "\"(\""

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "\")\""

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "\"[\""

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "\"]\""

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "\"...\""

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "\"{\""

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "\"}\""

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "\"+\""

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "\"-\""

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "\"*\""

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "\"/\""

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "\"^\""

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "\"%\""

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "\"..\""

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "\"<\""

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "\"<=\""

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "\">\""

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "\">=\""

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "\"==\""

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "\"~=\""

    aput-object v2, v0, v1

    sput-object v0, Lcom/prineside/luaj/parser/LuaParserConstants;->tokenImage:[Ljava/lang/String;

    return-void
.end method
