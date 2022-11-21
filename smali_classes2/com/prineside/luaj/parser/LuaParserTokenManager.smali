.class public Lcom/prineside/luaj/parser/LuaParserTokenManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/luaj/parser/LuaParserConstants;


# static fields
.field public static final jjnewLexState:[I

.field public static final jjstrLiteralImages:[Ljava/lang/String;

.field public static final lexStateNames:[Ljava/lang/String;

.field public static final n:[J

.field public static final o:[J

.field public static final p:[I

.field public static final q:[J

.field public static final r:[J

.field public static final s:[J

.field public static final t:[J


# instance fields
.field public a:Lcom/prineside/luaj/parser/SimpleCharStream;

.field public final b:[I

.field public final c:[I

.field public final d:Ljava/lang/StringBuffer;

.field public debugStream:Ljava/io/PrintStream;

.field public e:Ljava/lang/StringBuffer;

.field public f:I

.field public g:C

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I


# direct methods
.method public static constructor <clinit>()V
    .locals 18

    const/4 v0, 0x4

    new-array v1, v0, [J

    fill-array-data v1, :array_0

    sput-object v1, Lcom/prineside/luaj/parser/LuaParserTokenManager;->n:[J

    new-array v1, v0, [J

    fill-array-data v1, :array_1

    sput-object v1, Lcom/prineside/luaj/parser/LuaParserTokenManager;->o:[J

    const/16 v1, 0x2d

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    sput-object v2, Lcom/prineside/luaj/parser/LuaParserTokenManager;->p:[I

    const/16 v2, 0x5f

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, ""

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    const/4 v6, 0x0

    aput-object v6, v3, v4

    const/4 v7, 0x2

    aput-object v6, v3, v7

    const/4 v8, 0x3

    aput-object v6, v3, v8

    aput-object v6, v3, v0

    const/4 v9, 0x5

    aput-object v6, v3, v9

    const/4 v10, 0x6

    aput-object v6, v3, v10

    const/4 v11, 0x7

    aput-object v6, v3, v11

    const/16 v12, 0x8

    aput-object v6, v3, v12

    const/16 v13, 0x9

    aput-object v6, v3, v13

    const/16 v14, 0xa

    aput-object v6, v3, v14

    const/16 v15, 0xb

    aput-object v6, v3, v15

    const/16 v2, 0xc

    aput-object v6, v3, v2

    const/16 v16, 0xd

    aput-object v6, v3, v16

    const/16 v16, 0xe

    aput-object v6, v3, v16

    const/16 v16, 0xf

    aput-object v6, v3, v16

    const/16 v16, 0x10

    aput-object v6, v3, v16

    const/16 v16, 0x11

    aput-object v6, v3, v16

    const/16 v16, 0x12

    aput-object v6, v3, v16

    const/16 v16, 0x13

    aput-object v6, v3, v16

    const/16 v16, 0x14

    aput-object v6, v3, v16

    const/16 v16, 0x15

    aput-object v6, v3, v16

    const/16 v16, 0x16

    aput-object v6, v3, v16

    const/16 v16, 0x17

    aput-object v6, v3, v16

    const/16 v16, 0x18

    aput-object v6, v3, v16

    const/16 v16, 0x19

    aput-object v6, v3, v16

    const/16 v16, 0x1a

    aput-object v6, v3, v16

    const/16 v16, 0x1b

    aput-object v6, v3, v16

    const/16 v16, 0x1c

    aput-object v6, v3, v16

    const/16 v16, 0x1d

    const-string v17, "and"

    aput-object v17, v3, v16

    const/16 v16, 0x1e

    const-string v17, "break"

    aput-object v17, v3, v16

    const/16 v16, 0x1f

    const-string v17, "do"

    aput-object v17, v3, v16

    const/16 v16, 0x20

    const-string v17, "else"

    aput-object v17, v3, v16

    const/16 v16, 0x21

    const-string v17, "elseif"

    aput-object v17, v3, v16

    const/16 v16, 0x22

    const-string v17, "end"

    aput-object v17, v3, v16

    const/16 v16, 0x23

    const-string v17, "false"

    aput-object v17, v3, v16

    const/16 v16, 0x24

    const-string v17, "for"

    aput-object v17, v3, v16

    const/16 v16, 0x25

    const-string v17, "function"

    aput-object v17, v3, v16

    const/16 v16, 0x26

    const-string v17, "goto"

    aput-object v17, v3, v16

    const/16 v16, 0x27

    const-string v17, "if"

    aput-object v17, v3, v16

    const/16 v16, 0x28

    const-string v17, "in"

    aput-object v17, v3, v16

    const/16 v16, 0x29

    const-string v17, "local"

    aput-object v17, v3, v16

    const/16 v16, 0x2a

    const-string v17, "nil"

    aput-object v17, v3, v16

    const/16 v16, 0x2b

    const-string v17, "not"

    aput-object v17, v3, v16

    const/16 v16, 0x2c

    const-string v17, "or"

    aput-object v17, v3, v16

    const-string v16, "return"

    aput-object v16, v3, v1

    const/16 v1, 0x2e

    const-string v16, "repeat"

    aput-object v16, v3, v1

    const/16 v1, 0x2f

    const-string v16, "then"

    aput-object v16, v3, v1

    const/16 v1, 0x30

    const-string v16, "true"

    aput-object v16, v3, v1

    const/16 v1, 0x31

    const-string v16, "until"

    aput-object v16, v3, v1

    const/16 v1, 0x32

    const-string v16, "while"

    aput-object v16, v3, v1

    const/16 v1, 0x33

    aput-object v6, v3, v1

    const/16 v1, 0x34

    aput-object v6, v3, v1

    const/16 v1, 0x35

    aput-object v6, v3, v1

    const/16 v1, 0x36

    aput-object v6, v3, v1

    const/16 v1, 0x37

    aput-object v6, v3, v1

    const/16 v1, 0x38

    aput-object v6, v3, v1

    const/16 v1, 0x39

    aput-object v6, v3, v1

    const/16 v1, 0x3a

    aput-object v6, v3, v1

    const/16 v1, 0x3b

    aput-object v6, v3, v1

    const/16 v1, 0x3c

    aput-object v6, v3, v1

    const/16 v1, 0x3d

    aput-object v6, v3, v1

    const/16 v1, 0x3e

    aput-object v6, v3, v1

    const/16 v1, 0x3f

    aput-object v6, v3, v1

    const/16 v1, 0x40

    aput-object v6, v3, v1

    const/16 v1, 0x41

    const-string v16, "::"

    aput-object v16, v3, v1

    const/16 v1, 0x42

    aput-object v6, v3, v1

    const/16 v1, 0x43

    aput-object v6, v3, v1

    const/16 v1, 0x44

    aput-object v6, v3, v1

    const/16 v1, 0x45

    const-string v6, "#"

    aput-object v6, v3, v1

    const/16 v1, 0x46

    const-string v6, ";"

    aput-object v6, v3, v1

    const/16 v1, 0x47

    const-string v6, "="

    aput-object v6, v3, v1

    const/16 v1, 0x48

    const-string v6, ","

    aput-object v6, v3, v1

    const/16 v1, 0x49

    const-string v6, "."

    aput-object v6, v3, v1

    const/16 v1, 0x4a

    const-string v6, ":"

    aput-object v6, v3, v1

    const/16 v1, 0x4b

    const-string v6, "("

    aput-object v6, v3, v1

    const/16 v1, 0x4c

    const-string v6, ")"

    aput-object v6, v3, v1

    const/16 v1, 0x4d

    const-string v6, "["

    aput-object v6, v3, v1

    const/16 v1, 0x4e

    const-string v6, "]"

    aput-object v6, v3, v1

    const/16 v1, 0x4f

    const-string v6, "..."

    aput-object v6, v3, v1

    const/16 v1, 0x50

    const-string v6, "{"

    aput-object v6, v3, v1

    const/16 v1, 0x51

    const-string v6, "}"

    aput-object v6, v3, v1

    const/16 v1, 0x52

    const-string v6, "+"

    aput-object v6, v3, v1

    const/16 v1, 0x53

    const-string v6, "-"

    aput-object v6, v3, v1

    const/16 v1, 0x54

    const-string v6, "*"

    aput-object v6, v3, v1

    const/16 v1, 0x55

    const-string v6, "/"

    aput-object v6, v3, v1

    const/16 v1, 0x56

    const-string v6, "^"

    aput-object v6, v3, v1

    const/16 v1, 0x57

    const-string v6, "%"

    aput-object v6, v3, v1

    const/16 v1, 0x58

    const-string v6, ".."

    aput-object v6, v3, v1

    const/16 v1, 0x59

    const-string v6, "<"

    aput-object v6, v3, v1

    const/16 v1, 0x5a

    const-string v6, "<="

    aput-object v6, v3, v1

    const/16 v1, 0x5b

    const-string v6, ">"

    aput-object v6, v3, v1

    const/16 v1, 0x5c

    const-string v6, ">="

    aput-object v6, v3, v1

    const/16 v1, 0x5d

    const-string v6, "=="

    aput-object v6, v3, v1

    const/16 v1, 0x5e

    const-string v6, "~="

    aput-object v6, v3, v1

    sput-object v3, Lcom/prineside/luaj/parser/LuaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "DEFAULT"

    aput-object v2, v1, v5

    const-string v2, "IN_COMMENT"

    aput-object v2, v1, v4

    const-string v2, "IN_LC0"

    aput-object v2, v1, v7

    const-string v2, "IN_LC1"

    aput-object v2, v1, v8

    const-string v2, "IN_LC2"

    aput-object v2, v1, v0

    const-string v0, "IN_LC3"

    aput-object v0, v1, v9

    const-string v0, "IN_LCN"

    aput-object v0, v1, v10

    const-string v0, "IN_LS0"

    aput-object v0, v1, v11

    const-string v0, "IN_LS1"

    aput-object v0, v1, v12

    const-string v0, "IN_LS2"

    aput-object v0, v1, v13

    const-string v0, "IN_LS3"

    aput-object v0, v1, v14

    const-string v0, "IN_LSN"

    aput-object v0, v1, v15

    sput-object v1, Lcom/prineside/luaj/parser/LuaParserTokenManager;->lexStateNames:[Ljava/lang/String;

    const/16 v0, 0x5f

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->jjnewLexState:[I

    new-array v0, v7, [J

    fill-array-data v0, :array_4

    sput-object v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->q:[J

    new-array v0, v7, [J

    fill-array-data v0, :array_5

    sput-object v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->r:[J

    new-array v0, v7, [J

    fill-array-data v0, :array_6

    sput-object v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->s:[J

    new-array v0, v7, [J

    fill-array-data v0, :array_7

    sput-object v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->t:[J

    return-void

    :array_0
    .array-data 8
        -0x2
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x0
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        0x3e
        0x3f
        0x41
        0x20
        0x31
        0x32
        0x33
        0x24
        0x25
        0x26
        0x1a
        0x1b
        0x1d
        0x16
        0x24
        0x25
        0x26
        0x2e
        0x24
        0x2f
        0x25
        0x26
        0x31
        0x32
        0x33
        0x3b
        0x31
        0x3c
        0x32
        0x33
        0x14
        0x19
        0x17
        0x18
        0x21
        0x22
        0x27
        0x28
        0x2d
        0x34
        0x35
        0x3a
        0x0
        0x1
        0x3
    .end array-data

    :array_3
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_4
    .array-data 8
        0x601fffffef800001L    # 1.0726246014297432E155
        0x7fffffe2
    .end array-data

    :array_5
    .array-data 8
        0x7e003e
        0x0
    .end array-data

    :array_6
    .array-data 8
        0x7e0000
        0x0
    .end array-data

    :array_7
    .array-data 8
        0x1001ffc0
        0x0
    .end array-data
.end method

.method public constructor <init>(Lcom/prineside/luaj/parser/SimpleCharStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->debugStream:Ljava/io/PrintStream;

    const/16 v0, 0x42

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->b:[I

    const/16 v0, 0x84

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->c:[I

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->d:Ljava/lang/StringBuffer;

    iput-object v0, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->e:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->h:I

    iput v0, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->i:I

    iput-object p1, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    return-void
.end method

.method public constructor <init>(Lcom/prineside/luaj/parser/SimpleCharStream;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;-><init>(Lcom/prineside/luaj/parser/SimpleCharStream;)V

    invoke-virtual {p0, p2}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->SwitchTo(I)V

    return-void
.end method

.method public static final d(IIIJJ)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->n:[J

    aget-wide p1, p0, p1

    and-long/2addr p1, p3

    cmp-long p0, p1, v2

    if-eqz p0, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    sget-object p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->o:[J

    aget-wide p1, p0, p2

    and-long/2addr p1, p5

    cmp-long p0, p1, v2

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final A(J)I
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/prineside/luaj/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x5d

    const/4 v3, 0x2

    if-eq v1, v2, :cond_0

    return v3

    :cond_0
    const-wide/32 v1, 0x40000

    and-long/2addr p1, v1

    const-wide/16 v1, 0x0

    cmp-long v4, p1, v1

    if-eqz v4, :cond_1

    const/16 p1, 0x12

    invoke-virtual {p0, v0, p1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->b0(II)I

    move-result p1

    return p1

    :cond_1
    return v3

    :catch_0
    return v0
.end method

.method public final B(J)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {v0}, Lcom/prineside/luaj/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    const-wide/32 v0, 0x80000

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->J(JJ)I

    move-result p1

    return p1

    :catch_0
    const/4 p1, 0x1

    return p1
.end method

.method public final C(J)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {v0}, Lcom/prineside/luaj/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    const-wide/32 v0, 0x100000

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->K(JJ)I

    move-result p1

    return p1

    :catch_0
    const/4 p1, 0x1

    return p1
.end method

.method public final D(J)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {v0}, Lcom/prineside/luaj/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    const-wide/32 v0, 0x200000

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->L(JJ)I

    move-result p1

    return p1

    :catch_0
    const/4 p1, 0x1

    return p1
.end method

.method public final E(J)I
    .locals 5

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/prineside/luaj/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x5d

    const/4 v3, 0x2

    if-eq v1, v2, :cond_0

    return v3

    :cond_0
    const-wide/32 v1, 0x800000

    and-long/2addr p1, v1

    const-wide/16 v1, 0x0

    cmp-long v4, p1, v1

    if-eqz v4, :cond_1

    const/16 p1, 0x17

    invoke-virtual {p0, v0, p1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->b0(II)I

    move-result p1

    return p1

    :cond_1
    return v3

    :catch_0
    return v0
.end method

.method public final F(J)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {v0}, Lcom/prineside/luaj/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    const-wide/32 v0, 0x1000000

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->M(JJ)I

    move-result p1

    return p1

    :catch_0
    const/4 p1, 0x1

    return p1
.end method

.method public final G(J)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {v0}, Lcom/prineside/luaj/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    const-wide/32 v0, 0x2000000

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->N(JJ)I

    move-result p1

    return p1

    :catch_0
    const/4 p1, 0x1

    return p1
.end method

.method public final H(JJJJ)I
    .locals 12

    move-object v9, p0

    and-long v1, p3, p1

    and-long v5, p7, p5

    or-long v3, v1, v5

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-nez v0, :cond_0

    const/4 v1, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide/from16 v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a0(IJJ)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x2

    :try_start_0
    iget-object v3, v9, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {v3}, Lcom/prineside/luaj/parser/SimpleCharStream;->readChar()C

    move-result v3

    iput-char v3, v9, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_b

    const/16 v4, 0x3d

    if-eq v3, v4, :cond_a

    const/16 v4, 0x5b

    if-eq v3, v4, :cond_8

    const/16 v4, 0x69

    if-eq v3, v4, :cond_7

    const/16 v4, 0x6c

    const/16 v10, 0x11

    if-eq v3, v4, :cond_5

    const/16 v4, 0x6e

    if-eq v3, v4, :cond_4

    const/16 v4, 0x70

    if-eq v3, v4, :cond_3

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_0
    const-wide/high16 v3, 0x1000000000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->O(JJJJ)I

    move-result v0

    return v0

    :pswitch_1
    const-wide v3, 0x80000000000L

    and-long/2addr v3, v1

    cmp-long v11, v3, v7

    if-eqz v11, :cond_1

    const/16 v1, 0x2b

    invoke-virtual {p0, v0, v1, v10}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->Z(III)I

    move-result v0

    return v0

    :cond_1
    const-wide v3, 0x2204000000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->O(JJJJ)I

    move-result v0

    return v0

    :pswitch_2
    const-wide v3, 0x300000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->O(JJJJ)I

    move-result v0

    return v0

    :pswitch_3
    const-wide v3, 0x1000000000L

    and-long/2addr v3, v1

    cmp-long v11, v3, v7

    if-eqz v11, :cond_c

    const/16 v1, 0x24

    invoke-virtual {p0, v0, v1, v10}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->Z(III)I

    move-result v0

    return v0

    :pswitch_4
    const-wide v3, 0x800040000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->O(JJJJ)I

    move-result v0

    return v0

    :pswitch_5
    const-wide/32 v3, 0x20000000

    and-long/2addr v3, v1

    cmp-long v11, v3, v7

    if-eqz v11, :cond_2

    const/16 v1, 0x1d

    invoke-virtual {p0, v0, v1, v10}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->Z(III)I

    move-result v0

    return v0

    :cond_2
    const-wide v3, 0x400000000L

    and-long/2addr v3, v1

    cmp-long v11, v3, v7

    if-eqz v11, :cond_c

    const/16 v1, 0x22

    invoke-virtual {p0, v0, v1, v10}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->Z(III)I

    move-result v0

    return v0

    :pswitch_6
    const-wide v3, 0x20000000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->O(JJJJ)I

    move-result v0

    return v0

    :cond_3
    const-wide v3, 0x400000000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->O(JJJJ)I

    move-result v0

    return v0

    :cond_4
    const-wide v3, 0x2000000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->O(JJJJ)I

    move-result v0

    return v0

    :cond_5
    const-wide v3, 0x40000000000L

    and-long/2addr v3, v1

    cmp-long v11, v3, v7

    if-eqz v11, :cond_6

    const/16 v1, 0x2a

    invoke-virtual {p0, v0, v1, v10}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->Z(III)I

    move-result v0

    return v0

    :cond_6
    const-wide v3, 0x800000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->O(JJJJ)I

    move-result v0

    return v0

    :cond_7
    const-wide/high16 v3, 0x4000000000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->O(JJJJ)I

    move-result v0

    return v0

    :cond_8
    const-wide/16 v3, 0x1000

    and-long/2addr v3, v1

    cmp-long v10, v3, v7

    if-eqz v10, :cond_9

    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->b0(II)I

    move-result v0

    return v0

    :cond_9
    const-wide/16 v3, 0x3c0

    const-wide/16 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->O(JJJJ)I

    move-result v0

    return v0

    :cond_a
    const-wide/16 v3, 0x6000

    const-wide/16 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->O(JJJJ)I

    move-result v0

    return v0

    :cond_b
    const-wide/32 v3, 0x8000

    and-long/2addr v3, v5

    cmp-long v10, v3, v7

    if-eqz v10, :cond_c

    const/16 v1, 0x4f

    invoke-virtual {p0, v0, v1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->b0(II)I

    move-result v0

    return v0

    :cond_c
    :goto_0
    const/4 v0, 0x1

    move-object p1, p0

    move p2, v0

    move-wide p3, v1

    move-wide/from16 p5, v5

    invoke-virtual/range {p1 .. p6}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a0(IJJ)I

    move-result v0

    return v0

    :catch_0
    const/4 v3, 0x1

    move-object p1, p0

    move p2, v3

    move-wide p3, v1

    move-wide/from16 p5, v5

    invoke-virtual/range {p1 .. p6}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->c0(IJJ)I

    return v0

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x72
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final I(JJ)I
    .locals 2

    and-long/2addr p1, p3

    const/4 p3, 0x2

    const-wide/16 v0, 0x0

    cmp-long p4, p1, v0

    if-nez p4, :cond_0

    return p3

    :cond_0
    :try_start_0
    iget-object p4, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {p4}, Lcom/prineside/luaj/parser/SimpleCharStream;->readChar()C

    move-result p4

    iput-char p4, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p3, 0x3d

    if-eq p4, p3, :cond_1

    const/4 p1, 0x3

    return p1

    :cond_1
    const-wide/32 p3, 0x4000000

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->P(JJ)I

    move-result p1

    return p1

    :catch_0
    return p3
.end method

.method public final J(JJ)I
    .locals 4

    and-long/2addr p1, p3

    const-wide/16 p3, 0x0

    const/4 v0, 0x2

    cmp-long v1, p1, p3

    if-nez v1, :cond_0

    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/prineside/luaj/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x5d

    const/4 v3, 0x3

    if-eq v1, v2, :cond_1

    return v3

    :cond_1
    const-wide/32 v1, 0x80000

    and-long/2addr p1, v1

    cmp-long v1, p1, p3

    if-eqz v1, :cond_2

    const/16 p1, 0x13

    invoke-virtual {p0, v0, p1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->b0(II)I

    move-result p1

    return p1

    :cond_2
    return v3

    :catch_0
    return v0
.end method

.method public final K(JJ)I
    .locals 2

    and-long/2addr p1, p3

    const/4 p3, 0x2

    const-wide/16 v0, 0x0

    cmp-long p4, p1, v0

    if-nez p4, :cond_0

    return p3

    :cond_0
    :try_start_0
    iget-object p4, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {p4}, Lcom/prineside/luaj/parser/SimpleCharStream;->readChar()C

    move-result p4

    iput-char p4, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p3, 0x3d

    if-eq p4, p3, :cond_1

    const/4 p1, 0x3

    return p1

    :cond_1
    const-wide/32 p3, 0x100000

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->Q(JJ)I

    move-result p1

    return p1

    :catch_0
    return p3
.end method

.method public final L(JJ)I
    .locals 2

    and-long/2addr p1, p3

    const/4 p3, 0x2

    const-wide/16 v0, 0x0

    cmp-long p4, p1, v0

    if-nez p4, :cond_0

    return p3

    :cond_0
    :try_start_0
    iget-object p4, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {p4}, Lcom/prineside/luaj/parser/SimpleCharStream;->readChar()C

    move-result p4

    iput-char p4, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p3, 0x3d

    if-eq p4, p3, :cond_1

    const/4 p1, 0x3

    return p1

    :cond_1
    const-wide/32 p3, 0x200000

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->R(JJ)I

    move-result p1

    return p1

    :catch_0
    return p3
.end method

.method public final M(JJ)I
    .locals 4

    and-long/2addr p1, p3

    const-wide/16 p3, 0x0

    const/4 v0, 0x2

    cmp-long v1, p1, p3

    if-nez v1, :cond_0

    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/prineside/luaj/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x5d

    const/4 v3, 0x3

    if-eq v1, v2, :cond_1

    return v3

    :cond_1
    const-wide/32 v1, 0x1000000

    and-long/2addr p1, v1

    cmp-long v1, p1, p3

    if-eqz v1, :cond_2

    const/16 p1, 0x18

    invoke-virtual {p0, v0, p1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->b0(II)I

    move-result p1

    return p1

    :cond_2
    return v3

    :catch_0
    return v0
.end method

.method public final N(JJ)I
    .locals 2

    and-long/2addr p1, p3

    const/4 p3, 0x2

    const-wide/16 v0, 0x0

    cmp-long p4, p1, v0

    if-nez p4, :cond_0

    return p3

    :cond_0
    :try_start_0
    iget-object p4, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {p4}, Lcom/prineside/luaj/parser/SimpleCharStream;->readChar()C

    move-result p4

    iput-char p4, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p3, 0x3d

    if-eq p4, p3, :cond_1

    const/4 p1, 0x3

    return p1

    :cond_1
    const-wide/32 p3, 0x2000000

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->S(JJ)I

    move-result p1

    return p1

    :catch_0
    return p3
.end method

.method public final O(JJJJ)I
    .locals 11

    move-object v6, p0

    and-long v0, p3, p1

    and-long v2, p7, p5

    or-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v7, v2, v4

    if-nez v7, :cond_0

    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p1

    move-wide/from16 v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a0(IJJ)I

    move-result v0

    return v0

    :cond_0
    const/4 v2, 0x3

    :try_start_0
    iget-object v3, v6, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {v3}, Lcom/prineside/luaj/parser/SimpleCharStream;->readChar()C

    move-result v3

    iput-char v3, v6, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v7, 0x3d

    if-eq v3, v7, :cond_f

    const/16 v7, 0x5b

    if-eq v3, v7, :cond_c

    const/16 v7, 0x61

    if-eq v3, v7, :cond_b

    const/16 v7, 0x63

    if-eq v3, v7, :cond_a

    const/16 v7, 0x65

    const/16 v8, 0x11

    if-eq v3, v7, :cond_7

    const/16 v7, 0x69

    if-eq v3, v7, :cond_6

    const/16 v7, 0x6c

    if-eq v3, v7, :cond_5

    const/16 v7, 0x73

    if-eq v3, v7, :cond_4

    const/16 v7, 0x75

    if-eq v3, v7, :cond_3

    const/16 v7, 0x6e

    if-eq v3, v7, :cond_2

    const/16 v7, 0x6f

    if-eq v3, v7, :cond_1

    goto/16 :goto_1

    :cond_1
    const-wide v9, 0x4000000000L

    and-long/2addr v9, v0

    cmp-long v3, v9, v4

    if-eqz v3, :cond_e

    const/16 v0, 0x26

    invoke-virtual {p0, v2, v0, v8}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->Z(III)I

    move-result v0

    return v0

    :cond_2
    const-wide v9, 0x800000000000L

    and-long/2addr v9, v0

    cmp-long v3, v9, v4

    if-eqz v3, :cond_e

    const/16 v0, 0x2f

    invoke-virtual {p0, v2, v0, v8}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->Z(III)I

    move-result v0

    return v0

    :cond_3
    const-wide v2, 0x200000000000L

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->T(JJ)I

    move-result v0

    return v0

    :cond_4
    const-wide v2, 0x800000000L

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->T(JJ)I

    move-result v0

    return v0

    :cond_5
    const-wide/high16 v2, 0x4000000000000L

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->T(JJ)I

    move-result v0

    return v0

    :cond_6
    const-wide/high16 v2, 0x2000000000000L

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->T(JJ)I

    move-result v0

    return v0

    :cond_7
    const-wide v9, 0x100000000L

    and-long/2addr v9, v0

    cmp-long v3, v9, v4

    if-eqz v3, :cond_8

    const/16 v3, 0x20

    iput v3, v6, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    iput v2, v6, Lcom/prineside/luaj/parser/LuaParserTokenManager;->l:I

    goto :goto_0

    :cond_8
    const-wide/high16 v9, 0x1000000000000L

    and-long/2addr v9, v0

    cmp-long v3, v9, v4

    if-eqz v3, :cond_9

    const/16 v0, 0x30

    invoke-virtual {p0, v2, v0, v8}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->Z(III)I

    move-result v0

    return v0

    :cond_9
    :goto_0
    const-wide v2, 0x400200000000L

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->T(JJ)I

    move-result v0

    return v0

    :cond_a
    const-wide v2, 0x2000000000L

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->T(JJ)I

    move-result v0

    return v0

    :cond_b
    const-wide v2, 0x20040000000L

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->T(JJ)I

    move-result v0

    return v0

    :cond_c
    const-wide/16 v7, 0x40

    and-long/2addr v7, v0

    cmp-long v3, v7, v4

    if-eqz v3, :cond_d

    const/4 v0, 0x6

    invoke-virtual {p0, v2, v0}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->b0(II)I

    move-result v0

    return v0

    :cond_d
    const-wide/16 v7, 0x2000

    and-long/2addr v7, v0

    cmp-long v3, v7, v4

    if-eqz v3, :cond_e

    const/16 v0, 0xd

    invoke-virtual {p0, v2, v0}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->b0(II)I

    move-result v0

    return v0

    :cond_e
    :goto_1
    const/4 v2, 0x2

    const-wide/16 v3, 0x0

    move-object p1, p0

    move p2, v2

    move-wide p3, v0

    move-wide/from16 p5, v3

    invoke-virtual/range {p1 .. p6}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a0(IJJ)I

    move-result v0

    return v0

    :cond_f
    const-wide/16 v2, 0x4380

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->T(JJ)I

    move-result v0

    return v0

    :catch_0
    const/4 v3, 0x2

    const-wide/16 v4, 0x0

    move-object p1, p0

    move p2, v3

    move-wide p3, v0

    move-wide/from16 p5, v4

    invoke-virtual/range {p1 .. p6}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->c0(IJJ)I

    return v2
.end method

.method public final P(JJ)I
    .locals 2

    and-long/2addr p1, p3

    const/4 p3, 0x3

    const-wide/16 v0, 0x0

    cmp-long p4, p1, v0

    if-nez p4, :cond_0

    return p3

    :cond_0
    :try_start_0
    iget-object p4, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {p4}, Lcom/prineside/luaj/parser/SimpleCharStream;->readChar()C

    move-result p4

    iput-char p4, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p3, 0x3d

    if-eq p4, p3, :cond_1

    const/4 p1, 0x4

    return p1

    :cond_1
    const-wide/32 p3, 0x4000000

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->U(JJ)I

    move-result p1

    return p1

    :catch_0
    return p3
.end method

.method public final Q(JJ)I
    .locals 4

    and-long/2addr p1, p3

    const-wide/16 p3, 0x0

    const/4 v0, 0x3

    cmp-long v1, p1, p3

    if-nez v1, :cond_0

    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/prineside/luaj/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x5d

    const/4 v3, 0x4

    if-eq v1, v2, :cond_1

    return v3

    :cond_1
    const-wide/32 v1, 0x100000

    and-long/2addr p1, v1

    cmp-long v1, p1, p3

    if-eqz v1, :cond_2

    const/16 p1, 0x14

    invoke-virtual {p0, v0, p1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->b0(II)I

    move-result p1

    return p1

    :cond_2
    return v3

    :catch_0
    return v0
.end method

.method public final R(JJ)I
    .locals 2

    and-long/2addr p1, p3

    const/4 p3, 0x3

    const-wide/16 v0, 0x0

    cmp-long p4, p1, v0

    if-nez p4, :cond_0

    return p3

    :cond_0
    :try_start_0
    iget-object p4, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {p4}, Lcom/prineside/luaj/parser/SimpleCharStream;->readChar()C

    move-result p4

    iput-char p4, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p3, 0x3d

    if-eq p4, p3, :cond_1

    const/4 p1, 0x4

    return p1

    :cond_1
    const-wide/32 p3, 0x200000

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->V(JJ)I

    move-result p1

    return p1

    :catch_0
    return p3
.end method

.method public ReInit(Lcom/prineside/luaj/parser/SimpleCharStream;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    iput v0, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->l:I

    iget v0, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->i:I

    iput v0, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->h:I

    iput-object p1, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a()V

    return-void
.end method

.method public ReInit(Lcom/prineside/luaj/parser/SimpleCharStream;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->ReInit(Lcom/prineside/luaj/parser/SimpleCharStream;)V

    invoke-virtual {p0, p2}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->SwitchTo(I)V

    return-void
.end method

.method public final S(JJ)I
    .locals 4

    and-long/2addr p1, p3

    const-wide/16 p3, 0x0

    const/4 v0, 0x3

    cmp-long v1, p1, p3

    if-nez v1, :cond_0

    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/prineside/luaj/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x5d

    const/4 v3, 0x4

    if-eq v1, v2, :cond_1

    return v3

    :cond_1
    const-wide/32 v1, 0x2000000

    and-long/2addr p1, v1

    cmp-long v1, p1, p3

    if-eqz v1, :cond_2

    const/16 p1, 0x19

    invoke-virtual {p0, v0, p1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->b0(II)I

    move-result p1

    return p1

    :cond_2
    return v3

    :catch_0
    return v0
.end method

.method public SwitchTo(I)V
    .locals 3

    const/16 v0, 0xc

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->h:I

    return-void

    :cond_0
    new-instance v0, Lcom/prineside/luaj/parser/TokenMgrError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Ignoring invalid lexical state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". State unchanged."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/prineside/luaj/parser/TokenMgrError;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public final T(JJ)I
    .locals 10

    and-long v2, p3, p1

    const-wide/16 p3, 0x0

    cmp-long v0, v2, p3

    if-nez v0, :cond_0

    const/4 v5, 0x2

    const-wide/16 v8, 0x0

    move-object v4, p0

    move-wide v6, p1

    invoke-virtual/range {v4 .. v9}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a0(IJJ)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x4

    :try_start_0
    iget-object p2, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {p2}, Lcom/prineside/luaj/parser/SimpleCharStream;->readChar()C

    move-result p2

    iput-char p2, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x3d

    if-eq p2, v0, :cond_d

    const/16 v0, 0x5b

    if-eq p2, v0, :cond_a

    const/16 v0, 0x61

    if-eq p2, v0, :cond_9

    const/16 v0, 0x65

    const/16 v1, 0x11

    if-eq p2, v0, :cond_7

    const/16 v0, 0x69

    if-eq p2, v0, :cond_6

    const/16 v0, 0x72

    if-eq p2, v0, :cond_5

    const/16 v0, 0x74

    if-eq p2, v0, :cond_4

    const/16 v0, 0x6b

    if-eq p2, v0, :cond_3

    const/16 v0, 0x6c

    if-eq p2, v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const-wide v4, 0x20000000000L

    and-long/2addr v4, v2

    cmp-long p2, v4, p3

    if-eqz p2, :cond_2

    const/16 p2, 0x29

    invoke-virtual {p0, p1, p2, v1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->Z(III)I

    move-result p1

    return p1

    :cond_2
    const-wide/high16 v4, 0x2000000000000L

    and-long/2addr v4, v2

    cmp-long p2, v4, p3

    if-eqz p2, :cond_c

    const/16 p2, 0x31

    invoke-virtual {p0, p1, p2, v1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->Z(III)I

    move-result p1

    return p1

    :cond_3
    const-wide/32 v4, 0x40000000

    and-long/2addr v4, v2

    cmp-long p2, v4, p3

    if-eqz p2, :cond_c

    const/16 p2, 0x1e

    invoke-virtual {p0, p1, p2, v1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->Z(III)I

    move-result p1

    return p1

    :cond_4
    const-wide p1, 0x2000000000L

    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->W(JJ)I

    move-result p1

    return p1

    :cond_5
    const-wide p1, 0x200000000000L

    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->W(JJ)I

    move-result p1

    return p1

    :cond_6
    const-wide p1, 0x200000000L

    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->W(JJ)I

    move-result p1

    return p1

    :cond_7
    const-wide v4, 0x800000000L

    and-long/2addr v4, v2

    cmp-long p2, v4, p3

    if-eqz p2, :cond_8

    const/16 p2, 0x23

    invoke-virtual {p0, p1, p2, v1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->Z(III)I

    move-result p1

    return p1

    :cond_8
    const-wide/high16 v4, 0x4000000000000L

    and-long/2addr v4, v2

    cmp-long p2, v4, p3

    if-eqz p2, :cond_c

    const/16 p2, 0x32

    invoke-virtual {p0, p1, p2, v1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->Z(III)I

    move-result p1

    return p1

    :cond_9
    const-wide p1, 0x400000000000L

    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->W(JJ)I

    move-result p1

    return p1

    :cond_a
    const-wide/16 v0, 0x80

    and-long/2addr v0, v2

    cmp-long p2, v0, p3

    if-eqz p2, :cond_b

    const/4 p2, 0x7

    invoke-virtual {p0, p1, p2}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->b0(II)I

    move-result p1

    return p1

    :cond_b
    const-wide/16 v0, 0x4000

    and-long/2addr v0, v2

    cmp-long p2, v0, p3

    if-eqz p2, :cond_c

    const/16 p2, 0xe

    invoke-virtual {p0, p1, p2}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->b0(II)I

    move-result p1

    return p1

    :cond_c
    :goto_0
    const/4 v1, 0x3

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a0(IJJ)I

    move-result p1

    return p1

    :cond_d
    const-wide/16 p1, 0x300

    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->W(JJ)I

    move-result p1

    return p1

    :catch_0
    const/4 v1, 0x3

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->c0(IJJ)I

    return p1
.end method

.method public final U(JJ)I
    .locals 4

    and-long/2addr p1, p3

    const-wide/16 p3, 0x0

    const/4 v0, 0x4

    cmp-long v1, p1, p3

    if-nez v1, :cond_0

    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/prineside/luaj/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x5d

    const/4 v3, 0x5

    if-eq v1, v2, :cond_1

    return v3

    :cond_1
    const-wide/32 v1, 0x4000000

    and-long/2addr p1, v1

    cmp-long v1, p1, p3

    if-eqz v1, :cond_2

    const/16 p1, 0x1a

    invoke-virtual {p0, v0, p1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->b0(II)I

    move-result p1

    return p1

    :cond_2
    return v3

    :catch_0
    return v0
.end method

.method public final V(JJ)I
    .locals 4

    and-long/2addr p1, p3

    const-wide/16 p3, 0x0

    const/4 v0, 0x4

    cmp-long v1, p1, p3

    if-nez v1, :cond_0

    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/prineside/luaj/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x5d

    const/4 v3, 0x5

    if-eq v1, v2, :cond_1

    return v3

    :cond_1
    const-wide/32 v1, 0x200000

    and-long/2addr p1, v1

    cmp-long v1, p1, p3

    if-eqz v1, :cond_2

    const/16 p1, 0x15

    invoke-virtual {p0, v0, p1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->b0(II)I

    move-result p1

    return p1

    :cond_2
    return v3

    :catch_0
    return v0
.end method

.method public final W(JJ)I
    .locals 10

    and-long v2, p3, p1

    const-wide/16 p3, 0x0

    cmp-long v0, v2, p3

    if-nez v0, :cond_0

    const/4 v5, 0x3

    const-wide/16 v8, 0x0

    move-object v4, p0

    move-wide v6, p1

    invoke-virtual/range {v4 .. v9}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a0(IJJ)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x5

    :try_start_0
    iget-object p2, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {p2}, Lcom/prineside/luaj/parser/SimpleCharStream;->readChar()C

    move-result p2

    iput-char p2, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x3d

    if-eq p2, v0, :cond_7

    const/16 v0, 0x5b

    if-eq p2, v0, :cond_5

    const/16 v0, 0x66

    const/16 v1, 0x11

    if-eq p2, v0, :cond_4

    const/16 v0, 0x69

    if-eq p2, v0, :cond_3

    const/16 v0, 0x6e

    if-eq p2, v0, :cond_2

    const/16 v0, 0x74

    if-eq p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const-wide v4, 0x400000000000L

    and-long/2addr v4, v2

    cmp-long p2, v4, p3

    if-eqz p2, :cond_6

    const/16 p2, 0x2e

    invoke-virtual {p0, p1, p2, v1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->Z(III)I

    move-result p1

    return p1

    :cond_2
    const-wide v4, 0x200000000000L

    and-long/2addr v4, v2

    cmp-long p2, v4, p3

    if-eqz p2, :cond_6

    const/16 p2, 0x2d

    invoke-virtual {p0, p1, p2, v1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->Z(III)I

    move-result p1

    return p1

    :cond_3
    const-wide p1, 0x2000000000L

    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->X(JJ)I

    move-result p1

    return p1

    :cond_4
    const-wide v4, 0x200000000L

    and-long/2addr v4, v2

    cmp-long p2, v4, p3

    if-eqz p2, :cond_6

    const/16 p2, 0x21

    invoke-virtual {p0, p1, p2, v1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->Z(III)I

    move-result p1

    return p1

    :cond_5
    const-wide/16 v0, 0x100

    and-long/2addr v0, v2

    cmp-long p2, v0, p3

    if-eqz p2, :cond_6

    const/16 p2, 0x8

    invoke-virtual {p0, p1, p2}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->b0(II)I

    move-result p1

    return p1

    :cond_6
    :goto_0
    const/4 v1, 0x4

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a0(IJJ)I

    move-result p1

    return p1

    :cond_7
    const-wide/16 p1, 0x200

    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->X(JJ)I

    move-result p1

    return p1

    :catch_0
    const/4 v1, 0x4

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->c0(IJJ)I

    return p1
.end method

.method public final X(JJ)I
    .locals 10

    and-long v2, p3, p1

    const-wide/16 p3, 0x0

    cmp-long v0, v2, p3

    if-nez v0, :cond_0

    const/4 v5, 0x4

    const-wide/16 v8, 0x0

    move-object v4, p0

    move-wide v6, p1

    invoke-virtual/range {v4 .. v9}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a0(IJJ)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x6

    :try_start_0
    iget-object p2, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {p2}, Lcom/prineside/luaj/parser/SimpleCharStream;->readChar()C

    move-result p2

    iput-char p2, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x5b

    if-eq p2, v0, :cond_2

    const/16 p1, 0x6f

    if-eq p2, p1, :cond_1

    goto :goto_0

    :cond_1
    const-wide p1, 0x2000000000L

    invoke-virtual {p0, v2, v3, p1, p2}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->Y(JJ)I

    move-result p1

    return p1

    :cond_2
    const-wide/16 v0, 0x200

    and-long/2addr v0, v2

    cmp-long p2, v0, p3

    if-eqz p2, :cond_3

    const/16 p2, 0x9

    invoke-virtual {p0, p1, p2}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->b0(II)I

    move-result p1

    return p1

    :cond_3
    :goto_0
    const/4 v1, 0x5

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a0(IJJ)I

    move-result p1

    return p1

    :catch_0
    const/4 v1, 0x5

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->c0(IJJ)I

    return p1
.end method

.method public final Y(JJ)I
    .locals 10

    and-long v2, p3, p1

    const-wide/16 p3, 0x0

    cmp-long v0, v2, p3

    if-nez v0, :cond_0

    const/4 v5, 0x5

    const-wide/16 v8, 0x0

    move-object v4, p0

    move-wide v6, p1

    invoke-virtual/range {v4 .. v9}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a0(IJJ)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x7

    :try_start_0
    iget-object p2, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {p2}, Lcom/prineside/luaj/parser/SimpleCharStream;->readChar()C

    move-result p2

    iput-char p2, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x6e

    if-eq p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const-wide v0, 0x2000000000L

    and-long/2addr v0, v2

    cmp-long p2, v0, p3

    if-eqz p2, :cond_2

    const/16 p2, 0x25

    const/16 p3, 0x11

    invoke-virtual {p0, p1, p2, p3}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->Z(III)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 v1, 0x6

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a0(IJJ)I

    move-result p1

    return p1

    :catch_0
    const/4 v1, 0x6

    const-wide/16 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->c0(IJJ)I

    return p1
.end method

.method public final Z(III)I
    .locals 0

    iput p2, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    iput p1, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->l:I

    :try_start_0
    iget-object p2, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {p2}, Lcom/prineside/luaj/parser/SimpleCharStream;->readChar()C

    move-result p2

    iput-char p2, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p3, p1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->i(II)I

    move-result p1

    return p1

    :catch_0
    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final a()V
    .locals 3

    const v0, -0x7fffffff

    iput v0, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->k:I

    const/16 v0, 0x42

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->b:[I

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a0(IJJ)I
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->c0(IJJ)I

    move-result p2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p2, p1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->i(II)I

    move-result p1

    return p1
.end method

.method public b(Lcom/prineside/luaj/parser/Token;)V
    .locals 0

    return-void
.end method

.method public final b0(II)I
    .locals 0

    iput p2, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    iput p1, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->l:I

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final c(II)V
    .locals 3

    :goto_0
    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->c:[I

    iget v1, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    sget-object v2, Lcom/prineside/luaj/parser/LuaParserTokenManager;->p:[I

    aget v2, v2, p1

    aput v2, v0, v1

    add-int/lit8 v0, p1, 0x1

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method public final c0(IJJ)I
    .locals 14

    move-object v0, p0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x6

    const-wide v4, 0x2000000000L

    const-wide/32 v6, 0x103c0

    const/4 v8, 0x3

    const/16 v9, 0x33

    const/4 v10, -0x1

    const/16 v11, 0x11

    const-wide/16 v12, 0x0

    packed-switch p1, :pswitch_data_0

    return v10

    :pswitch_0
    and-long v1, p2, v4

    cmp-long v4, v1, v12

    if-eqz v4, :cond_0

    iput v9, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    iput v3, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->l:I

    return v11

    :cond_0
    return v10

    :pswitch_1
    const-wide/16 v2, 0x200

    and-long v2, p2, v2

    cmp-long v6, v2, v12

    if-eqz v6, :cond_1

    const/4 v1, 0x0

    return v1

    :cond_1
    const-wide v2, 0x600200000000L

    and-long v2, p2, v2

    cmp-long v6, v2, v12

    if-eqz v6, :cond_2

    return v11

    :cond_2
    and-long v2, p2, v4

    cmp-long v4, v2, v12

    if-eqz v4, :cond_3

    iput v9, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    iput v1, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->l:I

    return v11

    :cond_3
    return v10

    :pswitch_2
    const-wide v3, 0x602200000000L

    and-long v3, p2, v3

    cmp-long v1, v3, v12

    if-eqz v1, :cond_4

    iput v9, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    iput v2, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->l:I

    return v11

    :cond_4
    const-wide/16 v1, 0x300

    and-long v1, p2, v1

    cmp-long v3, v1, v12

    if-eqz v3, :cond_5

    return v8

    :cond_5
    const-wide v1, 0x6020840000000L

    and-long v1, p2, v1

    cmp-long v3, v1, v12

    if-eqz v3, :cond_6

    return v11

    :cond_6
    return v10

    :pswitch_3
    const-wide/16 v3, 0x380

    and-long v3, p2, v3

    cmp-long v1, v3, v12

    if-eqz v1, :cond_7

    return v2

    :cond_7
    const-wide v1, 0x6622840000000L

    and-long v1, p2, v1

    cmp-long v3, v1, v12

    if-eqz v3, :cond_9

    iget v1, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->l:I

    if-eq v1, v8, :cond_8

    iput v9, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    iput v8, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->l:I

    :cond_8
    return v11

    :cond_9
    const-wide v1, 0x1804300000000L

    and-long v1, p2, v1

    cmp-long v3, v1, v12

    if-eqz v3, :cond_a

    return v11

    :cond_a
    const-wide/16 v1, 0x4000

    and-long v1, p2, v1

    cmp-long v3, v1, v12

    if-eqz v3, :cond_b

    const/16 v1, 0x9

    return v1

    :cond_b
    return v10

    :pswitch_4
    const-wide v2, 0x7e26b40000000L

    and-long v2, p2, v2

    cmp-long v4, v2, v12

    if-eqz v4, :cond_c

    iput v9, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    const/4 v1, 0x2

    iput v1, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->l:I

    return v11

    :cond_c
    const-wide/16 v2, 0x6000

    and-long v2, p2, v2

    cmp-long v4, v2, v12

    if-eqz v4, :cond_d

    const/16 v1, 0xc

    return v1

    :cond_d
    const-wide/16 v2, 0x3c0

    and-long v2, p2, v2

    cmp-long v4, v2, v12

    if-eqz v4, :cond_e

    return v1

    :cond_e
    const-wide v1, 0xc1420000000L

    and-long v1, p2, v1

    cmp-long v3, v1, v12

    if-eqz v3, :cond_f

    return v11

    :cond_f
    return v10

    :pswitch_5
    and-long v1, p2, v6

    cmp-long v4, v1, v12

    if-eqz v4, :cond_10

    return v3

    :cond_10
    const-wide/16 v1, 0x7000

    and-long v1, p2, v1

    cmp-long v3, v1, v12

    if-eqz v3, :cond_11

    const/16 v1, 0xd

    return v1

    :cond_11
    const-wide v1, 0x118080000000L

    and-long v1, p2, v1

    cmp-long v3, v1, v12

    if-eqz v3, :cond_12

    return v11

    :cond_12
    const-wide v1, 0x7ee7f60000000L

    and-long v1, p2, v1

    cmp-long v3, v1, v12

    if-eqz v3, :cond_14

    iget v1, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->l:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_13

    iput v9, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    iput v2, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->l:I

    :cond_13
    return v11

    :cond_14
    return v10

    :pswitch_6
    const-wide/16 v1, 0x7800

    and-long v1, p2, v1

    cmp-long v3, v1, v12

    if-nez v3, :cond_1a

    const-wide/16 v1, 0x2000

    and-long v1, p4, v1

    cmp-long v3, v1, v12

    if-eqz v3, :cond_15

    goto :goto_1

    :cond_15
    const-wide/32 v1, 0x1008200

    and-long v1, p4, v1

    cmp-long v3, v1, v12

    if-eqz v3, :cond_16

    const/16 v1, 0x1f

    return v1

    :cond_16
    const-wide v1, 0x7ffffe0000000L

    and-long v1, p2, v1

    cmp-long v3, v1, v12

    if-eqz v3, :cond_17

    iput v9, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    return v11

    :cond_17
    and-long v1, p2, v6

    cmp-long v3, v1, v12

    if-nez v3, :cond_19

    const-wide/32 v1, 0x80000

    and-long v1, p4, v1

    cmp-long v3, v1, v12

    if-eqz v3, :cond_18

    goto :goto_0

    :cond_18
    return v10

    :cond_19
    :goto_0
    const/4 v1, 0x7

    return v1

    :cond_1a
    :goto_1
    const/16 v1, 0xe

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e(I)V
    .locals 5

    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->b:[I

    aget v1, v0, p1

    iget v2, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->k:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->c:[I

    iget v3, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    aput p1, v1, v3

    aput v2, v0, p1

    :cond_0
    return-void
.end method

.method public final f(II)V
    .locals 1

    :goto_0
    sget-object v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->p:[I

    aget v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->e(I)V

    add-int/lit8 v0, p1, 0x1

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method public final g(II)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->e(I)V

    invoke-virtual {p0, p2}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->e(I)V

    return-void
.end method

.method public getNextToken()Lcom/prineside/luaj/parser/Token;
    .locals 22

    move-object/from16 v0, p0

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    const/4 v5, 0x0

    :catch_0
    :cond_0
    :goto_0
    :try_start_0
    iget-object v6, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {v6}, Lcom/prineside/luaj/parser/SimpleCharStream;->BeginToken()C

    move-result v6

    iput-char v6, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    iget-object v6, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->d:Ljava/lang/StringBuffer;

    iput-object v6, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->e:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    iput v3, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->f:I

    :goto_1
    iget v6, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->h:I

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x1

    const/4 v11, -0x1

    const v12, 0x7fffffff

    const/16 v13, 0x1c

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iput v12, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    iput v3, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->l:I

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->p()I

    move-result v5

    iget v6, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->l:I

    if-nez v6, :cond_2

    iget v6, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    if-le v6, v13, :cond_2

    iput v13, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    goto/16 :goto_3

    :pswitch_1
    iput v12, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    iput v3, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->l:I

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->o()I

    move-result v5

    iget v6, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->l:I

    if-nez v6, :cond_2

    iget v6, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    if-le v6, v13, :cond_2

    iput v13, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    goto/16 :goto_3

    :pswitch_2
    iput v12, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    iput v3, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->l:I

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->x()I

    move-result v5

    iget v6, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->l:I

    if-nez v6, :cond_2

    iget v6, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    if-le v6, v13, :cond_2

    iput v13, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    goto/16 :goto_3

    :pswitch_3
    iput v12, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    iput v3, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->l:I

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->w()I

    move-result v5

    iget v6, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->l:I

    if-nez v6, :cond_2

    iget v6, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    if-le v6, v13, :cond_2

    iput v13, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    goto/16 :goto_3

    :pswitch_4
    iput v12, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    iput v3, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->l:I

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->v()I

    move-result v5

    iget v6, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->l:I

    if-nez v6, :cond_2

    iget v6, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    if-le v6, v13, :cond_2

    iput v13, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    goto/16 :goto_3

    :pswitch_5
    iput v12, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    iput v3, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->l:I

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->u()I

    move-result v5

    iget v6, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->l:I

    if-nez v6, :cond_2

    iget v6, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    if-le v6, v13, :cond_2

    iput v13, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    goto/16 :goto_3

    :pswitch_6
    iput v12, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    iput v3, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->l:I

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->t()I

    move-result v5

    iget v6, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->l:I

    if-nez v6, :cond_2

    iget v6, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    if-le v6, v13, :cond_2

    iput v13, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    goto/16 :goto_3

    :pswitch_7
    iput v12, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    iput v3, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->l:I

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->s()I

    move-result v5

    iget v6, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->l:I

    if-nez v6, :cond_2

    iget v6, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    if-le v6, v13, :cond_2

    iput v13, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    goto :goto_3

    :pswitch_8
    iput v12, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    iput v3, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->l:I

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->r()I

    move-result v5

    iget v6, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->l:I

    if-nez v6, :cond_2

    iget v6, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    if-le v6, v13, :cond_2

    iput v13, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    goto :goto_3

    :pswitch_9
    iput v12, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    iput v3, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->l:I

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->q()I

    move-result v5

    iget v6, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->l:I

    if-nez v6, :cond_2

    iget v6, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    if-le v6, v13, :cond_2

    iput v13, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    goto :goto_3

    :pswitch_a
    const/16 v5, 0x11

    iput v5, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    iput v11, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->l:I

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->n()I

    move-result v5

    goto :goto_3

    :pswitch_b
    :try_start_1
    iget-object v6, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {v6, v3}, Lcom/prineside/luaj/parser/SimpleCharStream;->backup(I)V

    :goto_2
    iget-char v6, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    const/16 v13, 0x20

    if-gt v6, v13, :cond_1

    const-wide v13, 0x100003600L

    shl-long v15, v9, v6

    and-long/2addr v13, v15

    cmp-long v6, v13, v7

    if-eqz v6, :cond_1

    iget-object v6, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {v6}, Lcom/prineside/luaj/parser/SimpleCharStream;->BeginToken()C

    move-result v6

    iput-char v6, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_1
    iput v12, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    iput v3, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->l:I

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m()I

    move-result v5

    :cond_2
    :goto_3
    iget v6, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    const/4 v13, 0x1

    if-eq v6, v12, :cond_a

    iget v6, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->l:I

    add-int/lit8 v14, v6, 0x1

    if-ge v14, v5, :cond_3

    iget-object v14, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    sub-int v6, v5, v6

    sub-int/2addr v6, v13

    invoke-virtual {v14, v6}, Lcom/prineside/luaj/parser/SimpleCharStream;->backup(I)V

    :cond_3
    sget-object v6, Lcom/prineside/luaj/parser/LuaParserTokenManager;->q:[J

    iget v14, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    shr-int/lit8 v15, v14, 0x6

    aget-wide v15, v6, v15

    and-int/lit8 v6, v14, 0x3f

    shl-long v17, v9, v6

    and-long v15, v15, v17

    cmp-long v6, v15, v7

    if-eqz v6, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->h()Lcom/prineside/luaj/parser/Token;

    move-result-object v1

    iput-object v4, v1, Lcom/prineside/luaj/parser/Token;->specialToken:Lcom/prineside/luaj/parser/Token;

    sget-object v2, Lcom/prineside/luaj/parser/LuaParserTokenManager;->jjnewLexState:[I

    iget v3, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    aget v2, v2, v3

    if-eq v2, v11, :cond_4

    iput v2, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->h:I

    :cond_4
    return-object v1

    :cond_5
    sget-object v6, Lcom/prineside/luaj/parser/LuaParserTokenManager;->r:[J

    shr-int/lit8 v15, v14, 0x6

    aget-wide v15, v6, v15

    and-int/lit8 v6, v14, 0x3f

    shl-long v17, v9, v6

    and-long v15, v15, v17

    cmp-long v6, v15, v7

    if-eqz v6, :cond_8

    sget-object v6, Lcom/prineside/luaj/parser/LuaParserTokenManager;->s:[J

    shr-int/lit8 v12, v14, 0x6

    aget-wide v12, v6, v12

    and-int/lit8 v6, v14, 0x3f

    shl-long/2addr v9, v6

    and-long/2addr v9, v12

    cmp-long v6, v9, v7

    if-eqz v6, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->h()Lcom/prineside/luaj/parser/Token;

    move-result-object v6

    if-nez v4, :cond_6

    goto :goto_4

    :cond_6
    iput-object v4, v6, Lcom/prineside/luaj/parser/Token;->specialToken:Lcom/prineside/luaj/parser/Token;

    iput-object v6, v4, Lcom/prineside/luaj/parser/Token;->next:Lcom/prineside/luaj/parser/Token;

    :goto_4
    invoke-virtual {v0, v6}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->b(Lcom/prineside/luaj/parser/Token;)V

    move-object v4, v6

    goto :goto_5

    :cond_7
    invoke-virtual {v0, v2}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->b(Lcom/prineside/luaj/parser/Token;)V

    :goto_5
    sget-object v6, Lcom/prineside/luaj/parser/LuaParserTokenManager;->jjnewLexState:[I

    iget v7, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    aget v6, v6, v7

    if-eq v6, v11, :cond_0

    iput v6, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->h:I

    goto/16 :goto_0

    :cond_8
    iget v5, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->f:I

    iget v6, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->l:I

    add-int/2addr v6, v13

    add-int/2addr v5, v6

    iput v5, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->f:I

    sget-object v5, Lcom/prineside/luaj/parser/LuaParserTokenManager;->jjnewLexState:[I

    aget v5, v5, v14

    if-eq v5, v11, :cond_9

    iput v5, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->h:I

    :cond_9
    iput v12, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    :try_start_2
    iget-object v5, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {v5}, Lcom/prineside/luaj/parser/SimpleCharStream;->readChar()C

    move-result v5

    iput-char v5, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v5, 0x0

    goto/16 :goto_1

    :catch_1
    const/4 v5, 0x0

    :cond_a
    iget-object v4, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {v4}, Lcom/prineside/luaj/parser/SimpleCharStream;->getEndLine()I

    move-result v4

    iget-object v6, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {v6}, Lcom/prineside/luaj/parser/SimpleCharStream;->getEndColumn()I

    move-result v6

    :try_start_3
    iget-object v7, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {v7}, Lcom/prineside/luaj/parser/SimpleCharStream;->readChar()C

    iget-object v7, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {v7, v13}, Lcom/prineside/luaj/parser/SimpleCharStream;->backup(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move/from16 v17, v4

    move/from16 v18, v6

    const/4 v15, 0x0

    goto :goto_8

    :catch_2
    nop

    if-gt v5, v13, :cond_b

    move-object v2, v1

    goto :goto_6

    :cond_b
    iget-object v2, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/prineside/luaj/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v2

    :goto_6
    iget-char v7, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    const/16 v8, 0xa

    if-eq v7, v8, :cond_d

    const/16 v8, 0xd

    if-ne v7, v8, :cond_c

    goto :goto_7

    :cond_c
    add-int/lit8 v3, v6, 0x1

    move/from16 v18, v3

    move/from16 v17, v4

    const/4 v15, 0x1

    goto :goto_8

    :cond_d
    :goto_7
    add-int/lit8 v4, v4, 0x1

    move/from16 v17, v4

    const/4 v15, 0x1

    const/16 v18, 0x0

    :goto_8
    if-nez v15, :cond_f

    iget-object v2, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {v2, v13}, Lcom/prineside/luaj/parser/SimpleCharStream;->backup(I)V

    if-gt v5, v13, :cond_e

    goto :goto_9

    :cond_e
    iget-object v1, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/prineside/luaj/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v1

    :goto_9
    move-object/from16 v19, v1

    goto :goto_a

    :cond_f
    move-object/from16 v19, v2

    :goto_a
    new-instance v1, Lcom/prineside/luaj/parser/TokenMgrError;

    iget v2, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->h:I

    iget-char v3, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    const/16 v21, 0x0

    move-object v14, v1

    move/from16 v16, v2

    move/from16 v20, v3

    invoke-direct/range {v14 .. v21}, Lcom/prineside/luaj/parser/TokenMgrError;-><init>(ZIIILjava/lang/String;CI)V

    throw v1

    :catch_3
    iput v3, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->h()Lcom/prineside/luaj/parser/Token;

    move-result-object v1

    iput-object v4, v1, Lcom/prineside/luaj/parser/Token;->specialToken:Lcom/prineside/luaj/parser/Token;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public h()Lcom/prineside/luaj/parser/Token;
    .locals 6

    iget v0, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->l:I

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->e:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/prineside/luaj/parser/SimpleCharStream;->getBeginLine()I

    move-result v1

    iget-object v2, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/prineside/luaj/parser/SimpleCharStream;->getBeginColumn()I

    move-result v2

    move v3, v1

    move v4, v2

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    iget v1, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    aget-object v0, v0, v1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {v0}, Lcom/prineside/luaj/parser/SimpleCharStream;->GetImage()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/prineside/luaj/parser/SimpleCharStream;->getBeginLine()I

    move-result v1

    iget-object v2, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/prineside/luaj/parser/SimpleCharStream;->getBeginColumn()I

    move-result v2

    iget-object v3, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {v3}, Lcom/prineside/luaj/parser/SimpleCharStream;->getEndLine()I

    move-result v3

    iget-object v4, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {v4}, Lcom/prineside/luaj/parser/SimpleCharStream;->getEndColumn()I

    move-result v4

    :goto_1
    iget v5, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    invoke-static {v5, v0}, Lcom/prineside/luaj/parser/Token;->newToken(ILjava/lang/String;)Lcom/prineside/luaj/parser/Token;

    move-result-object v0

    iput v1, v0, Lcom/prineside/luaj/parser/Token;->beginLine:I

    iput v3, v0, Lcom/prineside/luaj/parser/Token;->endLine:I

    iput v2, v0, Lcom/prineside/luaj/parser/Token;->beginColumn:I

    iput v4, v0, Lcom/prineside/luaj/parser/Token;->endColumn:I

    return-object v0
.end method

.method public final i(II)I
    .locals 32

    move-object/from16 v0, p0

    const/16 v1, 0x42

    iput v1, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    iget-object v1, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->c:[I

    const/4 v2, 0x0

    aput p1, v1, v2

    const v1, 0x7fffffff

    const/4 v3, 0x1

    move/from16 v4, p2

    const/4 v5, 0x1

    const v6, 0x7fffffff

    const/4 v7, 0x0

    :goto_0
    iget v8, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->k:I

    add-int/2addr v8, v3

    iput v8, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->k:I

    if-ne v8, v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a()V

    :cond_0
    iget-char v8, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    const/16 v9, 0x40

    const-wide/16 v10, 0x1

    const/16 v14, 0x27

    const/16 v3, 0x20

    const/16 v15, 0x16

    const/4 v12, 0x4

    const/4 v1, 0x6

    const/16 v13, 0x34

    const-wide/16 v20, 0x0

    if-ge v8, v9, :cond_23

    shl-long v22, v10, v8

    :goto_1
    iget-object v8, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->c:[I

    add-int/lit8 v5, v5, -0x1

    aget v9, v8, v5

    const/16 v10, 0x2e

    const/16 v11, 0x3d

    const-wide/high16 v24, 0x3ff000000000000L

    packed-switch v9, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    :pswitch_1
    and-long v8, v22, v24

    cmp-long v10, v8, v20

    if-nez v10, :cond_1

    goto/16 :goto_2

    :cond_1
    if-le v6, v13, :cond_2

    const/16 v6, 0x34

    :cond_2
    const/16 v8, 0x41

    invoke-virtual {v0, v8, v3}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g(II)V

    goto/16 :goto_2

    :pswitch_2
    and-long v8, v22, v24

    cmp-long v10, v8, v20

    if-nez v10, :cond_3

    goto/16 :goto_2

    :cond_3
    if-le v6, v13, :cond_4

    const/16 v6, 0x34

    :cond_4
    const/16 v8, 0x40

    invoke-virtual {v0, v8, v3}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g(II)V

    goto/16 :goto_2

    :pswitch_3
    iget-char v8, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    if-eq v8, v10, :cond_5

    goto/16 :goto_2

    :cond_5
    if-le v6, v13, :cond_6

    const/16 v6, 0x34

    :cond_6
    const/16 v8, 0x40

    invoke-virtual {v0, v8, v3}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g(II)V

    goto/16 :goto_2

    :pswitch_4
    and-long v8, v22, v24

    cmp-long v10, v8, v20

    if-eqz v10, :cond_1b

    const/16 v8, 0x3e

    const/16 v9, 0x3f

    invoke-virtual {v0, v8, v9}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g(II)V

    goto/16 :goto_2

    :pswitch_5
    and-long v8, v22, v24

    cmp-long v10, v8, v20

    if-nez v10, :cond_7

    goto/16 :goto_2

    :cond_7
    if-le v6, v13, :cond_8

    const/16 v6, 0x34

    :cond_8
    const/4 v8, 0x3

    invoke-virtual {v0, v2, v8}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->f(II)V

    goto/16 :goto_2

    :pswitch_6
    and-long v8, v22, v24

    cmp-long v10, v8, v20

    if-eqz v10, :cond_1b

    const/16 v8, 0x1a

    const/16 v9, 0x1d

    invoke-virtual {v0, v8, v9}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->f(II)V

    goto/16 :goto_2

    :pswitch_7
    and-long v8, v22, v24

    cmp-long v10, v8, v20

    if-eqz v10, :cond_1b

    const/16 v8, 0x19

    invoke-virtual {v0, v15, v8}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->f(II)V

    goto/16 :goto_2

    :pswitch_8
    and-long v8, v22, v24

    cmp-long v10, v8, v20

    if-eqz v10, :cond_1b

    invoke-virtual {v0, v12, v1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->f(II)V

    goto/16 :goto_2

    :pswitch_9
    and-long v9, v22, v24

    cmp-long v11, v9, v20

    if-eqz v11, :cond_1b

    iget v9, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    const/16 v10, 0x39

    aput v10, v8, v9

    goto/16 :goto_2

    :pswitch_a
    and-long v9, v22, v24

    cmp-long v11, v9, v20

    if-eqz v11, :cond_1b

    iget v9, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    const/16 v10, 0x38

    aput v10, v8, v9

    goto/16 :goto_2

    :pswitch_b
    and-long v9, v22, v24

    cmp-long v11, v9, v20

    if-eqz v11, :cond_1b

    iget v9, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    const/16 v10, 0x37

    aput v10, v8, v9

    goto/16 :goto_2

    :pswitch_c
    invoke-virtual {v0, v12, v1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->f(II)V

    goto/16 :goto_2

    :pswitch_d
    iget-char v8, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    if-ne v8, v14, :cond_1b

    const/16 v8, 0x3e

    if-le v6, v8, :cond_1b

    const/16 v6, 0x3e

    goto/16 :goto_2

    :pswitch_e
    const-wide v8, -0x8000000001L

    and-long v8, v22, v8

    cmp-long v10, v8, v20

    if-eqz v10, :cond_1b

    invoke-virtual {v0, v12, v1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->f(II)V

    goto/16 :goto_2

    :pswitch_f
    iget-char v8, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    if-ne v8, v14, :cond_1b

    invoke-virtual {v0, v12, v1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->f(II)V

    goto/16 :goto_2

    :pswitch_10
    and-long v8, v22, v24

    cmp-long v10, v8, v20

    if-eqz v10, :cond_1b

    const/16 v8, 0x12

    const/16 v9, 0x15

    invoke-virtual {v0, v8, v9}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->f(II)V

    goto/16 :goto_2

    :pswitch_11
    and-long v8, v22, v24

    cmp-long v10, v8, v20

    if-eqz v10, :cond_1b

    const/16 v8, 0xe

    const/16 v9, 0x11

    invoke-virtual {v0, v8, v9}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->f(II)V

    goto/16 :goto_2

    :pswitch_12
    and-long v8, v22, v24

    cmp-long v10, v8, v20

    if-eqz v10, :cond_1b

    const/16 v8, 0x9

    const/4 v9, 0x7

    invoke-virtual {v0, v9, v8}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->f(II)V

    goto/16 :goto_2

    :pswitch_13
    and-long v9, v22, v24

    cmp-long v11, v9, v20

    if-eqz v11, :cond_1b

    iget v9, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    const/16 v10, 0x2c

    aput v10, v8, v9

    goto/16 :goto_2

    :pswitch_14
    and-long v9, v22, v24

    cmp-long v11, v9, v20

    if-eqz v11, :cond_1b

    iget v9, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    const/16 v10, 0x2b

    aput v10, v8, v9

    goto/16 :goto_2

    :pswitch_15
    and-long v9, v22, v24

    cmp-long v11, v9, v20

    if-eqz v11, :cond_1b

    iget v9, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    const/16 v10, 0x2a

    aput v10, v8, v9

    goto/16 :goto_2

    :pswitch_16
    const/16 v8, 0x9

    const/4 v9, 0x7

    invoke-virtual {v0, v9, v8}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->f(II)V

    goto/16 :goto_2

    :pswitch_17
    iget-char v8, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    const/16 v9, 0x22

    if-ne v8, v9, :cond_1b

    if-le v6, v11, :cond_1b

    const/16 v6, 0x3d

    goto/16 :goto_2

    :pswitch_18
    const-wide v8, -0x400000001L

    and-long v8, v22, v8

    cmp-long v10, v8, v20

    if-eqz v10, :cond_1b

    const/16 v8, 0x9

    const/4 v9, 0x7

    invoke-virtual {v0, v9, v8}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->f(II)V

    goto/16 :goto_2

    :pswitch_19
    const/16 v8, 0x9

    const/4 v9, 0x7

    iget-char v10, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    const/16 v11, 0x22

    if-ne v10, v11, :cond_1b

    invoke-virtual {v0, v9, v8}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->f(II)V

    goto/16 :goto_2

    :pswitch_1a
    const/16 v11, 0x22

    and-long v8, v22, v24

    cmp-long v10, v8, v20

    if-nez v10, :cond_9

    goto/16 :goto_2

    :cond_9
    if-le v6, v13, :cond_a

    const/16 v6, 0x34

    :cond_a
    invoke-virtual {v0, v11}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->e(I)V

    goto/16 :goto_2

    :pswitch_1b
    const/16 v11, 0x22

    const-wide v8, 0x280000000000L

    and-long v8, v22, v8

    cmp-long v10, v8, v20

    if-eqz v10, :cond_1b

    invoke-virtual {v0, v11}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->e(I)V

    goto/16 :goto_2

    :pswitch_1c
    and-long v8, v22, v24

    cmp-long v10, v8, v20

    if-nez v10, :cond_b

    goto/16 :goto_2

    :cond_b
    if-le v6, v13, :cond_c

    const/16 v6, 0x34

    :cond_c
    const/16 v8, 0x1f

    invoke-virtual {v0, v8, v3}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g(II)V

    goto/16 :goto_2

    :pswitch_1d
    iget-char v8, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    if-ne v8, v10, :cond_1b

    const/16 v8, 0x1f

    invoke-virtual {v0, v8}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->e(I)V

    goto/16 :goto_2

    :pswitch_1e
    and-long v8, v22, v24

    cmp-long v10, v8, v20

    if-nez v10, :cond_d

    goto/16 :goto_2

    :cond_d
    if-le v6, v13, :cond_e

    const/16 v6, 0x34

    :cond_e
    const/16 v8, 0x1d

    invoke-virtual {v0, v8, v15}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g(II)V

    goto/16 :goto_2

    :pswitch_1f
    and-long v8, v22, v24

    cmp-long v10, v8, v20

    if-nez v10, :cond_f

    goto/16 :goto_2

    :cond_f
    if-le v6, v13, :cond_10

    const/16 v6, 0x34

    :cond_10
    const/16 v8, 0x1c

    invoke-virtual {v0, v8, v15}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g(II)V

    goto/16 :goto_2

    :pswitch_20
    iget-char v8, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    if-eq v8, v10, :cond_11

    goto/16 :goto_2

    :cond_11
    if-le v6, v13, :cond_12

    const/16 v6, 0x34

    :cond_12
    const/16 v8, 0x1c

    invoke-virtual {v0, v8, v15}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g(II)V

    goto/16 :goto_2

    :pswitch_21
    and-long v8, v22, v24

    cmp-long v10, v8, v20

    if-eqz v10, :cond_1b

    const/16 v8, 0x1a

    const/16 v9, 0x1b

    invoke-virtual {v0, v8, v9}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g(II)V

    goto/16 :goto_2

    :pswitch_22
    and-long v8, v22, v24

    cmp-long v10, v8, v20

    if-nez v10, :cond_13

    goto/16 :goto_2

    :cond_13
    if-le v6, v13, :cond_14

    const/16 v6, 0x34

    :cond_14
    const/16 v8, 0xd

    const/16 v9, 0xa

    invoke-virtual {v0, v9, v8}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->f(II)V

    goto/16 :goto_2

    :pswitch_23
    and-long v8, v22, v24

    cmp-long v10, v8, v20

    if-nez v10, :cond_15

    goto :goto_2

    :cond_15
    if-le v6, v13, :cond_16

    const/16 v6, 0x34

    :cond_16
    const/16 v8, 0x18

    invoke-virtual {v0, v8}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->e(I)V

    goto :goto_2

    :pswitch_24
    const-wide v8, 0x280000000000L

    and-long v8, v22, v8

    cmp-long v10, v8, v20

    if-eqz v10, :cond_1b

    const/16 v8, 0x18

    invoke-virtual {v0, v8}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->e(I)V

    goto :goto_2

    :pswitch_25
    and-long v8, v22, v24

    cmp-long v10, v8, v20

    if-nez v10, :cond_17

    goto :goto_2

    :cond_17
    if-le v6, v13, :cond_18

    const/16 v6, 0x34

    :cond_18
    const/16 v8, 0x15

    invoke-virtual {v0, v8, v15}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g(II)V

    goto :goto_2

    :pswitch_26
    const/16 v8, 0x15

    iget-char v9, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    if-ne v9, v10, :cond_1b

    invoke-virtual {v0, v8}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->e(I)V

    goto :goto_2

    :pswitch_27
    iget-char v9, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    const/16 v10, 0x30

    if-ne v9, v10, :cond_1b

    iget v9, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    const/16 v10, 0x13

    aput v10, v8, v9

    goto :goto_2

    :pswitch_28
    and-long v9, v22, v24

    cmp-long v11, v9, v20

    if-nez v11, :cond_19

    goto :goto_2

    :cond_19
    const/16 v9, 0x33

    if-le v6, v9, :cond_1a

    const/16 v6, 0x33

    :cond_1a
    iget v9, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    const/16 v10, 0x11

    aput v10, v8, v9

    :cond_1b
    :goto_2
    const/4 v9, 0x1

    goto/16 :goto_4

    :pswitch_29
    iget-char v9, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    if-ne v9, v11, :cond_1b

    iget v9, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    const/16 v10, 0xd

    aput v10, v8, v9

    goto :goto_2

    :pswitch_2a
    iget-char v9, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    if-ne v9, v11, :cond_1b

    iget v9, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    const/16 v10, 0xc

    aput v10, v8, v9

    goto :goto_2

    :pswitch_2b
    iget-char v9, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    if-ne v9, v11, :cond_1b

    iget v9, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    const/16 v10, 0x9

    aput v10, v8, v9

    goto :goto_2

    :pswitch_2c
    iget-char v8, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    if-ne v8, v11, :cond_1b

    const/16 v8, 0xb

    const/16 v9, 0xa

    invoke-virtual {v0, v9, v8}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g(II)V

    goto :goto_2

    :pswitch_2d
    and-long v24, v22, v24

    cmp-long v9, v24, v20

    if-eqz v9, :cond_1d

    if-le v6, v13, :cond_1c

    const/16 v6, 0x34

    :cond_1c
    const/4 v8, 0x3

    invoke-virtual {v0, v2, v8}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->f(II)V

    goto :goto_3

    :cond_1d
    iget-char v9, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    if-ne v9, v14, :cond_1e

    invoke-virtual {v0, v12, v1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->f(II)V

    goto :goto_3

    :cond_1e
    const/16 v11, 0x22

    if-ne v9, v11, :cond_1f

    const/16 v11, 0x9

    const/4 v13, 0x7

    invoke-virtual {v0, v13, v11}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->f(II)V

    goto :goto_3

    :cond_1f
    if-ne v9, v10, :cond_20

    const/16 v8, 0x1f

    invoke-virtual {v0, v8}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->e(I)V

    goto :goto_3

    :cond_20
    const/16 v10, 0x2d

    if-ne v9, v10, :cond_21

    iget v9, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    const/4 v10, 0x7

    aput v10, v8, v9

    :cond_21
    :goto_3
    iget-char v8, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    const/16 v9, 0x30

    if-ne v8, v9, :cond_1b

    iget-object v8, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->c:[I

    iget v9, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    const/16 v10, 0x13

    aput v10, v8, v9

    goto/16 :goto_2

    :pswitch_2e
    iget-char v9, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    const/16 v10, 0x2d

    if-ne v9, v10, :cond_1b

    iget v9, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    aput v1, v8, v9

    goto/16 :goto_2

    :pswitch_2f
    iget-char v9, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    if-ne v9, v11, :cond_1b

    iget v9, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    aput v12, v8, v9

    goto/16 :goto_2

    :pswitch_30
    iget-char v9, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    if-ne v9, v11, :cond_1b

    iget v9, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    const/4 v10, 0x3

    aput v10, v8, v9

    goto/16 :goto_2

    :pswitch_31
    iget-char v9, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    if-ne v9, v11, :cond_1b

    iget v9, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    aput v2, v8, v9

    goto/16 :goto_2

    :pswitch_32
    iget-char v8, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    if-ne v8, v11, :cond_1b

    const/4 v8, 0x2

    const/4 v9, 0x1

    invoke-virtual {v0, v9, v8}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g(II)V

    :goto_4
    if-ne v5, v7, :cond_22

    goto/16 :goto_10

    :cond_22
    const/16 v13, 0x34

    goto/16 :goto_1

    :cond_23
    const/4 v9, 0x1

    const/16 v13, 0x80

    if-ge v8, v13, :cond_44

    and-int/lit8 v8, v8, 0x3f

    shl-long v22, v10, v8

    :goto_5
    iget-object v8, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->c:[I

    add-int/lit8 v5, v5, -0x1

    aget v10, v8, v5

    const/4 v11, 0x2

    const/16 v13, 0x5b

    if-eq v10, v11, :cond_41

    if-eq v10, v1, :cond_40

    const/16 v11, 0x8

    if-eq v10, v11, :cond_3c

    const/16 v11, 0xb

    if-eq v10, v11, :cond_3b

    const/16 v11, 0x13

    if-eq v10, v11, :cond_3a

    if-eq v10, v3, :cond_38

    const/16 v11, 0x24

    if-eq v10, v11, :cond_37

    const/16 v11, 0x31

    if-eq v10, v11, :cond_36

    const-wide v25, 0x7e0000007eL

    const/16 v11, 0x15

    if-eq v10, v11, :cond_32

    if-eq v10, v15, :cond_31

    const/16 v11, 0x19

    if-eq v10, v11, :cond_2e

    const/16 v11, 0x1a

    if-eq v10, v11, :cond_2d

    const/16 v11, 0x1c

    if-eq v10, v11, :cond_2a

    const/16 v11, 0x1d

    if-eq v10, v11, :cond_27

    packed-switch v10, :pswitch_data_1

    packed-switch v10, :pswitch_data_2

    packed-switch v10, :pswitch_data_3

    :goto_6
    goto/16 :goto_7

    :pswitch_33
    and-long v10, v22, v25

    cmp-long v8, v10, v20

    if-eqz v8, :cond_26

    invoke-virtual {v0, v12, v1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->f(II)V

    goto/16 :goto_7

    :pswitch_34
    and-long v10, v22, v25

    cmp-long v13, v10, v20

    if-eqz v13, :cond_26

    iget v10, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    const/16 v11, 0x39

    aput v11, v8, v10

    goto/16 :goto_7

    :pswitch_35
    and-long v10, v22, v25

    cmp-long v13, v10, v20

    if-eqz v13, :cond_26

    iget v10, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    const/16 v11, 0x38

    aput v11, v8, v10

    goto/16 :goto_7

    :pswitch_36
    and-long v10, v22, v25

    cmp-long v13, v10, v20

    if-eqz v13, :cond_26

    iget v10, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    const/16 v11, 0x37

    aput v11, v8, v10

    goto/16 :goto_7

    :pswitch_37
    iget-char v10, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    const/16 v11, 0x75

    if-ne v10, v11, :cond_26

    iget v10, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    const/16 v11, 0x36

    aput v11, v8, v10

    goto/16 :goto_7

    :pswitch_38
    invoke-virtual {v0, v12, v1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->f(II)V

    goto/16 :goto_7

    :pswitch_39
    iget-char v8, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    const/16 v10, 0x5c

    if-ne v8, v10, :cond_26

    const/16 v8, 0x29

    invoke-virtual {v0, v14, v8}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->c(II)V

    goto/16 :goto_7

    :pswitch_3a
    and-long v10, v22, v25

    cmp-long v8, v10, v20

    if-eqz v8, :cond_26

    const/16 v8, 0x9

    const/4 v10, 0x7

    invoke-virtual {v0, v10, v8}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->f(II)V

    goto/16 :goto_7

    :pswitch_3b
    and-long v10, v22, v25

    cmp-long v13, v10, v20

    if-eqz v13, :cond_26

    iget v10, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    const/16 v11, 0x2c

    aput v11, v8, v10

    goto :goto_7

    :pswitch_3c
    and-long v10, v22, v25

    cmp-long v13, v10, v20

    if-eqz v13, :cond_26

    iget v10, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    const/16 v11, 0x2b

    aput v11, v8, v10

    goto :goto_7

    :pswitch_3d
    and-long v10, v22, v25

    cmp-long v13, v10, v20

    if-eqz v13, :cond_26

    iget v10, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    const/16 v11, 0x2a

    aput v11, v8, v10

    goto :goto_7

    :pswitch_3e
    iget-char v10, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    const/16 v11, 0x75

    if-ne v10, v11, :cond_26

    iget v10, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    const/16 v11, 0x29

    aput v11, v8, v10

    goto :goto_7

    :pswitch_3f
    const/16 v8, 0x9

    const/4 v10, 0x7

    invoke-virtual {v0, v10, v8}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->f(II)V

    goto :goto_7

    :pswitch_40
    iget-char v8, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    const/16 v10, 0x5c

    if-ne v8, v10, :cond_26

    const/16 v8, 0x24

    const/16 v10, 0x26

    invoke-virtual {v0, v8, v10}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->c(II)V

    goto :goto_7

    :pswitch_41
    const-wide v10, 0x7fffffe87fffffeL

    and-long v10, v22, v10

    cmp-long v8, v10, v20

    if-nez v8, :cond_24

    goto/16 :goto_6

    :cond_24
    const/16 v8, 0x33

    if-le v6, v8, :cond_25

    const/16 v6, 0x33

    :cond_25
    const/16 v8, 0x11

    invoke-virtual {v0, v8}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->e(I)V

    :cond_26
    :goto_7
    const/16 v2, 0xa

    const/16 v10, 0x15

    :goto_8
    const/16 v11, 0x22

    goto/16 :goto_c

    :pswitch_42
    iget-char v10, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    if-ne v10, v13, :cond_26

    iget v10, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    const/16 v11, 0xe

    aput v11, v8, v10

    goto :goto_7

    :cond_27
    and-long v10, v22, v25

    cmp-long v8, v10, v20

    if-nez v8, :cond_28

    goto/16 :goto_6

    :cond_28
    const/16 v8, 0x34

    if-le v6, v8, :cond_29

    const/16 v24, 0x34

    goto :goto_9

    :cond_29
    move/from16 v24, v6

    :goto_9
    const/16 v6, 0x1d

    invoke-virtual {v0, v6, v15}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g(II)V

    move/from16 v6, v24

    goto :goto_7

    :cond_2a
    const/16 v8, 0x34

    and-long v10, v22, v25

    cmp-long v13, v10, v20

    if-nez v13, :cond_2b

    goto/16 :goto_6

    :cond_2b
    if-le v6, v8, :cond_2c

    const/16 v6, 0x34

    :cond_2c
    const/16 v8, 0x1c

    invoke-virtual {v0, v8, v15}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g(II)V

    goto :goto_7

    :cond_2d
    and-long v10, v22, v25

    cmp-long v8, v10, v20

    if-eqz v8, :cond_26

    const/16 v8, 0x1a

    const/16 v10, 0x1b

    invoke-virtual {v0, v8, v10}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g(II)V

    goto :goto_7

    :cond_2e
    and-long v10, v22, v25

    cmp-long v8, v10, v20

    if-nez v8, :cond_2f

    goto/16 :goto_6

    :cond_2f
    const/16 v8, 0x34

    if-le v6, v8, :cond_30

    const/16 v6, 0x34

    :cond_30
    const/16 v8, 0xd

    const/16 v10, 0xa

    invoke-virtual {v0, v10, v8}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->f(II)V

    goto :goto_7

    :cond_31
    const-wide v10, 0x1002000010020L

    and-long v10, v22, v10

    cmp-long v8, v10, v20

    if-eqz v8, :cond_26

    const/16 v8, 0x21

    invoke-virtual {v0, v3, v8}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->c(II)V

    goto :goto_7

    :cond_32
    and-long v10, v22, v25

    cmp-long v8, v10, v20

    if-nez v8, :cond_33

    goto/16 :goto_6

    :cond_33
    const/16 v8, 0x34

    if-le v6, v8, :cond_34

    const/16 v6, 0x34

    :cond_34
    const/16 v10, 0x15

    invoke-virtual {v0, v10, v15}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g(II)V

    :cond_35
    :goto_a
    const/16 v2, 0xa

    goto/16 :goto_8

    :cond_36
    const/16 v10, 0x15

    const-wide/32 v25, -0x10000001

    and-long v25, v22, v25

    cmp-long v8, v25, v20

    if-eqz v8, :cond_35

    invoke-virtual {v0, v12, v1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->f(II)V

    goto :goto_a

    :cond_37
    const/16 v10, 0x15

    const-wide/32 v25, -0x10000001

    and-long v25, v22, v25

    cmp-long v8, v25, v20

    if-eqz v8, :cond_35

    const/16 v8, 0x9

    const/4 v11, 0x7

    invoke-virtual {v0, v11, v8}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->f(II)V

    goto :goto_a

    :cond_38
    const/16 v10, 0x15

    const-wide v25, 0x2000000020L

    and-long v25, v22, v25

    cmp-long v8, v25, v20

    if-eqz v8, :cond_39

    const/16 v8, 0x23

    const/16 v11, 0x22

    invoke-virtual {v0, v11, v8}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->c(II)V

    goto :goto_b

    :cond_39
    const/16 v11, 0x22

    goto :goto_b

    :cond_3a
    const/16 v10, 0x15

    const/16 v11, 0x22

    const-wide v25, 0x100000001000000L

    and-long v25, v22, v25

    cmp-long v8, v25, v20

    if-eqz v8, :cond_3e

    const/16 v8, 0x1e

    const/16 v13, 0x1f

    invoke-virtual {v0, v8, v13}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->c(II)V

    goto :goto_b

    :cond_3b
    const/16 v10, 0x15

    const/16 v11, 0x22

    iget-char v8, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    if-ne v8, v13, :cond_3e

    const/16 v8, 0xf

    if-le v6, v8, :cond_3e

    const/16 v6, 0xf

    goto :goto_b

    :cond_3c
    const/16 v10, 0x15

    const/16 v11, 0x22

    const-wide v25, 0x7fffffe87fffffeL

    and-long v25, v22, v25

    cmp-long v16, v25, v20

    if-eqz v16, :cond_3f

    const/16 v2, 0x33

    if-le v6, v2, :cond_3d

    const/16 v6, 0x33

    :cond_3d
    const/16 v8, 0x11

    invoke-virtual {v0, v8}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->e(I)V

    :cond_3e
    :goto_b
    const/16 v2, 0xa

    goto :goto_c

    :cond_3f
    iget-char v2, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    if-ne v2, v13, :cond_3e

    iget v2, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    add-int/lit8 v13, v2, 0x1

    iput v13, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    const/16 v13, 0xe

    aput v13, v8, v2

    goto :goto_b

    :cond_40
    const/16 v10, 0x15

    const/16 v11, 0x22

    iget-char v2, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    if-ne v2, v13, :cond_3e

    iget v2, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    add-int/lit8 v13, v2, 0x1

    iput v13, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    const/4 v13, 0x5

    aput v13, v8, v2

    goto :goto_b

    :cond_41
    const/16 v10, 0x15

    const/16 v11, 0x22

    iget-char v2, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    if-ne v2, v13, :cond_3e

    const/16 v2, 0xa

    if-le v6, v2, :cond_42

    const/16 v6, 0xa

    :cond_42
    :goto_c
    if-ne v5, v7, :cond_43

    goto :goto_10

    :cond_43
    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_44
    shr-int/lit8 v2, v8, 0x8

    shr-int/lit8 v3, v2, 0x6

    and-int/lit8 v13, v2, 0x3f

    shl-long v17, v10, v13

    and-int/lit16 v13, v8, 0xff

    shr-int/2addr v13, v1

    and-int/lit8 v8, v8, 0x3f

    shl-long/2addr v10, v8

    :goto_d
    iget-object v8, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->c:[I

    add-int/lit8 v5, v5, -0x1

    aget v8, v8, v5

    const/16 v15, 0x24

    if-eq v8, v15, :cond_48

    if-eq v8, v14, :cond_48

    const/16 v15, 0x31

    if-eq v8, v15, :cond_46

    const/16 v15, 0x34

    if-eq v8, v15, :cond_47

    :cond_45
    :goto_e
    const/4 v1, 0x7

    const/16 v8, 0x9

    goto :goto_f

    :cond_46
    const/16 v15, 0x34

    :cond_47
    move/from16 v25, v2

    move/from16 v26, v3

    move/from16 v27, v13

    move-wide/from16 v28, v17

    move-wide/from16 v30, v10

    invoke-static/range {v25 .. v31}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->d(IIIJJ)Z

    move-result v8

    if-eqz v8, :cond_45

    invoke-virtual {v0, v12, v1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->f(II)V

    goto :goto_e

    :cond_48
    const/16 v15, 0x34

    move/from16 v25, v2

    move/from16 v26, v3

    move/from16 v27, v13

    move-wide/from16 v28, v17

    move-wide/from16 v30, v10

    invoke-static/range {v25 .. v31}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->d(IIIJJ)Z

    move-result v8

    if-eqz v8, :cond_45

    const/4 v1, 0x7

    const/16 v8, 0x9

    invoke-virtual {v0, v1, v8}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->f(II)V

    :goto_f
    if-ne v5, v7, :cond_4b

    :goto_10
    const v1, 0x7fffffff

    if-eq v6, v1, :cond_49

    iput v6, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    iput v4, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->l:I

    const v6, 0x7fffffff

    :cond_49
    add-int/lit8 v4, v4, 0x1

    iget v5, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    iput v7, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    rsub-int/lit8 v7, v7, 0x42

    if-ne v5, v7, :cond_4a

    return v4

    :cond_4a
    :try_start_0
    iget-object v2, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/prineside/luaj/parser/SimpleCharStream;->readChar()C

    move-result v2

    iput-char v2, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto/16 :goto_0

    :catch_0
    return v4

    :cond_4b
    const/4 v1, 0x6

    goto :goto_d

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_32
        :pswitch_32
        :pswitch_0
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_0
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2c
        :pswitch_0
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_0
        :pswitch_0
        :pswitch_28
        :pswitch_27
        :pswitch_0
        :pswitch_26
        :pswitch_25
        :pswitch_0
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_0
        :pswitch_16
        :pswitch_0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_12
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_42
        :pswitch_41
        :pswitch_41
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x26
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x33
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
    .end packed-switch
.end method

.method public final j(II)I
    .locals 28

    move-object/from16 v0, p0

    const/4 v1, 0x4

    iput v1, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    iget-object v2, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->c:[I

    const/4 v3, 0x0

    aput p1, v2, v3

    const v2, 0x7fffffff

    const/4 v4, 0x1

    move/from16 v3, p2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const v7, 0x7fffffff

    :goto_0
    iget v8, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->k:I

    add-int/2addr v8, v4

    iput v8, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->k:I

    if-ne v8, v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a()V

    :cond_0
    iget-char v8, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    const/16 v9, 0x40

    const-wide/16 v10, 0x1

    const/16 v12, 0x2c

    const/16 v13, 0x2a

    const/16 v14, 0x11

    if-ge v8, v9, :cond_c

    shl-long v15, v10, v8

    :goto_1
    iget-object v8, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->c:[I

    add-int/lit8 v6, v6, -0x1

    aget v9, v8, v6

    const-wide/16 v10, -0x2401

    const-wide/16 v17, 0x0

    if-eqz v9, :cond_8

    const-wide/16 v19, 0x2400

    if-eq v9, v4, :cond_7

    const/4 v4, 0x2

    if-eq v9, v4, :cond_6

    const/4 v2, 0x3

    const/16 v4, 0xd

    if-eq v9, v2, :cond_5

    if-eq v9, v1, :cond_1

    goto :goto_5

    :cond_1
    and-long v8, v15, v10

    cmp-long v2, v8, v17

    if-eqz v2, :cond_3

    if-le v7, v14, :cond_2

    const/16 v7, 0x11

    :cond_2
    invoke-virtual {v0, v13, v12}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->f(II)V

    goto :goto_2

    :cond_3
    and-long v8, v15, v19

    cmp-long v2, v8, v17

    if-eqz v2, :cond_4

    if-le v7, v14, :cond_4

    const/16 v7, 0x11

    :cond_4
    :goto_2
    iget-char v2, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    if-ne v2, v4, :cond_a

    iget-object v2, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->c:[I

    iget v4, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    add-int/lit8 v8, v4, 0x1

    iput v8, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    const/4 v9, 0x2

    aput v9, v2, v4

    goto :goto_5

    :cond_5
    const/4 v9, 0x2

    iget-char v2, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    if-ne v2, v4, :cond_a

    iget v2, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    add-int/lit8 v4, v2, 0x1

    iput v4, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    aput v9, v8, v2

    goto :goto_5

    :cond_6
    iget-char v2, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    const/16 v4, 0xa

    if-ne v2, v4, :cond_a

    if-le v7, v14, :cond_a

    goto :goto_3

    :cond_7
    and-long v8, v15, v19

    cmp-long v2, v8, v17

    if-eqz v2, :cond_a

    if-le v7, v14, :cond_a

    :goto_3
    goto :goto_4

    :cond_8
    and-long v8, v15, v10

    cmp-long v2, v8, v17

    if-nez v2, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v0, v13, v12}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->f(II)V

    :goto_4
    const/16 v7, 0x11

    :cond_a
    :goto_5
    if-ne v6, v5, :cond_b

    goto :goto_8

    :cond_b
    const v2, 0x7fffffff

    const/4 v4, 0x1

    goto :goto_1

    :cond_c
    const/16 v2, 0x80

    if-ge v8, v2, :cond_f

    :cond_d
    iget-object v2, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->c:[I

    add-int/lit8 v6, v6, -0x1

    aget v2, v2, v6

    if-eqz v2, :cond_e

    if-eq v2, v1, :cond_e

    goto :goto_6

    :cond_e
    invoke-virtual {v0, v13, v12}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->f(II)V

    const/16 v7, 0x11

    :goto_6
    if-ne v6, v5, :cond_d

    goto :goto_8

    :cond_f
    shr-int/lit8 v2, v8, 0x8

    shr-int/lit8 v4, v2, 0x6

    and-int/lit8 v9, v2, 0x3f

    shl-long v15, v10, v9

    and-int/lit16 v9, v8, 0xff

    shr-int/lit8 v9, v9, 0x6

    and-int/lit8 v8, v8, 0x3f

    shl-long/2addr v10, v8

    :cond_10
    iget-object v8, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->c:[I

    add-int/lit8 v6, v6, -0x1

    aget v8, v8, v6

    if-eqz v8, :cond_11

    if-eq v8, v1, :cond_11

    goto :goto_7

    :cond_11
    move/from16 v21, v2

    move/from16 v22, v4

    move/from16 v23, v9

    move-wide/from16 v24, v15

    move-wide/from16 v26, v10

    invoke-static/range {v21 .. v27}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->d(IIIJJ)Z

    move-result v8

    if-nez v8, :cond_12

    goto :goto_7

    :cond_12
    if-le v7, v14, :cond_13

    const/16 v7, 0x11

    :cond_13
    invoke-virtual {v0, v13, v12}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->f(II)V

    :goto_7
    if-ne v6, v5, :cond_10

    :goto_8
    const v8, 0x7fffffff

    if-eq v7, v8, :cond_14

    iput v7, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    iput v3, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->l:I

    const v7, 0x7fffffff

    :cond_14
    add-int/lit8 v3, v3, 0x1

    iget v6, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    iput v5, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    rsub-int/lit8 v5, v5, 0x4

    if-ne v6, v5, :cond_15

    return v3

    :cond_15
    :try_start_0
    iget-object v2, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {v2}, Lcom/prineside/luaj/parser/SimpleCharStream;->readChar()C

    move-result v2

    iput-char v2, v0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const v2, 0x7fffffff

    const/4 v4, 0x1

    goto/16 :goto_0

    :catch_0
    return v3
.end method

.method public final k(II)I
    .locals 12

    const/4 v0, 0x7

    iput v0, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->c:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const p1, 0x7fffffff

    const/4 v0, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const v4, 0x7fffffff

    :goto_0
    iget v5, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->k:I

    add-int/2addr v5, v0

    iput v5, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->k:I

    if-ne v5, p1, :cond_0

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a()V

    :cond_0
    iget-char v5, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    const/16 v6, 0x40

    const/4 v7, 0x2

    const/4 v8, 0x5

    if-ge v5, v6, :cond_7

    :cond_1
    iget-object v5, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->c:[I

    add-int/lit8 v2, v2, -0x1

    aget v6, v5, v2

    const/16 v9, 0x3d

    if-eqz v6, :cond_5

    if-eq v6, v0, :cond_5

    const/4 v10, 0x3

    if-eq v6, v10, :cond_4

    const/4 v11, 0x4

    if-eq v6, v11, :cond_3

    if-eq v6, v8, :cond_2

    goto :goto_1

    :cond_2
    iget-char v6, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    if-ne v6, v9, :cond_6

    iget v6, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    add-int/lit8 v9, v6, 0x1

    iput v9, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    aput v11, v5, v6

    goto :goto_1

    :cond_3
    iget-char v6, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    if-ne v6, v9, :cond_6

    iget v6, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    add-int/lit8 v9, v6, 0x1

    iput v9, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    aput v10, v5, v6

    goto :goto_1

    :cond_4
    iget-char v6, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    if-ne v6, v9, :cond_6

    iget v6, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    add-int/lit8 v9, v6, 0x1

    iput v9, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    aput v1, v5, v6

    goto :goto_1

    :cond_5
    iget-char v5, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    if-ne v5, v9, :cond_6

    invoke-virtual {p0, v0, v7}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g(II)V

    :cond_6
    :goto_1
    if-ne v2, v3, :cond_1

    goto :goto_3

    :cond_7
    const/16 v6, 0x80

    if-ge v5, v6, :cond_c

    :cond_8
    iget-object v5, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->c:[I

    add-int/lit8 v2, v2, -0x1

    aget v6, v5, v2

    const/16 v9, 0x1b

    const/16 v10, 0x5d

    if-eq v6, v7, :cond_a

    const/4 v9, 0x6

    if-eq v6, v9, :cond_9

    goto :goto_2

    :cond_9
    iget-char v6, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    if-ne v6, v10, :cond_b

    iget v6, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    add-int/lit8 v9, v6, 0x1

    iput v9, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    aput v8, v5, v6

    goto :goto_2

    :cond_a
    iget-char v5, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    if-ne v5, v10, :cond_b

    if-le v4, v9, :cond_b

    const/16 v4, 0x1b

    :cond_b
    :goto_2
    if-ne v2, v3, :cond_8

    goto :goto_3

    :cond_c
    iget-object v5, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->c:[I

    add-int/lit8 v2, v2, -0x1

    aget v5, v5, v2

    if-ne v2, v3, :cond_c

    :goto_3
    if-eq v4, p1, :cond_d

    iput v4, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    iput p2, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->l:I

    const v4, 0x7fffffff

    :cond_d
    add-int/lit8 p2, p2, 0x1

    iget v2, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    iput v3, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    rsub-int/lit8 v3, v3, 0x7

    if-ne v2, v3, :cond_e

    return p2

    :cond_e
    :try_start_0
    iget-object v5, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {v5}, Lcom/prineside/luaj/parser/SimpleCharStream;->readChar()C

    move-result v5

    iput-char v5, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    return p2
.end method

.method public final l(II)I
    .locals 12

    const/4 v0, 0x7

    iput v0, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->c:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const p1, 0x7fffffff

    const/4 v0, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const v4, 0x7fffffff

    :goto_0
    iget v5, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->k:I

    add-int/2addr v5, v0

    iput v5, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->k:I

    if-ne v5, p1, :cond_0

    invoke-virtual {p0}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a()V

    :cond_0
    iget-char v5, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    const/16 v6, 0x40

    const/4 v7, 0x2

    const/4 v8, 0x5

    if-ge v5, v6, :cond_7

    :cond_1
    iget-object v5, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->c:[I

    add-int/lit8 v2, v2, -0x1

    aget v6, v5, v2

    const/16 v9, 0x3d

    if-eqz v6, :cond_5

    if-eq v6, v0, :cond_5

    const/4 v10, 0x3

    if-eq v6, v10, :cond_4

    const/4 v11, 0x4

    if-eq v6, v11, :cond_3

    if-eq v6, v8, :cond_2

    goto :goto_1

    :cond_2
    iget-char v6, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    if-ne v6, v9, :cond_6

    iget v6, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    add-int/lit8 v9, v6, 0x1

    iput v9, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    aput v11, v5, v6

    goto :goto_1

    :cond_3
    iget-char v6, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    if-ne v6, v9, :cond_6

    iget v6, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    add-int/lit8 v9, v6, 0x1

    iput v9, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    aput v10, v5, v6

    goto :goto_1

    :cond_4
    iget-char v6, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    if-ne v6, v9, :cond_6

    iget v6, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    add-int/lit8 v9, v6, 0x1

    iput v9, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    aput v1, v5, v6

    goto :goto_1

    :cond_5
    iget-char v5, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    if-ne v5, v9, :cond_6

    invoke-virtual {p0, v0, v7}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g(II)V

    :cond_6
    :goto_1
    if-ne v2, v3, :cond_1

    goto :goto_3

    :cond_7
    const/16 v6, 0x80

    if-ge v5, v6, :cond_c

    :cond_8
    iget-object v5, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->c:[I

    add-int/lit8 v2, v2, -0x1

    aget v6, v5, v2

    const/16 v9, 0x16

    const/16 v10, 0x5d

    if-eq v6, v7, :cond_a

    const/4 v9, 0x6

    if-eq v6, v9, :cond_9

    goto :goto_2

    :cond_9
    iget-char v6, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    if-ne v6, v10, :cond_b

    iget v6, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    add-int/lit8 v9, v6, 0x1

    iput v9, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    aput v8, v5, v6

    goto :goto_2

    :cond_a
    iget-char v5, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    if-ne v5, v10, :cond_b

    if-le v4, v9, :cond_b

    const/16 v4, 0x16

    :cond_b
    :goto_2
    if-ne v2, v3, :cond_8

    goto :goto_3

    :cond_c
    iget-object v5, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->c:[I

    add-int/lit8 v2, v2, -0x1

    aget v5, v5, v2

    if-ne v2, v3, :cond_c

    :goto_3
    if-eq v4, p1, :cond_d

    iput v4, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    iput p2, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->l:I

    const v4, 0x7fffffff

    :cond_d
    add-int/lit8 p2, p2, 0x1

    iget v2, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    iput v3, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j:I

    rsub-int/lit8 v3, v3, 0x7

    if-ne v2, v3, :cond_e

    return p2

    :cond_e
    :try_start_0
    iget-object v5, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {v5}, Lcom/prineside/luaj/parser/SimpleCharStream;->readChar()C

    move-result v5

    iput-char v5, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    return p2
.end method

.method public final m()I
    .locals 10

    iget-char v0, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    const/16 v1, 0x23

    const/4 v2, 0x0

    if-eq v0, v1, :cond_11

    const/16 v1, 0x25

    if-eq v0, v1, :cond_10

    const/16 v1, 0x5b

    const-wide/16 v3, 0x0

    if-eq v0, v1, :cond_f

    const/16 v5, 0x69

    if-eq v0, v5, :cond_e

    const/16 v5, 0x6c

    if-eq v0, v5, :cond_d

    const/16 v5, 0x72

    if-eq v0, v5, :cond_c

    const/16 v5, 0x77

    if-eq v0, v5, :cond_b

    const/16 v5, 0x7b

    if-eq v0, v5, :cond_a

    const/16 v5, 0x5d

    if-eq v0, v5, :cond_9

    const/16 v5, 0x5e

    if-eq v0, v5, :cond_8

    const/16 v5, 0x61

    const-wide/32 v6, 0x20000000

    if-eq v0, v5, :cond_7

    const/16 v5, 0x62

    const-wide/32 v8, 0x40000000

    if-eq v0, v5, :cond_6

    const/16 v5, 0x6e

    if-eq v0, v5, :cond_5

    const/16 v5, 0x6f

    if-eq v0, v5, :cond_4

    const/16 v5, 0x74

    if-eq v0, v5, :cond_3

    const/16 v5, 0x75

    if-eq v0, v5, :cond_2

    const/16 v5, 0x7d

    if-eq v0, v5, :cond_1

    const/16 v5, 0x7e

    if-eq v0, v5, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    const/16 v0, 0x8

    invoke-virtual {p0, v0, v2}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->i(II)I

    move-result v0

    return v0

    :pswitch_0
    const-wide v0, 0x4000000000L

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->y(JJ)I

    move-result v0

    return v0

    :pswitch_1
    const-wide v0, 0x3800000000L

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->y(JJ)I

    move-result v0

    return v0

    :pswitch_2
    const-wide v0, 0x700000000L

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->y(JJ)I

    move-result v0

    return v0

    :pswitch_3
    const-wide v0, 0x80000000L

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->y(JJ)I

    move-result v0

    return v0

    :pswitch_4
    iput v1, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    const-wide/32 v0, 0x10000000

    invoke-virtual {p0, v3, v4, v0, v1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->y(JJ)I

    move-result v0

    return v0

    :pswitch_5
    const/16 v0, 0x47

    iput v0, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    invoke-virtual {p0, v3, v4, v6, v7}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->y(JJ)I

    move-result v0

    return v0

    :pswitch_6
    const/16 v0, 0x59

    iput v0, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    const-wide/32 v0, 0x4000000

    invoke-virtual {p0, v3, v4, v0, v1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->y(JJ)I

    move-result v0

    return v0

    :pswitch_7
    const/16 v0, 0x46

    invoke-virtual {p0, v2, v0}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->b0(II)I

    move-result v0

    return v0

    :pswitch_8
    const/16 v0, 0x4a

    iput v0, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v3, v4, v0, v1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->y(JJ)I

    move-result v0

    return v0

    :pswitch_9
    const/16 v0, 0x55

    invoke-virtual {p0, v2, v0}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->b0(II)I

    move-result v0

    return v0

    :pswitch_a
    const/16 v0, 0x49

    iput v0, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    const-wide/32 v0, 0x1008000

    invoke-virtual {p0, v3, v4, v0, v1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->y(JJ)I

    move-result v0

    return v0

    :pswitch_b
    const/16 v0, 0x53

    iput v0, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    const-wide/32 v0, 0x103c0

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->y(JJ)I

    move-result v0

    return v0

    :pswitch_c
    const/16 v0, 0x48

    invoke-virtual {p0, v2, v0}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->b0(II)I

    move-result v0

    return v0

    :pswitch_d
    const/16 v0, 0x52

    invoke-virtual {p0, v2, v0}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->b0(II)I

    move-result v0

    return v0

    :pswitch_e
    const/16 v0, 0x54

    invoke-virtual {p0, v2, v0}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->b0(II)I

    move-result v0

    return v0

    :pswitch_f
    const/16 v0, 0x4c

    invoke-virtual {p0, v2, v0}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->b0(II)I

    move-result v0

    return v0

    :pswitch_10
    const/16 v0, 0x4b

    invoke-virtual {p0, v2, v0}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->b0(II)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0, v3, v4, v8, v9}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->y(JJ)I

    move-result v0

    return v0

    :cond_1
    const/16 v0, 0x51

    invoke-virtual {p0, v2, v0}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->b0(II)I

    move-result v0

    return v0

    :cond_2
    const-wide/high16 v0, 0x2000000000000L

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->y(JJ)I

    move-result v0

    return v0

    :cond_3
    const-wide v0, 0x1800000000000L

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->y(JJ)I

    move-result v0

    return v0

    :cond_4
    const-wide v0, 0x100000000000L

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->y(JJ)I

    move-result v0

    return v0

    :cond_5
    const-wide v0, 0xc0000000000L

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->y(JJ)I

    move-result v0

    return v0

    :cond_6
    invoke-virtual {p0, v8, v9, v3, v4}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->y(JJ)I

    move-result v0

    return v0

    :cond_7
    invoke-virtual {p0, v6, v7, v3, v4}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->y(JJ)I

    move-result v0

    return v0

    :cond_8
    const/16 v0, 0x56

    invoke-virtual {p0, v2, v0}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->b0(II)I

    move-result v0

    return v0

    :cond_9
    const/16 v0, 0x4e

    invoke-virtual {p0, v2, v0}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->b0(II)I

    move-result v0

    return v0

    :cond_a
    const/16 v0, 0x50

    invoke-virtual {p0, v2, v0}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->b0(II)I

    move-result v0

    return v0

    :cond_b
    const-wide/high16 v0, 0x4000000000000L

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->y(JJ)I

    move-result v0

    return v0

    :cond_c
    const-wide v0, 0x600000000000L

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->y(JJ)I

    move-result v0

    return v0

    :cond_d
    const-wide v0, 0x20000000000L

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->y(JJ)I

    move-result v0

    return v0

    :cond_e
    const-wide v0, 0x18000000000L

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->y(JJ)I

    move-result v0

    return v0

    :cond_f
    const/16 v0, 0x4d

    iput v0, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    const-wide/16 v0, 0x7800

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->y(JJ)I

    move-result v0

    return v0

    :cond_10
    const/16 v0, 0x57

    invoke-virtual {p0, v2, v0}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->b0(II)I

    move-result v0

    return v0

    :cond_11
    const/16 v0, 0x45

    invoke-virtual {p0, v2, v0}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->b0(II)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3a
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final n()I
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->j(II)I

    move-result v0

    return v0
.end method

.method public final o()I
    .locals 2

    iget-char v0, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-wide/32 v0, 0x4000000

    invoke-virtual {p0, v0, v1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->z(J)I

    move-result v0

    return v0
.end method

.method public final p()I
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->k(II)I

    move-result v0

    return v0
.end method

.method public final q()I
    .locals 2

    iget-char v0, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-wide/32 v0, 0x40000

    invoke-virtual {p0, v0, v1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->A(J)I

    move-result v0

    return v0
.end method

.method public final r()I
    .locals 2

    iget-char v0, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-wide/32 v0, 0x80000

    invoke-virtual {p0, v0, v1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->B(J)I

    move-result v0

    return v0
.end method

.method public final s()I
    .locals 2

    iget-char v0, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-wide/32 v0, 0x100000

    invoke-virtual {p0, v0, v1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->C(J)I

    move-result v0

    return v0
.end method

.method public setDebugStream(Ljava/io/PrintStream;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->debugStream:Ljava/io/PrintStream;

    return-void
.end method

.method public final t()I
    .locals 2

    iget-char v0, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-wide/32 v0, 0x200000

    invoke-virtual {p0, v0, v1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->D(J)I

    move-result v0

    return v0
.end method

.method public final u()I
    .locals 2

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->l(II)I

    move-result v0

    return v0
.end method

.method public final v()I
    .locals 2

    iget-char v0, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-wide/32 v0, 0x800000

    invoke-virtual {p0, v0, v1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->E(J)I

    move-result v0

    return v0
.end method

.method public final w()I
    .locals 2

    iget-char v0, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-wide/32 v0, 0x1000000

    invoke-virtual {p0, v0, v1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->F(J)I

    move-result v0

    return v0
.end method

.method public final x()I
    .locals 2

    iget-char v0, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C

    const/16 v1, 0x5d

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-wide/32 v0, 0x2000000

    invoke-virtual {p0, v0, v1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->G(J)I

    move-result v0

    return v0
.end method

.method public final y(JJ)I
    .locals 11

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {v1}, Lcom/prineside/luaj/parser/SimpleCharStream;->readChar()C

    move-result v1

    iput-char v1, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x2d

    const-wide/16 v3, 0x0

    if-eq v1, v2, :cond_17

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_15

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_13

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_e

    const/16 v2, 0x5b

    if-eq v1, v2, :cond_d

    const/16 v2, 0x61

    if-eq v1, v2, :cond_c

    const/16 v2, 0x6c

    if-eq v1, v2, :cond_b

    const/16 v2, 0x72

    const/16 v5, 0x11

    if-eq v1, v2, :cond_9

    const/16 v2, 0x75

    if-eq v1, v2, :cond_8

    const/16 v2, 0x65

    if-eq v1, v2, :cond_7

    const/16 v2, 0x66

    if-eq v1, v2, :cond_6

    const/16 v2, 0x68

    if-eq v1, v2, :cond_5

    const/16 v2, 0x69

    if-eq v1, v2, :cond_4

    const/16 v2, 0x6e

    if-eq v1, v2, :cond_2

    const/16 v2, 0x6f

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const-wide v1, 0x80000000L

    and-long/2addr v1, p1

    cmp-long v6, v1, v3

    if-eqz v6, :cond_1

    const/16 p1, 0x1f

    invoke-virtual {p0, v0, p1, v5}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->Z(III)I

    move-result p1

    return p1

    :cond_1
    const-wide v3, 0xa5000000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-virtual/range {v0 .. v8}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->H(JJJJ)I

    move-result p1

    return p1

    :cond_2
    const-wide v1, 0x10000000000L

    and-long/2addr v1, p1

    cmp-long v6, v1, v3

    if-eqz v6, :cond_3

    const/16 p1, 0x28

    invoke-virtual {p0, v0, p1, v5}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->Z(III)I

    move-result p1

    return p1

    :cond_3
    const-wide v3, 0x2000420000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-virtual/range {v0 .. v8}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->H(JJJJ)I

    move-result p1

    return p1

    :cond_4
    const-wide v3, 0x40000000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-virtual/range {v0 .. v8}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->H(JJJJ)I

    move-result p1

    return p1

    :cond_5
    const-wide v3, 0x4800000000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-virtual/range {v0 .. v8}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->H(JJJJ)I

    move-result p1

    return p1

    :cond_6
    const-wide v1, 0x8000000000L

    and-long/2addr v1, p1

    cmp-long v6, v1, v3

    if-eqz v6, :cond_14

    const/16 p1, 0x27

    invoke-virtual {p0, v0, p1, v5}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->Z(III)I

    move-result p1

    return p1

    :cond_7
    const-wide v3, 0x600000000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-virtual/range {v0 .. v8}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->H(JJJJ)I

    move-result p1

    return p1

    :cond_8
    const-wide v3, 0x2000000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-virtual/range {v0 .. v8}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->H(JJJJ)I

    move-result p1

    return p1

    :cond_9
    const-wide v1, 0x100000000000L

    and-long/2addr v1, p1

    cmp-long v6, v1, v3

    if-eqz v6, :cond_a

    const/16 p1, 0x2c

    invoke-virtual {p0, v0, p1, v5}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->Z(III)I

    move-result p1

    return p1

    :cond_a
    const-wide v3, 0x1000040000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-virtual/range {v0 .. v8}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->H(JJJJ)I

    move-result p1

    return p1

    :cond_b
    const-wide v3, 0x300000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-virtual/range {v0 .. v8}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->H(JJJJ)I

    move-result p1

    return p1

    :cond_c
    const-wide v3, 0x800000000L

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-virtual/range {v0 .. v8}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->H(JJJJ)I

    move-result p1

    return p1

    :cond_d
    const-wide/16 v1, 0x800

    and-long/2addr v1, p1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_14

    const/16 p1, 0xb

    invoke-virtual {p0, v0, p1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->b0(II)I

    move-result p1

    return p1

    :cond_e
    const-wide/32 v1, 0x4000000

    and-long/2addr v1, p3

    cmp-long v5, v1, v3

    if-eqz v5, :cond_f

    const/16 p1, 0x5a

    invoke-virtual {p0, v0, p1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->b0(II)I

    move-result p1

    return p1

    :cond_f
    const-wide/32 v1, 0x10000000

    and-long/2addr v1, p3

    cmp-long v5, v1, v3

    if-eqz v5, :cond_10

    const/16 p1, 0x5c

    invoke-virtual {p0, v0, p1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->b0(II)I

    move-result p1

    return p1

    :cond_10
    const-wide/32 v1, 0x20000000

    and-long/2addr v1, p3

    cmp-long v5, v1, v3

    if-eqz v5, :cond_11

    const/16 p1, 0x5d

    invoke-virtual {p0, v0, p1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->b0(II)I

    move-result p1

    return p1

    :cond_11
    const-wide/32 v1, 0x40000000

    and-long/2addr v1, p3

    cmp-long v5, v1, v3

    if-eqz v5, :cond_12

    const/16 p1, 0x5e

    invoke-virtual {p0, v0, p1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->b0(II)I

    move-result p1

    return p1

    :cond_12
    const-wide/16 v3, 0x7000

    const-wide/16 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v5, p3

    invoke-virtual/range {v0 .. v8}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->H(JJJJ)I

    move-result p1

    return p1

    :cond_13
    const-wide/16 v1, 0x2

    and-long/2addr v1, p3

    cmp-long v5, v1, v3

    if-eqz v5, :cond_14

    const/16 p1, 0x41

    invoke-virtual {p0, v0, p1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->b0(II)I

    move-result p1

    return p1

    :cond_14
    :goto_0
    const/4 v1, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a0(IJJ)I

    move-result p1

    return p1

    :cond_15
    const-wide/32 v1, 0x1000000

    and-long/2addr v1, p3

    cmp-long v5, v1, v3

    if-eqz v5, :cond_16

    const/16 v1, 0x58

    iput v1, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    iput v0, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->l:I

    :cond_16
    const-wide/16 v5, 0x0

    const-wide/32 v9, 0x8000

    move-object v2, p0

    move-wide v3, p1

    move-wide v7, p3

    invoke-virtual/range {v2 .. v10}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->H(JJJJ)I

    move-result p1

    return p1

    :cond_17
    const-wide/32 v1, 0x10000

    and-long/2addr v1, p1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_18

    const/16 v1, 0x10

    iput v1, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->m:I

    iput v0, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->l:I

    :cond_18
    const-wide/16 v5, 0x3c0

    const-wide/16 v9, 0x0

    move-object v2, p0

    move-wide v3, p1

    move-wide v7, p3

    invoke-virtual/range {v2 .. v10}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->H(JJJJ)I

    move-result p1

    return p1

    :catch_0
    const/4 v2, 0x0

    move-object v1, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->c0(IJJ)I

    return v0
.end method

.method public final z(J)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->a:Lcom/prineside/luaj/parser/SimpleCharStream;

    invoke-virtual {v0}, Lcom/prineside/luaj/parser/SimpleCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lcom/prineside/luaj/parser/LuaParserTokenManager;->g:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    const-wide/32 v0, 0x4000000

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/prineside/luaj/parser/LuaParserTokenManager;->I(JJ)I

    move-result p1

    return p1

    :catch_0
    const/4 p1, 0x1

    return p1
.end method
