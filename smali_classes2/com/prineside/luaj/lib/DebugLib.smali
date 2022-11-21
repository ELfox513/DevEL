.class public Lcom/prineside/luaj/lib/DebugLib;
.super Lcom/prineside/luaj/lib/TwoArgFunction;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/luaj/lib/DebugLib$debug;,
        Lcom/prineside/luaj/lib/DebugLib$gethook;,
        Lcom/prineside/luaj/lib/DebugLib$getinfo;,
        Lcom/prineside/luaj/lib/DebugLib$getlocal;,
        Lcom/prineside/luaj/lib/DebugLib$getmetatable;,
        Lcom/prineside/luaj/lib/DebugLib$getregistry;,
        Lcom/prineside/luaj/lib/DebugLib$getupvalue;,
        Lcom/prineside/luaj/lib/DebugLib$getuservalue;,
        Lcom/prineside/luaj/lib/DebugLib$sethook;,
        Lcom/prineside/luaj/lib/DebugLib$setlocal;,
        Lcom/prineside/luaj/lib/DebugLib$setmetatable;,
        Lcom/prineside/luaj/lib/DebugLib$setupvalue;,
        Lcom/prineside/luaj/lib/DebugLib$setuservalue;,
        Lcom/prineside/luaj/lib/DebugLib$traceback;,
        Lcom/prineside/luaj/lib/DebugLib$upvalueid;,
        Lcom/prineside/luaj/lib/DebugLib$upvaluejoin;,
        Lcom/prineside/luaj/lib/DebugLib$CallStack;,
        Lcom/prineside/luaj/lib/DebugLib$CallFrame;,
        Lcom/prineside/luaj/lib/DebugLib$NameWhat;,
        Lcom/prineside/luaj/lib/DebugLib$DebugInfo;
    }
.end annotation


# static fields
.field public static final A:Lcom/prineside/luaj/LuaString;

.field public static final B:Lcom/prineside/luaj/LuaString;

.field public static final C:Lcom/prineside/luaj/LuaString;

.field public static CALLS:Z

.field public static final D:Lcom/prineside/luaj/LuaString;

.field public static final E:Lcom/prineside/luaj/LuaString;

.field public static final F:Lcom/prineside/luaj/LuaString;

.field public static final G:Lcom/prineside/luaj/LuaString;

.field public static final H:Lcom/prineside/luaj/LuaString;

.field public static final I:Lcom/prineside/luaj/LuaString;

.field public static final J:Lcom/prineside/luaj/LuaString;

.field public static final K:Lcom/prineside/luaj/LuaString;

.field public static final L:Lcom/prineside/luaj/LuaString;

.field public static final M:Lcom/prineside/luaj/LuaString;

.field public static final N:Lcom/prineside/luaj/LuaString;

.field public static final O:Lcom/prineside/luaj/LuaString;

.field public static final P:Lcom/prineside/luaj/LuaString;

.field public static final Q:Lcom/prineside/luaj/LuaString;

.field public static final R:Lcom/prineside/luaj/LuaString;

.field public static TRACE:Z

.field public static final y:Lcom/prineside/luaj/LuaString;

.field public static final z:Lcom/prineside/luaj/LuaString;


# instance fields
.field public x:Lcom/prineside/luaj/Globals;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "CALLS"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sput-boolean v2, Lcom/prineside/luaj/lib/DebugLib;->CALLS:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    const-string v2, "TRACE"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    sput-boolean v0, Lcom/prineside/luaj/lib/DebugLib;->TRACE:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const-string v0, "Lua"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/lib/DebugLib;->y:Lcom/prineside/luaj/LuaString;

    const-string v0, "?"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/lib/DebugLib;->z:Lcom/prineside/luaj/LuaString;

    const-string v0, "call"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/lib/DebugLib;->A:Lcom/prineside/luaj/LuaString;

    const-string v0, "line"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/lib/DebugLib;->B:Lcom/prineside/luaj/LuaString;

    const-string v0, "count"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/lib/DebugLib;->C:Lcom/prineside/luaj/LuaString;

    const-string v0, "return"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/lib/DebugLib;->D:Lcom/prineside/luaj/LuaString;

    const-string v0, "func"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/lib/DebugLib;->E:Lcom/prineside/luaj/LuaString;

    const-string v0, "istailcall"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/lib/DebugLib;->F:Lcom/prineside/luaj/LuaString;

    const-string v0, "isvararg"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/lib/DebugLib;->G:Lcom/prineside/luaj/LuaString;

    const-string v0, "nups"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/lib/DebugLib;->H:Lcom/prineside/luaj/LuaString;

    const-string v0, "nparams"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/lib/DebugLib;->I:Lcom/prineside/luaj/LuaString;

    const-string v0, "name"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/lib/DebugLib;->J:Lcom/prineside/luaj/LuaString;

    const-string v0, "namewhat"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/lib/DebugLib;->K:Lcom/prineside/luaj/LuaString;

    const-string v0, "what"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/lib/DebugLib;->L:Lcom/prineside/luaj/LuaString;

    const-string v0, "source"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/lib/DebugLib;->M:Lcom/prineside/luaj/LuaString;

    const-string v0, "short_src"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/lib/DebugLib;->N:Lcom/prineside/luaj/LuaString;

    const-string v0, "linedefined"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/lib/DebugLib;->O:Lcom/prineside/luaj/LuaString;

    const-string v0, "lastlinedefined"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/lib/DebugLib;->P:Lcom/prineside/luaj/LuaString;

    const-string v0, "currentline"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/lib/DebugLib;->Q:Lcom/prineside/luaj/LuaString;

    const-string v0, "activelines"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    sput-object v0, Lcom/prineside/luaj/lib/DebugLib;->R:Lcom/prineside/luaj/LuaString;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/TwoArgFunction;-><init>()V

    return-void
.end method

.method public static getobjname(Lcom/prineside/luaj/Prototype;II)Lcom/prineside/luaj/lib/DebugLib$NameWhat;
    .locals 5

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/prineside/luaj/Prototype;->getlocalname(II)Lcom/prineside/luaj/LuaString;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/prineside/luaj/lib/DebugLib$NameWhat;

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaString;->tojstring()Ljava/lang/String;

    move-result-object p1

    const-string p2, "local"

    invoke-direct {p0, p1, p2}, Lcom/prineside/luaj/lib/DebugLib$NameWhat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/prineside/luaj/lib/DebugLib;->v(Lcom/prineside/luaj/Prototype;II)I

    move-result p1

    const/4 p2, -0x1

    const/4 v0, 0x0

    if-eq p1, p2, :cond_c

    iget-object p2, p0, Lcom/prineside/luaj/Prototype;->code:[I

    aget p2, p2, p1

    invoke-static {p2}, Lcom/prineside/luaj/Lua;->GET_OPCODE(I)I

    move-result v1

    if-eqz v1, :cond_b

    const/4 v2, 0x1

    if-eq v1, v2, :cond_9

    const/4 v3, 0x2

    if-eq v1, v3, :cond_9

    const/4 v3, 0x5

    if-eq v1, v3, :cond_6

    const/4 v3, 0x6

    const/4 v4, 0x7

    if-eq v1, v3, :cond_2

    if-eq v1, v4, :cond_2

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-static {p2}, Lcom/prineside/luaj/Lua;->GETARG_C(I)I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/prineside/luaj/lib/DebugLib;->y(Lcom/prineside/luaj/Prototype;II)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/prineside/luaj/lib/DebugLib$NameWhat;

    const-string p2, "method"

    invoke-direct {p1, p0, p2}, Lcom/prineside/luaj/lib/DebugLib$NameWhat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_2
    invoke-static {p2}, Lcom/prineside/luaj/Lua;->GETARG_C(I)I

    move-result v0

    invoke-static {p2}, Lcom/prineside/luaj/Lua;->GETARG_B(I)I

    move-result v1

    invoke-static {p2}, Lcom/prineside/luaj/Lua;->GET_OPCODE(I)I

    move-result p2

    if-ne p2, v4, :cond_3

    add-int/2addr v1, v2

    invoke-virtual {p0, v1, p1}, Lcom/prineside/luaj/Prototype;->getlocalname(II)Lcom/prineside/luaj/LuaString;

    move-result-object p2

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/prineside/luaj/Prototype;->upvalues:[Lcom/prineside/luaj/Upvaldesc;

    array-length v2, p2

    if-ge v1, v2, :cond_4

    aget-object p2, p2, v1

    iget-object p2, p2, Lcom/prineside/luaj/Upvaldesc;->name:Lcom/prineside/luaj/LuaString;

    goto :goto_0

    :cond_4
    sget-object p2, Lcom/prineside/luaj/lib/DebugLib;->z:Lcom/prineside/luaj/LuaString;

    :goto_0
    invoke-static {p0, p1, v0}, Lcom/prineside/luaj/lib/DebugLib;->y(Lcom/prineside/luaj/Prototype;II)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/prineside/luaj/lib/DebugLib$NameWhat;

    if-eqz p2, :cond_5

    sget-object v0, Lcom/prineside/luaj/LuaValue;->ENV:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p2, v0}, Lcom/prineside/luaj/LuaString;->eq_b(Lcom/prineside/luaj/LuaValue;)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "global"

    goto :goto_1

    :cond_5
    const-string p2, "field"

    :goto_1
    invoke-direct {p1, p0, p2}, Lcom/prineside/luaj/lib/DebugLib$NameWhat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_6
    invoke-static {p2}, Lcom/prineside/luaj/Lua;->GETARG_B(I)I

    move-result p1

    iget-object p0, p0, Lcom/prineside/luaj/Prototype;->upvalues:[Lcom/prineside/luaj/Upvaldesc;

    array-length p2, p0

    if-ge p1, p2, :cond_7

    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/prineside/luaj/Upvaldesc;->name:Lcom/prineside/luaj/LuaString;

    goto :goto_2

    :cond_7
    sget-object p0, Lcom/prineside/luaj/lib/DebugLib;->z:Lcom/prineside/luaj/LuaString;

    :goto_2
    if-nez p0, :cond_8

    goto :goto_3

    :cond_8
    new-instance v0, Lcom/prineside/luaj/lib/DebugLib$NameWhat;

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaString;->tojstring()Ljava/lang/String;

    move-result-object p0

    const-string p1, "upvalue"

    invoke-direct {v0, p0, p1}, Lcom/prineside/luaj/lib/DebugLib$NameWhat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-object v0

    :cond_9
    invoke-static {p2}, Lcom/prineside/luaj/Lua;->GET_OPCODE(I)I

    move-result v1

    if-ne v1, v2, :cond_a

    invoke-static {p2}, Lcom/prineside/luaj/Lua;->GETARG_Bx(I)I

    move-result p1

    goto :goto_4

    :cond_a
    iget-object p2, p0, Lcom/prineside/luaj/Prototype;->code:[I

    add-int/2addr p1, v2

    aget p1, p2, p1

    invoke-static {p1}, Lcom/prineside/luaj/Lua;->GETARG_Ax(I)I

    move-result p1

    :goto_4
    iget-object p2, p0, Lcom/prineside/luaj/Prototype;->k:[Lcom/prineside/luaj/LuaValue;

    aget-object p2, p2, p1

    invoke-virtual {p2}, Lcom/prineside/luaj/LuaValue;->isstring()Z

    move-result p2

    if-eqz p2, :cond_c

    iget-object p0, p0, Lcom/prineside/luaj/Prototype;->k:[Lcom/prineside/luaj/LuaValue;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaValue;->strvalue()Lcom/prineside/luaj/LuaString;

    move-result-object p0

    new-instance p1, Lcom/prineside/luaj/lib/DebugLib$NameWhat;

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaString;->tojstring()Ljava/lang/String;

    move-result-object p0

    const-string p2, "constant"

    invoke-direct {p1, p0, p2}, Lcom/prineside/luaj/lib/DebugLib$NameWhat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_b
    invoke-static {p2}, Lcom/prineside/luaj/Lua;->GETARG_A(I)I

    move-result v1

    invoke-static {p2}, Lcom/prineside/luaj/Lua;->GETARG_B(I)I

    move-result p2

    if-ge p2, v1, :cond_c

    invoke-static {p0, p1, p2}, Lcom/prineside/luaj/lib/DebugLib;->getobjname(Lcom/prineside/luaj/Prototype;II)Lcom/prineside/luaj/lib/DebugLib$NameWhat;

    move-result-object p0

    return-object p0

    :cond_c
    :goto_5
    return-object v0
.end method

.method public static v(Lcom/prineside/luaj/Prototype;II)I
    .locals 6

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_7

    iget-object v2, p0, Lcom/prineside/luaj/Prototype;->code:[I

    aget v2, v2, v1

    invoke-static {v2}, Lcom/prineside/luaj/Lua;->GET_OPCODE(I)I

    move-result v3

    invoke-static {v2}, Lcom/prineside/luaj/Lua;->GETARG_A(I)I

    move-result v4

    const/4 v5, 0x4

    if-eq v3, v5, :cond_5

    const/16 v5, 0x17

    if-eq v3, v5, :cond_4

    const/16 v5, 0x1b

    if-eq v3, v5, :cond_3

    const/16 v5, 0x22

    if-eq v3, v5, :cond_2

    const/16 v5, 0x24

    if-eq v3, v5, :cond_1

    const/16 v2, 0x1d

    if-eq v3, v2, :cond_0

    const/16 v2, 0x1e

    if-eq v3, v2, :cond_0

    invoke-static {v3}, Lcom/prineside/luaj/Lua;->testAMode(I)Z

    move-result v2

    if-eqz v2, :cond_6

    if-ne p2, v4, :cond_6

    goto :goto_1

    :cond_0
    if-lt p2, v4, :cond_6

    goto :goto_1

    :cond_1
    shr-int/lit8 v2, v2, 0xe

    and-int/lit16 v2, v2, 0x1ff

    if-nez v2, :cond_6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x2

    if-lt p2, v4, :cond_6

    goto :goto_1

    :cond_3
    if-ne p2, v4, :cond_6

    goto :goto_1

    :cond_4
    invoke-static {v2}, Lcom/prineside/luaj/Lua;->GETARG_sBx(I)I

    move-result v2

    add-int/lit8 v3, v1, 0x1

    add-int/2addr v3, v2

    if-ge v1, v3, :cond_6

    if-gt v3, p1, :cond_6

    add-int/2addr v1, v2

    goto :goto_2

    :cond_5
    invoke-static {v2}, Lcom/prineside/luaj/Lua;->GETARG_B(I)I

    move-result v2

    if-gt v4, p2, :cond_6

    add-int/2addr v4, v2

    if-gt p2, v4, :cond_6

    :goto_1
    move v0, v1

    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    return v0
.end method

.method public static w(Lcom/prineside/luaj/LuaClosure;I)Lcom/prineside/luaj/LuaString;
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/LuaClosure;->upValues:[Lcom/prineside/luaj/UpValue;

    if-eqz v0, :cond_1

    if-lez p1, :cond_1

    array-length v0, v0

    if-gt p1, v0, :cond_1

    iget-object p0, p0, Lcom/prineside/luaj/LuaClosure;->p:Lcom/prineside/luaj/Prototype;

    iget-object p0, p0, Lcom/prineside/luaj/Prototype;->upvalues:[Lcom/prineside/luaj/Upvaldesc;

    if-eqz p0, :cond_0

    array-length v0, p0

    if-gt p1, v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/prineside/luaj/Upvaldesc;->name:Lcom/prineside/luaj/LuaString;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prineside/luaj/LuaString;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static x(Lcom/prineside/luaj/lib/DebugLib$CallFrame;)Lcom/prineside/luaj/lib/DebugLib$NameWhat;
    .locals 3

    iget-object v0, p0, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->a:Lcom/prineside/luaj/LuaFunction;

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->isclosure()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/prineside/luaj/lib/DebugLib$NameWhat;

    iget-object p0, p0, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->a:Lcom/prineside/luaj/LuaFunction;

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaFunction;->classnamestub()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Java"

    invoke-direct {v0, p0, v1}, Lcom/prineside/luaj/lib/DebugLib$NameWhat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->a:Lcom/prineside/luaj/LuaFunction;

    invoke-virtual {v0}, Lcom/prineside/luaj/LuaValue;->checkclosure()Lcom/prineside/luaj/LuaClosure;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/luaj/LuaClosure;->p:Lcom/prineside/luaj/Prototype;

    iget p0, p0, Lcom/prineside/luaj/lib/DebugLib$CallFrame;->b:I

    iget-object v1, v0, Lcom/prineside/luaj/Prototype;->code:[I

    aget v1, v1, p0

    invoke-static {v1}, Lcom/prineside/luaj/Lua;->GET_OPCODE(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    new-instance p0, Lcom/prineside/luaj/lib/DebugLib$NameWhat;

    const-string v0, "(for iterator)"

    const-string v1, "(for iterator"

    invoke-direct {p0, v0, v1}, Lcom/prineside/luaj/lib/DebugLib$NameWhat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :pswitch_2
    invoke-static {v1}, Lcom/prineside/luaj/Lua;->GETARG_A(I)I

    move-result v1

    invoke-static {v0, p0, v1}, Lcom/prineside/luaj/lib/DebugLib;->getobjname(Lcom/prineside/luaj/Prototype;II)Lcom/prineside/luaj/lib/DebugLib$NameWhat;

    move-result-object p0

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/prineside/luaj/LuaValue;->LE:Lcom/prineside/luaj/LuaString;

    goto :goto_0

    :pswitch_4
    sget-object p0, Lcom/prineside/luaj/LuaValue;->LT:Lcom/prineside/luaj/LuaString;

    goto :goto_0

    :pswitch_5
    sget-object p0, Lcom/prineside/luaj/LuaValue;->EQ:Lcom/prineside/luaj/LuaString;

    goto :goto_0

    :pswitch_6
    sget-object p0, Lcom/prineside/luaj/LuaValue;->CONCAT:Lcom/prineside/luaj/LuaString;

    goto :goto_0

    :pswitch_7
    sget-object p0, Lcom/prineside/luaj/LuaValue;->LEN:Lcom/prineside/luaj/LuaString;

    goto :goto_0

    :pswitch_8
    sget-object p0, Lcom/prineside/luaj/LuaValue;->UNM:Lcom/prineside/luaj/LuaString;

    goto :goto_0

    :pswitch_9
    sget-object p0, Lcom/prineside/luaj/LuaValue;->POW:Lcom/prineside/luaj/LuaString;

    goto :goto_0

    :pswitch_a
    sget-object p0, Lcom/prineside/luaj/LuaValue;->MOD:Lcom/prineside/luaj/LuaString;

    goto :goto_0

    :pswitch_b
    sget-object p0, Lcom/prineside/luaj/LuaValue;->DIV:Lcom/prineside/luaj/LuaString;

    goto :goto_0

    :pswitch_c
    sget-object p0, Lcom/prineside/luaj/LuaValue;->MUL:Lcom/prineside/luaj/LuaString;

    goto :goto_0

    :pswitch_d
    sget-object p0, Lcom/prineside/luaj/LuaValue;->SUB:Lcom/prineside/luaj/LuaString;

    goto :goto_0

    :pswitch_e
    sget-object p0, Lcom/prineside/luaj/LuaValue;->ADD:Lcom/prineside/luaj/LuaString;

    goto :goto_0

    :pswitch_f
    sget-object p0, Lcom/prineside/luaj/LuaValue;->NEWINDEX:Lcom/prineside/luaj/LuaString;

    goto :goto_0

    :pswitch_10
    sget-object p0, Lcom/prineside/luaj/LuaValue;->INDEX:Lcom/prineside/luaj/LuaString;

    :goto_0
    new-instance v0, Lcom/prineside/luaj/lib/DebugLib$NameWhat;

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaString;->tojstring()Ljava/lang/String;

    move-result-object p0

    const-string v1, "metamethod"

    invoke-direct {v0, p0, v1}, Lcom/prineside/luaj/lib/DebugLib$NameWhat;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static y(Lcom/prineside/luaj/Prototype;II)Ljava/lang/String;
    .locals 1

    invoke-static {p2}, Lcom/prineside/luaj/Lua;->ISK(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/prineside/luaj/Prototype;->k:[Lcom/prineside/luaj/LuaValue;

    invoke-static {p2}, Lcom/prineside/luaj/Lua;->INDEXK(I)I

    move-result p1

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaValue;->isstring()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/prineside/luaj/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/prineside/luaj/lib/DebugLib;->getobjname(Lcom/prineside/luaj/Prototype;II)Lcom/prineside/luaj/lib/DebugLib$NameWhat;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p1, p0, Lcom/prineside/luaj/lib/DebugLib$NameWhat;->b:Ljava/lang/String;

    const-string p2, "constant"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/prineside/luaj/lib/DebugLib$NameWhat;->a:Ljava/lang/String;

    return-object p0

    :cond_1
    const-string p0, "?"

    return-object p0
.end method


# virtual methods
.method public call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 4

    invoke-virtual {p2}, Lcom/prineside/luaj/LuaValue;->checkglobals()Lcom/prineside/luaj/Globals;

    move-result-object p1

    iput-object p1, p0, Lcom/prineside/luaj/lib/DebugLib;->x:Lcom/prineside/luaj/Globals;

    iput-object p0, p1, Lcom/prineside/luaj/Globals;->debuglib:Lcom/prineside/luaj/lib/DebugLib;

    new-instance p1, Lcom/prineside/luaj/LuaTable;

    invoke-direct {p1}, Lcom/prineside/luaj/LuaTable;-><init>()V

    new-instance v0, Lcom/prineside/luaj/lib/DebugLib$debug;

    invoke-direct {v0}, Lcom/prineside/luaj/lib/DebugLib$debug;-><init>()V

    const-string v1, "debug"

    invoke-virtual {p1, v1, v0}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance v0, Lcom/prineside/luaj/lib/DebugLib$gethook;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/prineside/luaj/lib/DebugLib$gethook;-><init>(Lcom/prineside/luaj/lib/DebugLib;Lcom/prineside/luaj/lib/DebugLib$1;)V

    const-string v3, "gethook"

    invoke-virtual {p1, v3, v0}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance v0, Lcom/prineside/luaj/lib/DebugLib$getinfo;

    invoke-direct {v0, p0, v2}, Lcom/prineside/luaj/lib/DebugLib$getinfo;-><init>(Lcom/prineside/luaj/lib/DebugLib;Lcom/prineside/luaj/lib/DebugLib$1;)V

    const-string v3, "getinfo"

    invoke-virtual {p1, v3, v0}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance v0, Lcom/prineside/luaj/lib/DebugLib$getlocal;

    invoke-direct {v0, p0, v2}, Lcom/prineside/luaj/lib/DebugLib$getlocal;-><init>(Lcom/prineside/luaj/lib/DebugLib;Lcom/prineside/luaj/lib/DebugLib$1;)V

    const-string v3, "getlocal"

    invoke-virtual {p1, v3, v0}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance v0, Lcom/prineside/luaj/lib/DebugLib$getmetatable;

    invoke-direct {v0}, Lcom/prineside/luaj/lib/DebugLib$getmetatable;-><init>()V

    const-string v3, "getmetatable"

    invoke-virtual {p1, v3, v0}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance v0, Lcom/prineside/luaj/lib/DebugLib$getregistry;

    invoke-direct {v0, p0, v2}, Lcom/prineside/luaj/lib/DebugLib$getregistry;-><init>(Lcom/prineside/luaj/lib/DebugLib;Lcom/prineside/luaj/lib/DebugLib$1;)V

    const-string v3, "getregistry"

    invoke-virtual {p1, v3, v0}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance v0, Lcom/prineside/luaj/lib/DebugLib$getupvalue;

    invoke-direct {v0}, Lcom/prineside/luaj/lib/DebugLib$getupvalue;-><init>()V

    const-string v3, "getupvalue"

    invoke-virtual {p1, v3, v0}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance v0, Lcom/prineside/luaj/lib/DebugLib$getuservalue;

    invoke-direct {v0}, Lcom/prineside/luaj/lib/DebugLib$getuservalue;-><init>()V

    const-string v3, "getuservalue"

    invoke-virtual {p1, v3, v0}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance v0, Lcom/prineside/luaj/lib/DebugLib$sethook;

    invoke-direct {v0, p0, v2}, Lcom/prineside/luaj/lib/DebugLib$sethook;-><init>(Lcom/prineside/luaj/lib/DebugLib;Lcom/prineside/luaj/lib/DebugLib$1;)V

    const-string v3, "sethook"

    invoke-virtual {p1, v3, v0}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance v0, Lcom/prineside/luaj/lib/DebugLib$setlocal;

    invoke-direct {v0, p0, v2}, Lcom/prineside/luaj/lib/DebugLib$setlocal;-><init>(Lcom/prineside/luaj/lib/DebugLib;Lcom/prineside/luaj/lib/DebugLib$1;)V

    const-string v3, "setlocal"

    invoke-virtual {p1, v3, v0}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance v0, Lcom/prineside/luaj/lib/DebugLib$setmetatable;

    invoke-direct {v0}, Lcom/prineside/luaj/lib/DebugLib$setmetatable;-><init>()V

    const-string v3, "setmetatable"

    invoke-virtual {p1, v3, v0}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance v0, Lcom/prineside/luaj/lib/DebugLib$setupvalue;

    invoke-direct {v0}, Lcom/prineside/luaj/lib/DebugLib$setupvalue;-><init>()V

    const-string v3, "setupvalue"

    invoke-virtual {p1, v3, v0}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance v0, Lcom/prineside/luaj/lib/DebugLib$setuservalue;

    invoke-direct {v0}, Lcom/prineside/luaj/lib/DebugLib$setuservalue;-><init>()V

    const-string v3, "setuservalue"

    invoke-virtual {p1, v3, v0}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance v0, Lcom/prineside/luaj/lib/DebugLib$traceback;

    invoke-direct {v0, p0, v2}, Lcom/prineside/luaj/lib/DebugLib$traceback;-><init>(Lcom/prineside/luaj/lib/DebugLib;Lcom/prineside/luaj/lib/DebugLib$1;)V

    const-string v2, "traceback"

    invoke-virtual {p1, v2, v0}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance v0, Lcom/prineside/luaj/lib/DebugLib$upvalueid;

    invoke-direct {v0}, Lcom/prineside/luaj/lib/DebugLib$upvalueid;-><init>()V

    const-string v2, "upvalueid"

    invoke-virtual {p1, v2, v0}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance v0, Lcom/prineside/luaj/lib/DebugLib$upvaluejoin;

    invoke-direct {v0}, Lcom/prineside/luaj/lib/DebugLib$upvaluejoin;-><init>()V

    const-string v2, "upvaluejoin"

    invoke-virtual {p1, v2, v0}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    invoke-virtual {p2, v1, p1}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    const-string v0, "package"

    invoke-virtual {p2, v0}, Lcom/prineside/luaj/LuaValue;->get(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p2, v0}, Lcom/prineside/luaj/LuaValue;->get(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p2

    const-string v0, "loaded"

    invoke-virtual {p2, v0}, Lcom/prineside/luaj/LuaValue;->get(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p2

    invoke-virtual {p2, v1, p1}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    :cond_0
    return-object p1
.end method

.method public getCallFrame(I)Lcom/prineside/luaj/lib/DebugLib$CallFrame;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/lib/DebugLib;->t()Lcom/prineside/luaj/lib/DebugLib$CallStack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/lib/DebugLib$CallStack;->d(I)Lcom/prineside/luaj/lib/DebugLib$CallFrame;

    move-result-object p1

    return-object p1
.end method

.method public onCall(Lcom/prineside/luaj/LuaClosure;Lcom/prineside/luaj/Varargs;[Lcom/prineside/luaj/LuaValue;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/lib/DebugLib;->x:Lcom/prineside/luaj/Globals;

    iget-object v0, v0, Lcom/prineside/luaj/Globals;->running:Lcom/prineside/luaj/LuaThread;

    iget-object v0, v0, Lcom/prineside/luaj/LuaThread;->state:Lcom/prineside/luaj/LuaThread$State;

    iget-boolean v1, v0, Lcom/prineside/luaj/LuaThread$State;->inhook:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/luaj/lib/DebugLib;->t()Lcom/prineside/luaj/lib/DebugLib$CallStack;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/prineside/luaj/lib/DebugLib$CallStack;->e(Lcom/prineside/luaj/LuaClosure;Lcom/prineside/luaj/Varargs;[Lcom/prineside/luaj/LuaValue;)V

    iget-boolean p1, v0, Lcom/prineside/luaj/LuaThread$State;->hookcall:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/prineside/luaj/lib/DebugLib;->A:Lcom/prineside/luaj/LuaString;

    sget-object p2, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    invoke-virtual {p0, v0, p1, p2}, Lcom/prineside/luaj/lib/DebugLib;->s(Lcom/prineside/luaj/LuaThread$State;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    :cond_1
    return-void
.end method

.method public onCall(Lcom/prineside/luaj/LuaFunction;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/lib/DebugLib;->x:Lcom/prineside/luaj/Globals;

    iget-object v0, v0, Lcom/prineside/luaj/Globals;->running:Lcom/prineside/luaj/LuaThread;

    iget-object v0, v0, Lcom/prineside/luaj/LuaThread;->state:Lcom/prineside/luaj/LuaThread$State;

    iget-boolean v1, v0, Lcom/prineside/luaj/LuaThread$State;->inhook:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/luaj/lib/DebugLib;->t()Lcom/prineside/luaj/lib/DebugLib$CallStack;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/prineside/luaj/lib/DebugLib$CallStack;->f(Lcom/prineside/luaj/LuaFunction;)V

    iget-boolean p1, v0, Lcom/prineside/luaj/LuaThread$State;->hookcall:Z

    if-eqz p1, :cond_1

    sget-object p1, Lcom/prineside/luaj/lib/DebugLib;->A:Lcom/prineside/luaj/LuaString;

    sget-object v1, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    invoke-virtual {p0, v0, p1, v1}, Lcom/prineside/luaj/lib/DebugLib;->s(Lcom/prineside/luaj/LuaThread$State;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    :cond_1
    return-void
.end method

.method public onInstruction(ILcom/prineside/luaj/Varargs;I)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/lib/DebugLib;->x:Lcom/prineside/luaj/Globals;

    iget-object v0, v0, Lcom/prineside/luaj/Globals;->running:Lcom/prineside/luaj/LuaThread;

    iget-object v0, v0, Lcom/prineside/luaj/LuaThread;->state:Lcom/prineside/luaj/LuaThread$State;

    iget-boolean v1, v0, Lcom/prineside/luaj/LuaThread$State;->inhook:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/luaj/lib/DebugLib;->t()Lcom/prineside/luaj/lib/DebugLib$CallStack;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/prineside/luaj/lib/DebugLib$CallStack;->g(ILcom/prineside/luaj/Varargs;I)V

    iget-object p1, v0, Lcom/prineside/luaj/LuaThread$State;->hookfunc:Lcom/prineside/luaj/LuaValue;

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget p1, v0, Lcom/prineside/luaj/LuaThread$State;->hookcount:I

    if-lez p1, :cond_2

    iget p2, v0, Lcom/prineside/luaj/LuaThread$State;->bytecodes:I

    add-int/lit8 p2, p2, 0x1

    iput p2, v0, Lcom/prineside/luaj/LuaThread$State;->bytecodes:I

    rem-int/2addr p2, p1

    if-nez p2, :cond_2

    sget-object p1, Lcom/prineside/luaj/lib/DebugLib;->C:Lcom/prineside/luaj/LuaString;

    sget-object p2, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    invoke-virtual {p0, v0, p1, p2}, Lcom/prineside/luaj/lib/DebugLib;->s(Lcom/prineside/luaj/LuaThread$State;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    :cond_2
    iget-boolean p1, v0, Lcom/prineside/luaj/LuaThread$State;->hookline:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/prineside/luaj/lib/DebugLib;->t()Lcom/prineside/luaj/lib/DebugLib$CallStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/lib/DebugLib$CallStack;->b()I

    move-result p1

    iget p2, v0, Lcom/prineside/luaj/LuaThread$State;->lastline:I

    if-eq p1, p2, :cond_3

    iput p1, v0, Lcom/prineside/luaj/LuaThread$State;->lastline:I

    sget-object p2, Lcom/prineside/luaj/lib/DebugLib;->B:Lcom/prineside/luaj/LuaString;

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->valueOf(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object p1

    invoke-virtual {p0, v0, p2, p1}, Lcom/prineside/luaj/lib/DebugLib;->s(Lcom/prineside/luaj/LuaThread$State;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    :cond_3
    return-void
.end method

.method public onReturn()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/luaj/lib/DebugLib;->x:Lcom/prineside/luaj/Globals;

    iget-object v0, v0, Lcom/prineside/luaj/Globals;->running:Lcom/prineside/luaj/LuaThread;

    iget-object v0, v0, Lcom/prineside/luaj/LuaThread;->state:Lcom/prineside/luaj/LuaThread$State;

    iget-boolean v1, v0, Lcom/prineside/luaj/LuaThread$State;->inhook:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/luaj/lib/DebugLib;->t()Lcom/prineside/luaj/lib/DebugLib$CallStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/luaj/lib/DebugLib$CallStack;->h()V

    iget-boolean v1, v0, Lcom/prineside/luaj/LuaThread$State;->hookrtrn:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/prineside/luaj/lib/DebugLib;->D:Lcom/prineside/luaj/LuaString;

    sget-object v2, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    invoke-virtual {p0, v0, v1, v2}, Lcom/prineside/luaj/lib/DebugLib;->s(Lcom/prineside/luaj/LuaThread$State;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    :cond_1
    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/prineside/luaj/Globals;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/luaj/Globals;

    iput-object p1, p0, Lcom/prineside/luaj/lib/DebugLib;->x:Lcom/prineside/luaj/Globals;

    return-void
.end method

.method public s(Lcom/prineside/luaj/LuaThread$State;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V
    .locals 2

    iget-boolean v0, p1, Lcom/prineside/luaj/LuaThread$State;->inhook:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/prineside/luaj/LuaThread$State;->hookfunc:Lcom/prineside/luaj/LuaValue;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/prineside/luaj/LuaThread$State;->inhook:Z

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p2, p3}, Lcom/prineside/luaj/LuaValue;->call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    :try_end_0
    .catch Lcom/prineside/luaj/LuaError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p1, Lcom/prineside/luaj/LuaThread$State;->inhook:Z

    return-void

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_1
    new-instance p3, Lcom/prineside/luaj/LuaError;

    invoke-direct {p3, p2}, Lcom/prineside/luaj/LuaError;-><init>(Ljava/lang/Throwable;)V

    throw p3

    :catch_1
    move-exception p2

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput-boolean v1, p1, Lcom/prineside/luaj/LuaThread$State;->inhook:Z

    throw p2

    :cond_1
    :goto_1
    return-void
.end method

.method public t()Lcom/prineside/luaj/lib/DebugLib$CallStack;
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/lib/DebugLib;->x:Lcom/prineside/luaj/Globals;

    iget-object v0, v0, Lcom/prineside/luaj/Globals;->running:Lcom/prineside/luaj/LuaThread;

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/lib/DebugLib;->u(Lcom/prineside/luaj/LuaThread;)Lcom/prineside/luaj/lib/DebugLib$CallStack;

    move-result-object v0

    return-object v0
.end method

.method public traceback(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/lib/DebugLib;->t()Lcom/prineside/luaj/lib/DebugLib$CallStack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/lib/DebugLib$CallStack;->j(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public u(Lcom/prineside/luaj/LuaThread;)Lcom/prineside/luaj/lib/DebugLib$CallStack;
    .locals 1

    iget-object v0, p1, Lcom/prineside/luaj/LuaThread;->callstack:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Lcom/prineside/luaj/lib/DebugLib$CallStack;

    invoke-direct {v0}, Lcom/prineside/luaj/lib/DebugLib$CallStack;-><init>()V

    iput-object v0, p1, Lcom/prineside/luaj/LuaThread;->callstack:Ljava/lang/Object;

    :cond_0
    iget-object p1, p1, Lcom/prineside/luaj/LuaThread;->callstack:Ljava/lang/Object;

    check-cast p1, Lcom/prineside/luaj/lib/DebugLib$CallStack;

    return-object p1
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/lib/DebugLib;->x:Lcom/prineside/luaj/Globals;

    const-class v1, Lcom/prineside/luaj/Globals;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
