.class public Lcom/prineside/luaj/lib/Bit32Lib;
.super Lcom/prineside/luaj/lib/TwoArgFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/luaj/lib/Bit32Lib$Bit32LibV;,
        Lcom/prineside/luaj/lib/Bit32Lib$Bit32Lib2;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/TwoArgFunction;-><init>()V

    return-void
.end method

.method public static A(II)Lcom/prineside/luaj/LuaValue;
    .locals 1

    if-gez p1, :cond_0

    neg-int p1, p1

    invoke-static {p0, p1}, Lcom/prineside/luaj/lib/Bit32Lib;->D(II)Lcom/prineside/luaj/LuaValue;

    move-result-object p0

    return-object p0

    :cond_0
    and-int/lit8 p1, p1, 0x1f

    shl-int v0, p0, p1

    rsub-int/lit8 p1, p1, 0x20

    ushr-int/2addr p0, p1

    or-int/2addr p0, v0

    invoke-static {p0}, Lcom/prineside/luaj/lib/Bit32Lib;->u(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p0

    return-object p0
.end method

.method public static B(II)Lcom/prineside/luaj/LuaValue;
    .locals 1

    const/16 v0, 0x20

    if-ge p1, v0, :cond_2

    const/16 v0, -0x20

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_1

    shl-int/2addr p0, p1

    invoke-static {p0}, Lcom/prineside/luaj/lib/Bit32Lib;->u(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p0

    return-object p0

    :cond_1
    neg-int p1, p1

    ushr-int/2addr p0, p1

    invoke-static {p0}, Lcom/prineside/luaj/lib/Bit32Lib;->u(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    sget-object p0, Lcom/prineside/luaj/LuaValue;->ZERO:Lcom/prineside/luaj/LuaNumber;

    return-object p0
.end method

.method public static C(IIII)Lcom/prineside/luaj/LuaValue;
    .locals 2

    if-gez p2, :cond_0

    const/4 v0, 0x3

    const-string v1, "field cannot be negative"

    invoke-static {v0, v1}, Lcom/prineside/luaj/LuaValue;->argerror(ILjava/lang/String;)Lcom/prineside/luaj/LuaValue;

    :cond_0
    if-gez p3, :cond_1

    const/4 v0, 0x4

    const-string v1, "width must be postive"

    invoke-static {v0, v1}, Lcom/prineside/luaj/LuaValue;->argerror(ILjava/lang/String;)Lcom/prineside/luaj/LuaValue;

    :cond_1
    add-int v0, p2, p3

    const/16 v1, 0x20

    if-le v0, v1, :cond_2

    const-string v0, "trying to access non-existent bits"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    :cond_2
    sub-int/2addr v1, p3

    const/4 p3, -0x1

    ushr-int/2addr p3, v1

    shl-int/2addr p3, p2

    xor-int/lit8 v0, p3, -0x1

    and-int/2addr p0, v0

    shl-int/2addr p1, p2

    and-int/2addr p1, p3

    or-int/2addr p0, p1

    invoke-static {p0}, Lcom/prineside/luaj/lib/Bit32Lib;->u(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p0

    return-object p0
.end method

.method public static D(II)Lcom/prineside/luaj/LuaValue;
    .locals 1

    if-gez p1, :cond_0

    neg-int p1, p1

    invoke-static {p0, p1}, Lcom/prineside/luaj/lib/Bit32Lib;->A(II)Lcom/prineside/luaj/LuaValue;

    move-result-object p0

    return-object p0

    :cond_0
    and-int/lit8 p1, p1, 0x1f

    ushr-int v0, p0, p1

    rsub-int/lit8 p1, p1, 0x20

    shl-int/2addr p0, p1

    or-int/2addr p0, v0

    invoke-static {p0}, Lcom/prineside/luaj/lib/Bit32Lib;->u(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p0

    return-object p0
.end method

.method public static E(II)Lcom/prineside/luaj/LuaValue;
    .locals 1

    const/16 v0, 0x20

    if-ge p1, v0, :cond_2

    const/16 v0, -0x20

    if-gt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_1

    ushr-int/2addr p0, p1

    invoke-static {p0}, Lcom/prineside/luaj/lib/Bit32Lib;->u(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p0

    return-object p0

    :cond_1
    neg-int p1, p1

    shl-int/2addr p0, p1

    invoke-static {p0}, Lcom/prineside/luaj/lib/Bit32Lib;->u(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    sget-object p0, Lcom/prineside/luaj/LuaValue;->ZERO:Lcom/prineside/luaj/LuaNumber;

    return-object p0
.end method

.method public static s(II)Lcom/prineside/luaj/LuaValue;
    .locals 0

    if-ltz p1, :cond_0

    shr-int/2addr p0, p1

    invoke-static {p0}, Lcom/prineside/luaj/lib/Bit32Lib;->u(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p0

    return-object p0

    :cond_0
    neg-int p1, p1

    shl-int/2addr p0, p1

    invoke-static {p0}, Lcom/prineside/luaj/lib/Bit32Lib;->u(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p0

    return-object p0
.end method

.method public static t(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, -0x1

    :goto_0
    invoke-virtual {p0}, Lcom/prineside/luaj/Varargs;->narg()I

    move-result v2

    if-gt v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/Varargs;->checkint(I)I

    move-result v2

    and-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/prineside/luaj/lib/Bit32Lib;->u(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p0

    return-object p0
.end method

.method public static u(I)Lcom/prineside/luaj/LuaValue;
    .locals 4

    if-gez p0, :cond_0

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-double v0, v0

    invoke-static {v0, v1}, Lcom/prineside/luaj/LuaValue;->valueOf(D)Lcom/prineside/luaj/LuaNumber;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/prineside/luaj/LuaValue;->valueOf(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static v(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/Varargs;->checkint(I)I

    move-result p0

    xor-int/lit8 p0, p0, -0x1

    invoke-static {p0}, Lcom/prineside/luaj/lib/Bit32Lib;->u(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p0

    return-object p0
.end method

.method public static w(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/prineside/luaj/Varargs;->narg()I

    move-result v2

    if-gt v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/Varargs;->checkint(I)I

    move-result v2

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/prineside/luaj/lib/Bit32Lib;->u(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p0

    return-object p0
.end method

.method public static x(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/prineside/luaj/Varargs;->narg()I

    move-result v3

    if-gt v2, v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/prineside/luaj/Varargs;->checkint(I)I

    move-result v3

    and-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(Z)Lcom/prineside/luaj/LuaBoolean;

    move-result-object p0

    return-object p0
.end method

.method public static y(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/prineside/luaj/Varargs;->narg()I

    move-result v2

    if-gt v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/Varargs;->checkint(I)I

    move-result v2

    xor-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/prineside/luaj/lib/Bit32Lib;->u(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p0

    return-object p0
.end method

.method public static z(III)Lcom/prineside/luaj/LuaValue;
    .locals 2

    if-gez p1, :cond_0

    const/4 v0, 0x2

    const-string v1, "field cannot be negative"

    invoke-static {v0, v1}, Lcom/prineside/luaj/LuaValue;->argerror(ILjava/lang/String;)Lcom/prineside/luaj/LuaValue;

    :cond_0
    if-gez p2, :cond_1

    const/4 v0, 0x3

    const-string v1, "width must be postive"

    invoke-static {v0, v1}, Lcom/prineside/luaj/LuaValue;->argerror(ILjava/lang/String;)Lcom/prineside/luaj/LuaValue;

    :cond_1
    add-int v0, p1, p2

    const/16 v1, 0x20

    if-le v0, v1, :cond_2

    const-string v0, "trying to access non-existent bits"

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->error(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    :cond_2
    ushr-int/2addr p0, p1

    const/4 p1, -0x1

    sub-int/2addr v1, p2

    ushr-int/2addr p1, v1

    and-int/2addr p0, p1

    invoke-static {p0}, Lcom/prineside/luaj/lib/Bit32Lib;->u(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 10

    new-instance p1, Lcom/prineside/luaj/LuaTable;

    invoke-direct {p1}, Lcom/prineside/luaj/LuaTable;-><init>()V

    const-class v0, Lcom/prineside/luaj/lib/Bit32Lib$Bit32LibV;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "band"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "bnot"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "bor"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "btest"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "bxor"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "extract"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const/4 v2, 0x6

    const-string v9, "replace"

    aput-object v9, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lcom/prineside/luaj/lib/LibFunction;->r(Lcom/prineside/luaj/LuaValue;Ljava/lang/Class;[Ljava/lang/String;)V

    const-class v0, Lcom/prineside/luaj/lib/Bit32Lib$Bit32Lib2;

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "arshift"

    aput-object v2, v1, v3

    const-string v2, "lrotate"

    aput-object v2, v1, v4

    const-string v2, "lshift"

    aput-object v2, v1, v5

    const-string v2, "rrotate"

    aput-object v2, v1, v6

    const-string v2, "rshift"

    aput-object v2, v1, v7

    invoke-virtual {p0, p1, v0, v1}, Lcom/prineside/luaj/lib/LibFunction;->r(Lcom/prineside/luaj/LuaValue;Ljava/lang/Class;[Ljava/lang/String;)V

    const-string v0, "bit32"

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
    return-object p1
.end method
