.class public Lcom/prineside/luaj/Print;
.super Lcom/prineside/luaj/Lua;
.source "SourceFile"


# static fields
.field public static final OPNAMES:[Ljava/lang/String;

.field public static ps:Ljava/io/PrintStream;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sput-object v0, Lcom/prineside/luaj/Print;->ps:Ljava/io/PrintStream;

    const/16 v0, 0x29

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "MOVE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "LOADK"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "LOADKX"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "LOADBOOL"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "LOADNIL"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "GETUPVAL"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "GETTABUP"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "GETTABLE"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "SETTABUP"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "SETUPVAL"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "SETTABLE"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "NEWTABLE"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "SELF"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "ADD"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "SUB"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "MUL"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "DIV"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "MOD"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "POW"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "UNM"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "NOT"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "LEN"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "CONCAT"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "JMP"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "EQ"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "LT"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "LE"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "TEST"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "TESTSET"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "CALL"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "TAILCALL"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "RETURN"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "FORLOOP"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "FORPREP"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "TFORCALL"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "TFORLOOP"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "SETLIST"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "CLOSURE"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "VARARG"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "EXTRAARG"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const/4 v2, 0x0

    aput-object v2, v0, v1

    sput-object v0, Lcom/prineside/luaj/Print;->OPNAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/Lua;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p1, :cond_0

    sget-object v0, Lcom/prineside/luaj/Print;->ps:Ljava/io/PrintStream;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/prineside/luaj/Print;->ps:Ljava/io/PrintStream;

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sub-int/2addr p1, v0

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_1

    sget-object p0, Lcom/prineside/luaj/Print;->ps:Ljava/io/PrintStream;

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(C)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static b(Lcom/prineside/luaj/Prototype;I)I
    .locals 1

    if-lez p1, :cond_0

    iget-object p0, p0, Lcom/prineside/luaj/Prototype;->lineinfo:[I

    if-eqz p0, :cond_0

    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget p0, p0, p1

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static c(Lcom/prineside/luaj/Prototype;)Ljava/lang/String;
    .locals 0

    const-string p0, "Proto"

    return-object p0
.end method

.method public static d(Ljava/io/PrintStream;Lcom/prineside/luaj/Prototype;I)V
    .locals 1

    iget-object p1, p1, Lcom/prineside/luaj/Prototype;->k:[Lcom/prineside/luaj/LuaValue;

    array-length v0, p1

    if-ge p2, v0, :cond_0

    aget-object p1, p1, p2

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UNKNOWN_CONST_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object p1

    :goto_0
    invoke-static {p0, p1}, Lcom/prineside/luaj/Print;->k(Ljava/io/PrintStream;Lcom/prineside/luaj/LuaValue;)V

    return-void
.end method

.method public static e(Lcom/prineside/luaj/Prototype;)V
    .locals 6

    iget-object v0, p0, Lcom/prineside/luaj/Prototype;->k:[Lcom/prineside/luaj/LuaValue;

    array-length v0, v0

    sget-object v1, Lcom/prineside/luaj/Print;->ps:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "constants ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/prineside/luaj/Print;->c(Lcom/prineside/luaj/Prototype;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    sget-object v2, Lcom/prineside/luaj/Print;->ps:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v2, Lcom/prineside/luaj/Print;->ps:Ljava/io/PrintStream;

    iget-object v3, p0, Lcom/prineside/luaj/Prototype;->k:[Lcom/prineside/luaj/LuaValue;

    aget-object v1, v3, v1

    invoke-static {v2, v1}, Lcom/prineside/luaj/Print;->k(Ljava/io/PrintStream;Lcom/prineside/luaj/LuaValue;)V

    sget-object v1, Lcom/prineside/luaj/Print;->ps:Ljava/io/PrintStream;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    move v1, v5

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static f(Lcom/prineside/luaj/Prototype;)V
    .locals 5

    iget-object v0, p0, Lcom/prineside/luaj/Prototype;->source:Lcom/prineside/luaj/LuaString;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "\u001bLua"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "(bstring)"

    goto :goto_1

    :cond_1
    const-string v0, "(string)"

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget v1, p0, Lcom/prineside/luaj/Prototype;->linedefined:I

    if-nez v1, :cond_3

    const-string v1, "main"

    goto :goto_2

    :cond_3
    const-string v1, "function"

    :goto_2
    sget-object v2, Lcom/prineside/luaj/Print;->ps:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " <"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/prineside/luaj/Prototype;->linedefined:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/prineside/luaj/Prototype;->lastlinedefined:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "> ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/prineside/luaj/Prototype;->code:[I

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " instructions, "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/prineside/luaj/Prototype;->code:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes at "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/prineside/luaj/Print;->c(Lcom/prineside/luaj/Prototype;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/prineside/luaj/Print;->ps:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/prineside/luaj/Prototype;->numparams:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " param, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/prineside/luaj/Prototype;->maxstacksize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " slot, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/prineside/luaj/Prototype;->upvalues:[Lcom/prineside/luaj/Upvaldesc;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " upvalue, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/prineside/luaj/Print;->ps:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/prineside/luaj/Prototype;->locvars:[Lcom/prineside/luaj/LocVars;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " local, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/prineside/luaj/Prototype;->k:[Lcom/prineside/luaj/LuaValue;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " constant, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/prineside/luaj/Prototype;->p:[Lcom/prineside/luaj/Prototype;

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " function\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method public static g(Lcom/prineside/luaj/Prototype;)V
    .locals 6

    iget-object v0, p0, Lcom/prineside/luaj/Prototype;->locvars:[Lcom/prineside/luaj/LocVars;

    array-length v0, v0

    sget-object v1, Lcom/prineside/luaj/Print;->ps:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "locals ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/prineside/luaj/Print;->c(Lcom/prineside/luaj/Prototype;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    sget-object v2, Lcom/prineside/luaj/Print;->ps:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/prineside/luaj/Prototype;->locvars:[Lcom/prineside/luaj/LocVars;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/prineside/luaj/LocVars;->varname:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/prineside/luaj/Prototype;->locvars:[Lcom/prineside/luaj/LocVars;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/prineside/luaj/LocVars;->startpc:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/prineside/luaj/Prototype;->locvars:[Lcom/prineside/luaj/LocVars;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/prineside/luaj/LocVars;->endpc:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static h(Ljava/io/PrintStream;Lcom/prineside/luaj/LuaString;)V
    .locals 6

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(C)V

    iget v1, p1, Lcom/prineside/luaj/LuaString;->m_length:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v3, p1, Lcom/prineside/luaj/LuaString;->m_bytes:[B

    iget v4, p1, Lcom/prineside/luaj/LuaString;->m_offset:I

    add-int/2addr v4, v2

    aget-byte v3, v3, v4

    const/16 v4, 0x20

    const/16 v5, 0x5c

    if-lt v3, v4, :cond_0

    const/16 v4, 0x7e

    if-gt v3, v4, :cond_0

    if-eq v3, v0, :cond_0

    if-eq v3, v5, :cond_0

    int-to-char v3, v3

    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->print(C)V

    goto :goto_1

    :cond_0
    if-eq v3, v0, :cond_2

    if-eq v3, v5, :cond_1

    packed-switch v3, :pswitch_data_0

    invoke-virtual {p0, v5}, Ljava/io/PrintStream;->print(C)V

    and-int/lit16 v3, v3, 0x4e7

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_0
    const-string v3, "\\r"

    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    const-string v3, "\\f"

    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    const-string v3, "\\v"

    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    const-string v3, "\\n"

    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_4
    const-string v3, "\\t"

    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_5
    const-string v3, "\\b"

    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_6
    const-string v3, "\\a"

    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v3, "\\\\"

    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v3, "\\\""

    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(C)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static i(Lcom/prineside/luaj/Prototype;)V
    .locals 5

    iget-object v0, p0, Lcom/prineside/luaj/Prototype;->upvalues:[Lcom/prineside/luaj/Upvaldesc;

    array-length v0, v0

    sget-object v1, Lcom/prineside/luaj/Print;->ps:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upvalues ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/prineside/luaj/Print;->c(Lcom/prineside/luaj/Prototype;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    sget-object v2, Lcom/prineside/luaj/Print;->ps:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/prineside/luaj/Prototype;->upvalues:[Lcom/prineside/luaj/Upvaldesc;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static j(Ljava/io/PrintStream;Lcom/prineside/luaj/Upvaldesc;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-short v1, p1, Lcom/prineside/luaj/Upvaldesc;->idx:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/prineside/luaj/Upvaldesc;->name:Lcom/prineside/luaj/LuaString;

    invoke-static {p0, p1}, Lcom/prineside/luaj/Print;->k(Ljava/io/PrintStream;Lcom/prineside/luaj/LuaValue;)V

    return-void
.end method

.method public static k(Ljava/io/PrintStream;Lcom/prineside/luaj/LuaValue;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "null"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->type()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/prineside/luaj/LuaString;

    invoke-static {p0, p1}, Lcom/prineside/luaj/Print;->h(Ljava/io/PrintStream;Lcom/prineside/luaj/LuaString;)V

    :goto_0
    return-void
.end method

.method public static print(Lcom/prineside/luaj/Prototype;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/prineside/luaj/Print;->printFunction(Lcom/prineside/luaj/Prototype;Z)V

    return-void
.end method

.method public static printCode(Lcom/prineside/luaj/Prototype;)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/luaj/Prototype;->code:[I

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-static {p0, v1}, Lcom/prineside/luaj/Print;->printOpCode(Lcom/prineside/luaj/Prototype;I)I

    move-result v1

    sget-object v2, Lcom/prineside/luaj/Print;->ps:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static printFunction(Lcom/prineside/luaj/Prototype;Z)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/luaj/Prototype;->p:[Lcom/prineside/luaj/Prototype;

    array-length v0, v0

    invoke-static {p0}, Lcom/prineside/luaj/Print;->f(Lcom/prineside/luaj/Prototype;)V

    invoke-static {p0}, Lcom/prineside/luaj/Print;->printCode(Lcom/prineside/luaj/Prototype;)V

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/prineside/luaj/Print;->e(Lcom/prineside/luaj/Prototype;)V

    invoke-static {p0}, Lcom/prineside/luaj/Print;->g(Lcom/prineside/luaj/Prototype;)V

    invoke-static {p0}, Lcom/prineside/luaj/Print;->i(Lcom/prineside/luaj/Prototype;)V

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/prineside/luaj/Prototype;->p:[Lcom/prineside/luaj/Prototype;

    aget-object v2, v2, v1

    invoke-static {v2, p1}, Lcom/prineside/luaj/Print;->printFunction(Lcom/prineside/luaj/Prototype;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static printOpCode(Lcom/prineside/luaj/Prototype;I)I
    .locals 1

    sget-object v0, Lcom/prineside/luaj/Print;->ps:Ljava/io/PrintStream;

    invoke-static {v0, p0, p1}, Lcom/prineside/luaj/Print;->printOpCode(Ljava/io/PrintStream;Lcom/prineside/luaj/Prototype;I)I

    move-result p0

    return p0
.end method

.method public static printOpCode(Ljava/io/PrintStream;Lcom/prineside/luaj/Prototype;I)I
    .locals 13

    iget-object v0, p1, Lcom/prineside/luaj/Prototype;->code:[I

    aget v1, v0, p2

    invoke-static {v1}, Lcom/prineside/luaj/Lua;->GET_OPCODE(I)I

    move-result v2

    invoke-static {v1}, Lcom/prineside/luaj/Lua;->GETARG_A(I)I

    move-result v3

    invoke-static {v1}, Lcom/prineside/luaj/Lua;->GETARG_B(I)I

    move-result v4

    invoke-static {v1}, Lcom/prineside/luaj/Lua;->GETARG_C(I)I

    move-result v5

    invoke-static {v1}, Lcom/prineside/luaj/Lua;->GETARG_Bx(I)I

    move-result v6

    invoke-static {v1}, Lcom/prineside/luaj/Lua;->GETARG_sBx(I)I

    move-result v1

    invoke-static {p1, p2}, Lcom/prineside/luaj/Print;->b(Lcom/prineside/luaj/Prototype;I)I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, p2, 0x1

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    if-lez v7, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "["

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]  "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v7, "[-]  "

    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_0
    sget-object v7, Lcom/prineside/luaj/Print;->OPNAMES:[Ljava/lang/String;

    array-length v8, v7

    const/4 v11, 0x1

    sub-int/2addr v8, v11

    if-lt v2, v8, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UNKNOWN_OP_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v7, v2

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/prineside/luaj/Lua;->getOpMode(I)I

    move-result v7

    const/4 v8, 0x2

    const-string v9, " "

    if-eqz v7, :cond_6

    if-eq v7, v11, :cond_4

    if-eq v7, v8, :cond_2

    goto/16 :goto_3

    :cond_2
    const/16 v7, 0x17

    if-ne v2, v7, :cond_3

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->print(I)V

    goto/16 :goto_3

    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_4
    invoke-static {v2}, Lcom/prineside/luaj/Lua;->getBMode(I)I

    move-result v7

    const/4 v12, 0x3

    if-ne v7, v12, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rsub-int/lit8 v12, v6, -0x1

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->print(I)V

    invoke-static {v2}, Lcom/prineside/luaj/Lua;->getBMode(I)I

    move-result v7

    if-eqz v7, :cond_8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/prineside/luaj/Lua;->ISK(I)Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-static {v4}, Lcom/prineside/luaj/Lua;->INDEXK(I)I

    move-result v12

    rsub-int/lit8 v12, v12, -0x1

    goto :goto_1

    :cond_7
    move v12, v4

    :goto_1
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_8
    invoke-static {v2}, Lcom/prineside/luaj/Lua;->getCMode(I)I

    move-result v7

    if-eqz v7, :cond_a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/prineside/luaj/Lua;->ISK(I)Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-static {v5}, Lcom/prineside/luaj/Lua;->INDEXK(I)I

    move-result v12

    rsub-int/lit8 v12, v12, -0x1

    goto :goto_2

    :cond_9
    move v12, v5

    :goto_2
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_a
    :goto_3
    const-string v7, "  ; "

    if-eq v2, v11, :cond_18

    const/16 v11, 0x12

    const-string v12, "-"

    if-eq v2, v11, :cond_14

    const/16 v11, 0x20

    if-eq v2, v11, :cond_13

    const/16 v11, 0x21

    if-eq v2, v11, :cond_13

    const-string v11, "UNKNOWN_UPVALUE_"

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    goto/16 :goto_8

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  ; is_vararg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/prineside/luaj/Prototype;->is_vararg:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_1
    iget-object v0, p1, Lcom/prineside/luaj/Prototype;->p:[Lcom/prineside/luaj/Prototype;

    array-length v0, v0

    if-ge v6, v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/prineside/luaj/Prototype;->p:[Lcom/prineside/luaj/Prototype;

    aget-object p1, p1, v6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  ; UNKNOWN_PROTYPE_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_2
    if-nez v5, :cond_c

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p2, v0, v10

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " (stored in the next OP)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    move p2, v10

    goto/16 :goto_8

    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_3
    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/prineside/luaj/Prototype;->upvalues:[Lcom/prineside/luaj/Upvaldesc;

    array-length v1, v0

    if-ge v3, v1, :cond_d

    aget-object v0, v0, v3

    invoke-static {p0, v0}, Lcom/prineside/luaj/Print;->j(Ljava/io/PrintStream;Lcom/prineside/luaj/Upvaldesc;)V

    goto :goto_4

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_4
    invoke-virtual {p0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/prineside/luaj/Lua;->ISK(I)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {v4}, Lcom/prineside/luaj/Lua;->INDEXK(I)I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/prineside/luaj/Print;->d(Ljava/io/PrintStream;Lcom/prineside/luaj/Prototype;I)V

    goto :goto_5

    :cond_e
    invoke-virtual {p0, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_5
    invoke-virtual {p0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/prineside/luaj/Lua;->ISK(I)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {v5}, Lcom/prineside/luaj/Lua;->INDEXK(I)I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/prineside/luaj/Print;->d(Ljava/io/PrintStream;Lcom/prineside/luaj/Prototype;I)V

    goto/16 :goto_8

    :cond_f
    invoke-virtual {p0, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_4
    invoke-static {v5}, Lcom/prineside/luaj/Lua;->ISK(I)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/prineside/luaj/Lua;->INDEXK(I)I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/prineside/luaj/Print;->d(Ljava/io/PrintStream;Lcom/prineside/luaj/Prototype;I)V

    goto/16 :goto_8

    :pswitch_5
    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/prineside/luaj/Prototype;->upvalues:[Lcom/prineside/luaj/Upvaldesc;

    array-length v1, v0

    if-ge v4, v1, :cond_10

    aget-object v0, v0, v4

    invoke-static {p0, v0}, Lcom/prineside/luaj/Print;->j(Ljava/io/PrintStream;Lcom/prineside/luaj/Upvaldesc;)V

    goto :goto_6

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_6
    invoke-virtual {p0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/prineside/luaj/Lua;->ISK(I)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {v5}, Lcom/prineside/luaj/Lua;->INDEXK(I)I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/prineside/luaj/Print;->d(Ljava/io/PrintStream;Lcom/prineside/luaj/Prototype;I)V

    goto/16 :goto_8

    :cond_11
    invoke-virtual {p0, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_6
    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/prineside/luaj/Prototype;->upvalues:[Lcom/prineside/luaj/Upvaldesc;

    array-length v0, p1

    if-ge v4, v0, :cond_12

    aget-object p1, p1, v4

    invoke-static {p0, p1}, Lcom/prineside/luaj/Print;->j(Ljava/io/PrintStream;Lcom/prineside/luaj/Upvaldesc;)V

    goto :goto_8

    :cond_12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_8

    :cond_13
    :pswitch_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  ; to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v1, p2

    add-int/2addr v1, v8

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_8

    :cond_14
    :pswitch_8
    invoke-static {v4}, Lcom/prineside/luaj/Lua;->ISK(I)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {v5}, Lcom/prineside/luaj/Lua;->ISK(I)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_15
    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/prineside/luaj/Lua;->ISK(I)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {v4}, Lcom/prineside/luaj/Lua;->INDEXK(I)I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/prineside/luaj/Print;->d(Ljava/io/PrintStream;Lcom/prineside/luaj/Prototype;I)V

    goto :goto_7

    :cond_16
    invoke-virtual {p0, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_7
    invoke-virtual {p0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/prineside/luaj/Lua;->ISK(I)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {v5}, Lcom/prineside/luaj/Lua;->INDEXK(I)I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/prineside/luaj/Print;->d(Ljava/io/PrintStream;Lcom/prineside/luaj/Prototype;I)V

    goto :goto_8

    :cond_17
    invoke-virtual {p0, v12}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_8

    :cond_18
    invoke-virtual {p0, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-static {p0, p1, v6}, Lcom/prineside/luaj/Print;->d(Ljava/io/PrintStream;Lcom/prineside/luaj/Prototype;I)V

    :cond_19
    :goto_8
    return p2

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_4
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x17
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x24
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static printStack([Lcom/prineside/luaj/LuaValue;ILcom/prineside/luaj/Varargs;)V
    .locals 7

    sget-object v0, Lcom/prineside/luaj/Print;->ps:Ljava/io/PrintStream;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(C)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_7

    aget-object v2, p0, v1

    if-nez v2, :cond_0

    sget-object v2, Lcom/prineside/luaj/Print;->ps:Ljava/io/PrintStream;

    const-string v3, "null"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v2}, Lcom/prineside/luaj/LuaValue;->type()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_4

    const/4 v4, 0x6

    if-eq v3, v4, :cond_3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_1

    sget-object v3, Lcom/prineside/luaj/Print;->ps:Ljava/io/PrintStream;

    invoke-virtual {v2}, Lcom/prineside/luaj/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v2}, Lcom/prineside/luaj/LuaValue;->touserdata()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x2e

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/prineside/luaj/Print;->ps:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    sget-object v3, Lcom/prineside/luaj/Print;->ps:Ljava/io/PrintStream;

    invoke-virtual {v2}, Lcom/prineside/luaj/LuaValue;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    sget-object v3, Lcom/prineside/luaj/Print;->ps:Ljava/io/PrintStream;

    invoke-virtual {v2}, Lcom/prineside/luaj/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Lcom/prineside/luaj/LuaValue;->checkstring()Lcom/prineside/luaj/LuaString;

    move-result-object v2

    sget-object v3, Lcom/prineside/luaj/Print;->ps:Ljava/io/PrintStream;

    invoke-virtual {v2}, Lcom/prineside/luaj/LuaString;->length()I

    move-result v4

    const/16 v5, 0x30

    if-ge v4, v5, :cond_5

    invoke-virtual {v2}, Lcom/prineside/luaj/LuaString;->tojstring()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x20

    invoke-virtual {v2, v0, v5}, Lcom/prineside/luaj/LuaString;->substring(II)Lcom/prineside/luaj/LuaString;

    move-result-object v6

    invoke-virtual {v6}, Lcom/prineside/luaj/LuaString;->tojstring()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "...+"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/prineside/luaj/LuaString;->length()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "b"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    if-ne v1, p1, :cond_6

    sget-object v2, Lcom/prineside/luaj/Print;->ps:Ljava/io/PrintStream;

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(C)V

    :cond_6
    sget-object v2, Lcom/prineside/luaj/Print;->ps:Ljava/io/PrintStream;

    const-string v3, " | "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    sget-object p0, Lcom/prineside/luaj/Print;->ps:Ljava/io/PrintStream;

    invoke-virtual {p0, p2}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    return-void
.end method

.method public static printState(Lcom/prineside/luaj/LuaClosure;I[Lcom/prineside/luaj/LuaValue;ILcom/prineside/luaj/Varargs;)V
    .locals 3

    sget-object v0, Lcom/prineside/luaj/Print;->ps:Ljava/io/PrintStream;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/PrintStream;

    invoke-direct {v2, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    sput-object v2, Lcom/prineside/luaj/Print;->ps:Ljava/io/PrintStream;

    iget-object p0, p0, Lcom/prineside/luaj/LuaClosure;->p:Lcom/prineside/luaj/Prototype;

    invoke-static {p0, p1}, Lcom/prineside/luaj/Print;->printOpCode(Lcom/prineside/luaj/Prototype;I)I

    sget-object p0, Lcom/prineside/luaj/Print;->ps:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/PrintStream;->flush()V

    sget-object p0, Lcom/prineside/luaj/Print;->ps:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/PrintStream;->close()V

    sput-object v0, Lcom/prineside/luaj/Print;->ps:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x32

    invoke-static {p0, p1}, Lcom/prineside/luaj/Print;->a(Ljava/lang/String;I)V

    invoke-static {p2, p3, p4}, Lcom/prineside/luaj/Print;->printStack([Lcom/prineside/luaj/LuaValue;ILcom/prineside/luaj/Varargs;)V

    sget-object p0, Lcom/prineside/luaj/Print;->ps:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    return-void
.end method
