.class public abstract Lcom/prineside/luaj/Varargs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/luaj/Varargs$PairVarargs;,
        Lcom/prineside/luaj/Varargs$ArrayVarargs;,
        Lcom/prineside/luaj/Varargs$ArrayPartVarargs;,
        Lcom/prineside/luaj/Varargs$SubVarargs;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([Lcom/prineside/luaj/LuaValue;II)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object v2

    aput-object v2, p1, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract arg(I)Lcom/prineside/luaj/LuaValue;
.end method

.method public abstract arg1()Lcom/prineside/luaj/LuaValue;
.end method

.method public argcheck(ZILjava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    invoke-static {p2, p3}, Lcom/prineside/luaj/LuaValue;->argerror(ILjava/lang/String;)Lcom/prineside/luaj/LuaValue;

    :cond_0
    return-void
.end method

.method public checkboolean(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->checkboolean()Z

    move-result p1

    return p1
.end method

.method public checkclosure(I)Lcom/prineside/luaj/LuaClosure;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->checkclosure()Lcom/prineside/luaj/LuaClosure;

    move-result-object p1

    return-object p1
.end method

.method public checkdouble(I)D
    .locals 2

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->checkdouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public checkfunction(I)Lcom/prineside/luaj/LuaFunction;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->checkfunction()Lcom/prineside/luaj/LuaFunction;

    move-result-object p1

    return-object p1
.end method

.method public checkint(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->checkint()I

    move-result p1

    return p1
.end method

.method public checkinteger(I)Lcom/prineside/luaj/LuaInteger;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->checkinteger()Lcom/prineside/luaj/LuaInteger;

    move-result-object p1

    return-object p1
.end method

.method public checkjstring(I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public checklong(I)J
    .locals 2

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->checklong()J

    move-result-wide v0

    return-wide v0
.end method

.method public checknotnil(I)Lcom/prineside/luaj/LuaValue;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->checknotnil()Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public checknumber(I)Lcom/prineside/luaj/LuaNumber;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->checknumber()Lcom/prineside/luaj/LuaNumber;

    move-result-object p1

    return-object p1
.end method

.method public checkstring(I)Lcom/prineside/luaj/LuaString;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->checkstring()Lcom/prineside/luaj/LuaString;

    move-result-object p1

    return-object p1
.end method

.method public checktable(I)Lcom/prineside/luaj/LuaTable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->checktable()Lcom/prineside/luaj/LuaTable;

    move-result-object p1

    return-object p1
.end method

.method public checkthread(I)Lcom/prineside/luaj/LuaThread;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->checkthread()Lcom/prineside/luaj/LuaThread;

    move-result-object p1

    return-object p1
.end method

.method public checkuserdata(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->checkuserdata()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public checkuserdata(ILjava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/prineside/luaj/LuaValue;->checkuserdata(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public checkvalue(I)Lcom/prineside/luaj/LuaValue;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/Varargs;->narg()I

    move-result v0

    if-gt p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "value expected"

    invoke-static {p1, v0}, Lcom/prineside/luaj/LuaValue;->argerror(ILjava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public dealias()Lcom/prineside/luaj/Varargs;
    .locals 3

    invoke-virtual {p0}, Lcom/prineside/luaj/Varargs;->narg()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-array v1, v0, [Lcom/prineside/luaj/LuaValue;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/prineside/luaj/Varargs;->a([Lcom/prineside/luaj/LuaValue;II)V

    new-instance v0, Lcom/prineside/luaj/Varargs$ArrayVarargs;

    sget-object v2, Lcom/prineside/luaj/LuaValue;->NONE:Lcom/prineside/luaj/LuaValue;

    invoke-direct {v0, v1, v2}, Lcom/prineside/luaj/Varargs$ArrayVarargs;-><init>([Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/prineside/luaj/Varargs$PairVarargs;

    invoke-virtual {p0}, Lcom/prineside/luaj/Varargs;->arg1()Lcom/prineside/luaj/LuaValue;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/prineside/luaj/Varargs$PairVarargs;-><init>(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)V

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/prineside/luaj/Varargs;->arg1()Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    return-object v0

    :cond_2
    sget-object v0, Lcom/prineside/luaj/LuaValue;->NONE:Lcom/prineside/luaj/LuaValue;

    return-object v0
.end method

.method public eval()Lcom/prineside/luaj/Varargs;
    .locals 0

    return-object p0
.end method

.method public isTailcall()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isfunction(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->isfunction()Z

    move-result p1

    return p1
.end method

.method public isnil(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result p1

    return p1
.end method

.method public isnoneornil(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/Varargs;->narg()I

    move-result v0

    if-gt p1, v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public isnumber(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->isnumber()Z

    move-result p1

    return p1
.end method

.method public isstring(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->isstring()Z

    move-result p1

    return p1
.end method

.method public istable(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->istable()Z

    move-result p1

    return p1
.end method

.method public isthread(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->isthread()Z

    move-result p1

    return p1
.end method

.method public isuserdata(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->isuserdata()Z

    move-result p1

    return p1
.end method

.method public isvalue(I)Z
    .locals 1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/prineside/luaj/Varargs;->narg()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract narg()I
.end method

.method public optboolean(IZ)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/prineside/luaj/LuaValue;->optboolean(Z)Z

    move-result p1

    return p1
.end method

.method public optclosure(ILcom/prineside/luaj/LuaClosure;)Lcom/prineside/luaj/LuaClosure;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/prineside/luaj/LuaValue;->optclosure(Lcom/prineside/luaj/LuaClosure;)Lcom/prineside/luaj/LuaClosure;

    move-result-object p1

    return-object p1
.end method

.method public optdouble(ID)D
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/prineside/luaj/LuaValue;->optdouble(D)D

    move-result-wide p1

    return-wide p1
.end method

.method public optfunction(ILcom/prineside/luaj/LuaFunction;)Lcom/prineside/luaj/LuaFunction;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/prineside/luaj/LuaValue;->optfunction(Lcom/prineside/luaj/LuaFunction;)Lcom/prineside/luaj/LuaFunction;

    move-result-object p1

    return-object p1
.end method

.method public optint(II)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/prineside/luaj/LuaValue;->optint(I)I

    move-result p1

    return p1
.end method

.method public optinteger(ILcom/prineside/luaj/LuaInteger;)Lcom/prineside/luaj/LuaInteger;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/prineside/luaj/LuaValue;->optinteger(Lcom/prineside/luaj/LuaInteger;)Lcom/prineside/luaj/LuaInteger;

    move-result-object p1

    return-object p1
.end method

.method public optjstring(ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/prineside/luaj/LuaValue;->optjstring(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public optlong(IJ)J
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/prineside/luaj/LuaValue;->optlong(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public optnumber(ILcom/prineside/luaj/LuaNumber;)Lcom/prineside/luaj/LuaNumber;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/prineside/luaj/LuaValue;->optnumber(Lcom/prineside/luaj/LuaNumber;)Lcom/prineside/luaj/LuaNumber;

    move-result-object p1

    return-object p1
.end method

.method public optstring(ILcom/prineside/luaj/LuaString;)Lcom/prineside/luaj/LuaString;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/prineside/luaj/LuaValue;->optstring(Lcom/prineside/luaj/LuaString;)Lcom/prineside/luaj/LuaString;

    move-result-object p1

    return-object p1
.end method

.method public opttable(ILcom/prineside/luaj/LuaTable;)Lcom/prineside/luaj/LuaTable;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/prineside/luaj/LuaValue;->opttable(Lcom/prineside/luaj/LuaTable;)Lcom/prineside/luaj/LuaTable;

    move-result-object p1

    return-object p1
.end method

.method public optthread(ILcom/prineside/luaj/LuaThread;)Lcom/prineside/luaj/LuaThread;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/prineside/luaj/LuaValue;->optthread(Lcom/prineside/luaj/LuaThread;)Lcom/prineside/luaj/LuaThread;

    move-result-object p1

    return-object p1
.end method

.method public optuserdata(ILjava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/prineside/luaj/LuaValue;->optuserdata(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public optuserdata(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/prineside/luaj/LuaValue;->optuserdata(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public optvalue(ILcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 1

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/prineside/luaj/Varargs;->narg()I

    move-result v0

    if-gt p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public abstract subargs(I)Lcom/prineside/luaj/Varargs;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/luaj/Varargs;->tojstring()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toboolean(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->toboolean()Z

    move-result p1

    return p1
.end method

.method public tobyte(I)B
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->tobyte()B

    move-result p1

    return p1
.end method

.method public tochar(I)C
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->tochar()C

    move-result p1

    return p1
.end method

.method public todouble(I)D
    .locals 2

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->todouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public tofloat(I)F
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->tofloat()F

    move-result p1

    return p1
.end method

.method public toint(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->toint()I

    move-result p1

    return p1
.end method

.method public tojstring()Ljava/lang/String;
    .locals 5

    new-instance v0, Lcom/prineside/luaj/Buffer;

    invoke-direct {v0}, Lcom/prineside/luaj/Buffer;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Lcom/prineside/luaj/Buffer;->append(Ljava/lang/String;)Lcom/prineside/luaj/Buffer;

    invoke-virtual {p0}, Lcom/prineside/luaj/Varargs;->narg()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_0
    if-gt v3, v1, :cond_1

    if-le v3, v2, :cond_0

    const-string v4, ","

    invoke-virtual {v0, v4}, Lcom/prineside/luaj/Buffer;->append(Ljava/lang/String;)Lcom/prineside/luaj/Buffer;

    :cond_0
    invoke-virtual {p0, v3}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/prineside/luaj/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/prineside/luaj/Buffer;->append(Ljava/lang/String;)Lcom/prineside/luaj/Buffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Lcom/prineside/luaj/Buffer;->append(Ljava/lang/String;)Lcom/prineside/luaj/Buffer;

    invoke-virtual {v0}, Lcom/prineside/luaj/Buffer;->tojstring()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tojstring(I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public tolong(I)J
    .locals 2

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->tolong()J

    move-result-wide v0

    return-wide v0
.end method

.method public toshort(I)S
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->toshort()S

    move-result p1

    return p1
.end method

.method public touserdata(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->touserdata()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public touserdata(ILjava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/prineside/luaj/LuaValue;->touserdata(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public type(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->type()I

    move-result p1

    return p1
.end method
