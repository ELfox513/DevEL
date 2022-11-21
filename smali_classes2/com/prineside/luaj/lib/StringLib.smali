.class public Lcom/prineside/luaj/lib/StringLib;
.super Lcom/prineside/luaj/lib/TwoArgFunction;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/luaj/lib/StringLib$_byte;,
        Lcom/prineside/luaj/lib/StringLib$_char;,
        Lcom/prineside/luaj/lib/StringLib$dump;,
        Lcom/prineside/luaj/lib/StringLib$find;,
        Lcom/prineside/luaj/lib/StringLib$format;,
        Lcom/prineside/luaj/lib/StringLib$gmatch;,
        Lcom/prineside/luaj/lib/StringLib$gsub;,
        Lcom/prineside/luaj/lib/StringLib$len;,
        Lcom/prineside/luaj/lib/StringLib$lower;,
        Lcom/prineside/luaj/lib/StringLib$match;,
        Lcom/prineside/luaj/lib/StringLib$rep;,
        Lcom/prineside/luaj/lib/StringLib$reverse;,
        Lcom/prineside/luaj/lib/StringLib$sub;,
        Lcom/prineside/luaj/lib/StringLib$upper;,
        Lcom/prineside/luaj/lib/StringLib$MatchState;,
        Lcom/prineside/luaj/lib/StringLib$GMatchAux;,
        Lcom/prineside/luaj/lib/StringLib$FormatDesc;
    }
.end annotation


# static fields
.field public static final x:Lcom/prineside/luaj/LuaString;

.field public static final y:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    const-string v0, "^$*+?.([%-"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/lib/StringLib;->x:Lcom/prineside/luaj/LuaString;

    const/16 v0, 0x100

    new-array v0, v0, [B

    sput-object v0, Lcom/prineside/luaj/lib/StringLib;->y:[B

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x80

    const/16 v3, 0x20

    if-ge v1, v2, :cond_f

    int-to-char v2, v1

    sget-object v4, Lcom/prineside/luaj/lib/StringLib;->y:[B

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v5, 0x8

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    invoke-static {v2}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x2

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_2
    or-int/2addr v5, v6

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x4

    goto :goto_3

    :cond_2
    const/4 v6, 0x0

    :goto_3
    or-int/2addr v5, v6

    const/16 v6, 0x40

    if-lt v2, v3, :cond_4

    const/16 v3, 0x7f

    if-ne v2, v3, :cond_3

    goto :goto_4

    :cond_3
    const/4 v3, 0x0

    goto :goto_5

    :cond_4
    :goto_4
    const/16 v3, 0x40

    :goto_5
    or-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v4, v1

    const/16 v5, 0x61

    if-lt v2, v5, :cond_5

    const/16 v5, 0x66

    if-le v2, v5, :cond_7

    :cond_5
    const/16 v5, 0x41

    if-lt v2, v5, :cond_6

    const/16 v5, 0x46

    if-le v2, v5, :cond_7

    :cond_6
    const/16 v5, 0x30

    if-lt v2, v5, :cond_8

    const/16 v5, 0x39

    if-gt v2, v5, :cond_8

    :cond_7
    or-int/lit8 v3, v3, -0x80

    int-to-byte v3, v3

    aput-byte v3, v4, v1

    :cond_8
    const/16 v3, 0x21

    if-lt v2, v3, :cond_9

    const/16 v3, 0x2f

    if-le v2, v3, :cond_c

    :cond_9
    const/16 v3, 0x3a

    if-lt v2, v3, :cond_a

    if-le v2, v6, :cond_c

    :cond_a
    const/16 v3, 0x5b

    if-lt v2, v3, :cond_b

    const/16 v3, 0x60

    if-le v2, v3, :cond_c

    :cond_b
    const/16 v3, 0x7b

    if-lt v2, v3, :cond_d

    const/16 v3, 0x7e

    if-gt v2, v3, :cond_d

    :cond_c
    aget-byte v2, v4, v1

    or-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v4, v1

    :cond_d
    aget-byte v2, v4, v1

    and-int/lit8 v3, v2, 0x6

    if-eqz v3, :cond_e

    or-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v4, v1

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_f
    sget-object v0, Lcom/prineside/luaj/lib/StringLib;->y:[B

    aput-byte v3, v0, v3

    const/16 v1, 0xd

    aget-byte v2, v0, v1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    aget-byte v2, v0, v1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    aget-byte v2, v0, v1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    aget-byte v2, v0, v1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    aget-byte v2, v0, v1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/TwoArgFunction;-><init>()V

    return-void
.end method

.method public static s(Lcom/prineside/luaj/Buffer;Lcom/prineside/luaj/LuaString;)V
    .locals 7

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/Buffer;->append(B)Lcom/prineside/luaj/Buffer;

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaString;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    invoke-virtual {p1, v2}, Lcom/prineside/luaj/LuaString;->luaByte(I)I

    move-result v3

    const/16 v4, 0x5c

    const/16 v5, 0xa

    if-eq v3, v5, :cond_4

    if-eq v3, v0, :cond_4

    if-eq v3, v4, :cond_4

    const/16 v5, 0x1f

    if-le v3, v5, :cond_1

    const/16 v5, 0x7f

    if-ne v3, v5, :cond_0

    goto :goto_1

    :cond_0
    int-to-byte v3, v3

    invoke-virtual {p0, v3}, Lcom/prineside/luaj/Buffer;->append(B)Lcom/prineside/luaj/Buffer;

    goto :goto_3

    :cond_1
    :goto_1
    invoke-virtual {p0, v4}, Lcom/prineside/luaj/Buffer;->append(B)Lcom/prineside/luaj/Buffer;

    add-int/lit8 v4, v2, 0x1

    if-eq v4, v1, :cond_3

    invoke-virtual {p1, v4}, Lcom/prineside/luaj/LuaString;->luaByte(I)I

    move-result v5

    const/16 v6, 0x30

    if-lt v5, v6, :cond_3

    invoke-virtual {p1, v4}, Lcom/prineside/luaj/LuaString;->luaByte(I)I

    move-result v4

    const/16 v5, 0x39

    if-le v4, v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v6}, Lcom/prineside/luaj/Buffer;->append(B)Lcom/prineside/luaj/Buffer;

    div-int/lit8 v4, v3, 0xa

    add-int/2addr v4, v6

    int-to-char v4, v4

    int-to-byte v4, v4

    invoke-virtual {p0, v4}, Lcom/prineside/luaj/Buffer;->append(B)Lcom/prineside/luaj/Buffer;

    rem-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v6

    int-to-char v3, v3

    int-to-byte v3, v3

    invoke-virtual {p0, v3}, Lcom/prineside/luaj/Buffer;->append(B)Lcom/prineside/luaj/Buffer;

    goto :goto_3

    :cond_3
    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/prineside/luaj/Buffer;->append(Ljava/lang/String;)Lcom/prineside/luaj/Buffer;

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v4}, Lcom/prineside/luaj/Buffer;->append(B)Lcom/prineside/luaj/Buffer;

    int-to-byte v3, v3

    invoke-virtual {p0, v3}, Lcom/prineside/luaj/Buffer;->append(B)Lcom/prineside/luaj/Buffer;

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v0}, Lcom/prineside/luaj/Buffer;->append(B)Lcom/prineside/luaj/Buffer;

    return-void
.end method

.method public static u(II)I
    .locals 0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr p1, p0

    add-int/lit8 p0, p1, 0x1

    :goto_0
    return p0
.end method

.method public static v(Lcom/prineside/luaj/Varargs;Z)Lcom/prineside/luaj/Varargs;
    .locals 9

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/Varargs;->checkstring(I)Lcom/prineside/luaj/LuaString;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/prineside/luaj/Varargs;->checkstring(I)Lcom/prineside/luaj/LuaString;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {p0, v3, v0}, Lcom/prineside/luaj/Varargs;->optint(II)I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_0

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1}, Lcom/prineside/luaj/LuaString;->length()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_0

    :cond_0
    if-gez v3, :cond_1

    invoke-virtual {v1}, Lcom/prineside/luaj/LuaString;->length()I

    move-result v5

    add-int/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_1
    :goto_0
    const/4 v5, -0x1

    if-eqz p1, :cond_3

    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object v6

    invoke-virtual {v6}, Lcom/prineside/luaj/LuaValue;->toboolean()Z

    move-result v6

    if-nez v6, :cond_2

    sget-object v6, Lcom/prineside/luaj/lib/StringLib;->x:Lcom/prineside/luaj/LuaString;

    invoke-virtual {v2, v6}, Lcom/prineside/luaj/LuaString;->indexOfAny(Lcom/prineside/luaj/LuaString;)I

    move-result v6

    if-ne v6, v5, :cond_3

    :cond_2
    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_4

    invoke-virtual {v1, v2, v3}, Lcom/prineside/luaj/LuaString;->indexOf(Lcom/prineside/luaj/LuaString;I)I

    move-result p0

    if-eq p0, v5, :cond_9

    add-int/lit8 p1, p0, 0x1

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->valueOf(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object p1

    invoke-virtual {v2}, Lcom/prineside/luaj/LuaString;->length()I

    move-result v0

    add-int/2addr p0, v0

    invoke-static {p0}, Lcom/prineside/luaj/LuaValue;->valueOf(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/prineside/luaj/LuaValue;->varargsOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance v6, Lcom/prineside/luaj/lib/StringLib$MatchState;

    invoke-direct {v6, p0, v1, v2}, Lcom/prineside/luaj/lib/StringLib$MatchState;-><init>(Lcom/prineside/luaj/Varargs;Lcom/prineside/luaj/LuaString;Lcom/prineside/luaj/LuaString;)V

    invoke-virtual {v2}, Lcom/prineside/luaj/LuaString;->length()I

    move-result p0

    if-lez p0, :cond_5

    invoke-virtual {v2, v4}, Lcom/prineside/luaj/LuaString;->luaByte(I)I

    move-result p0

    const/16 v2, 0x5e

    if-ne p0, v2, :cond_5

    const/4 p0, 0x1

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    const/4 p0, 0x0

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v6}, Lcom/prineside/luaj/lib/StringLib$MatchState;->o()V

    invoke-virtual {v6, v3, v2}, Lcom/prineside/luaj/lib/StringLib$MatchState;->f(II)I

    move-result v7

    if-eq v7, v5, :cond_7

    if-eqz p1, :cond_6

    add-int/lit8 p0, v3, 0x1

    invoke-static {p0}, Lcom/prineside/luaj/LuaValue;->valueOf(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object p0

    invoke-static {v7}, Lcom/prineside/luaj/LuaValue;->valueOf(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object p1

    invoke-virtual {v6, v4, v3, v7}, Lcom/prineside/luaj/lib/StringLib$MatchState;->m(ZII)Lcom/prineside/luaj/Varargs;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/prineside/luaj/LuaValue;->varargsOf(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-virtual {v6, v0, v3, v7}, Lcom/prineside/luaj/lib/StringLib$MatchState;->m(ZII)Lcom/prineside/luaj/Varargs;

    move-result-object p0

    return-object p0

    :cond_7
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v1}, Lcom/prineside/luaj/LuaString;->length()I

    move-result v8

    if-ge v3, v8, :cond_9

    if-eqz p0, :cond_8

    goto :goto_3

    :cond_8
    move v3, v7

    goto :goto_2

    :cond_9
    :goto_3
    sget-object p0, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    return-object p0
.end method


# virtual methods
.method public call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 3

    new-instance p1, Lcom/prineside/luaj/LuaTable;

    invoke-direct {p1}, Lcom/prineside/luaj/LuaTable;-><init>()V

    new-instance v0, Lcom/prineside/luaj/lib/StringLib$_byte;

    invoke-direct {v0}, Lcom/prineside/luaj/lib/StringLib$_byte;-><init>()V

    const-string v1, "byte"

    invoke-virtual {p1, v1, v0}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance v0, Lcom/prineside/luaj/lib/StringLib$_char;

    invoke-direct {v0}, Lcom/prineside/luaj/lib/StringLib$_char;-><init>()V

    const-string v1, "char"

    invoke-virtual {p1, v1, v0}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance v0, Lcom/prineside/luaj/lib/StringLib$dump;

    invoke-direct {v0}, Lcom/prineside/luaj/lib/StringLib$dump;-><init>()V

    const-string v1, "dump"

    invoke-virtual {p1, v1, v0}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance v0, Lcom/prineside/luaj/lib/StringLib$find;

    invoke-direct {v0}, Lcom/prineside/luaj/lib/StringLib$find;-><init>()V

    const-string v1, "find"

    invoke-virtual {p1, v1, v0}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance v0, Lcom/prineside/luaj/lib/StringLib$format;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/prineside/luaj/lib/StringLib$format;-><init>(Lcom/prineside/luaj/lib/StringLib;Lcom/prineside/luaj/lib/StringLib$1;)V

    const-string v1, "format"

    invoke-virtual {p1, v1, v0}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance v0, Lcom/prineside/luaj/lib/StringLib$gmatch;

    invoke-direct {v0}, Lcom/prineside/luaj/lib/StringLib$gmatch;-><init>()V

    const-string v1, "gmatch"

    invoke-virtual {p1, v1, v0}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance v0, Lcom/prineside/luaj/lib/StringLib$gsub;

    invoke-direct {v0}, Lcom/prineside/luaj/lib/StringLib$gsub;-><init>()V

    const-string v1, "gsub"

    invoke-virtual {p1, v1, v0}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance v0, Lcom/prineside/luaj/lib/StringLib$len;

    invoke-direct {v0}, Lcom/prineside/luaj/lib/StringLib$len;-><init>()V

    const-string v1, "len"

    invoke-virtual {p1, v1, v0}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance v0, Lcom/prineside/luaj/lib/StringLib$lower;

    invoke-direct {v0}, Lcom/prineside/luaj/lib/StringLib$lower;-><init>()V

    const-string v1, "lower"

    invoke-virtual {p1, v1, v0}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance v0, Lcom/prineside/luaj/lib/StringLib$match;

    invoke-direct {v0}, Lcom/prineside/luaj/lib/StringLib$match;-><init>()V

    const-string v1, "match"

    invoke-virtual {p1, v1, v0}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance v0, Lcom/prineside/luaj/lib/StringLib$rep;

    invoke-direct {v0}, Lcom/prineside/luaj/lib/StringLib$rep;-><init>()V

    const-string v1, "rep"

    invoke-virtual {p1, v1, v0}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance v0, Lcom/prineside/luaj/lib/StringLib$reverse;

    invoke-direct {v0}, Lcom/prineside/luaj/lib/StringLib$reverse;-><init>()V

    const-string v1, "reverse"

    invoke-virtual {p1, v1, v0}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance v0, Lcom/prineside/luaj/lib/StringLib$sub;

    invoke-direct {v0}, Lcom/prineside/luaj/lib/StringLib$sub;-><init>()V

    const-string v1, "sub"

    invoke-virtual {p1, v1, v0}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance v0, Lcom/prineside/luaj/lib/StringLib$upper;

    invoke-direct {v0}, Lcom/prineside/luaj/lib/StringLib$upper;-><init>()V

    const-string v1, "upper"

    invoke-virtual {p1, v1, v0}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    const-string v0, "string"

    invoke-virtual {p2, v0, p1}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    const-string v1, "package"

    invoke-virtual {p2, v1}, Lcom/prineside/luaj/LuaValue;->get(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2, v1}, Lcom/prineside/luaj/LuaValue;->get(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p2

    const-string v1, "loaded"

    invoke-virtual {p2, v1}, Lcom/prineside/luaj/LuaValue;->get(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    :cond_0
    sget-object p2, Lcom/prineside/luaj/LuaString;->s_metatable:Lcom/prineside/luaj/LuaValue;

    if-nez p2, :cond_1

    const/4 p2, 0x2

    new-array p2, p2, [Lcom/prineside/luaj/LuaValue;

    const/4 v0, 0x0

    sget-object v1, Lcom/prineside/luaj/LuaValue;->INDEX:Lcom/prineside/luaj/LuaString;

    aput-object v1, p2, v0

    const/4 v0, 0x1

    aput-object p1, p2, v0

    invoke-static {p2}, Lcom/prineside/luaj/LuaValue;->tableOf([Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaTable;

    move-result-object p2

    sput-object p2, Lcom/prineside/luaj/LuaString;->s_metatable:Lcom/prineside/luaj/LuaValue;

    :cond_1
    return-object p1
.end method

.method public t(Ljava/lang/String;D)Ljava/lang/String;
    .locals 0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
