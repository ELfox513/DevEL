.class final Lcom/prineside/luaj/Varargs$ArrayVarargs;
.super Lcom/prineside/luaj/Varargs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/Varargs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ArrayVarargs"
.end annotation


# instance fields
.field public final a:Lcom/prineside/luaj/Varargs;

.field public final v:[Lcom/prineside/luaj/LuaValue;


# direct methods
.method public constructor <init>([Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/Varargs;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/Varargs$ArrayVarargs;->v:[Lcom/prineside/luaj/LuaValue;

    iput-object p2, p0, Lcom/prineside/luaj/Varargs$ArrayVarargs;->a:Lcom/prineside/luaj/Varargs;

    return-void
.end method


# virtual methods
.method public a([Lcom/prineside/luaj/LuaValue;II)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/luaj/Varargs$ArrayVarargs;->v:[Lcom/prineside/luaj/LuaValue;

    array-length v0, v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/prineside/luaj/Varargs$ArrayVarargs;->v:[Lcom/prineside/luaj/LuaValue;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/prineside/luaj/Varargs$ArrayVarargs;->a:Lcom/prineside/luaj/Varargs;

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    invoke-virtual {v1, p1, p2, p3}, Lcom/prineside/luaj/Varargs;->a([Lcom/prineside/luaj/LuaValue;II)V

    return-void
.end method

.method public arg(I)Lcom/prineside/luaj/LuaValue;
    .locals 3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    sget-object p1, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/prineside/luaj/Varargs$ArrayVarargs;->v:[Lcom/prineside/luaj/LuaValue;

    array-length v2, v1

    if-gt p1, v2, :cond_1

    sub-int/2addr p1, v0

    aget-object p1, v1, p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/prineside/luaj/Varargs$ArrayVarargs;->a:Lcom/prineside/luaj/Varargs;

    array-length v1, v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public arg1()Lcom/prineside/luaj/LuaValue;
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/Varargs$ArrayVarargs;->v:[Lcom/prineside/luaj/LuaValue;

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/luaj/Varargs$ArrayVarargs;->a:Lcom/prineside/luaj/Varargs;

    invoke-virtual {v0}, Lcom/prineside/luaj/Varargs;->arg1()Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public narg()I
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/Varargs$ArrayVarargs;->v:[Lcom/prineside/luaj/LuaValue;

    array-length v0, v0

    iget-object v1, p0, Lcom/prineside/luaj/Varargs$ArrayVarargs;->a:Lcom/prineside/luaj/Varargs;

    invoke-virtual {v1}, Lcom/prineside/luaj/Varargs;->narg()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public subargs(I)Lcom/prineside/luaj/Varargs;
    .locals 3

    const/4 v0, 0x1

    if-gtz p1, :cond_0

    const-string v1, "start must be > 0"

    invoke-static {v0, v1}, Lcom/prineside/luaj/LuaValue;->argerror(ILjava/lang/String;)Lcom/prineside/luaj/LuaValue;

    :cond_0
    if-ne p1, v0, :cond_1

    return-object p0

    :cond_1
    iget-object v1, p0, Lcom/prineside/luaj/Varargs$ArrayVarargs;->v:[Lcom/prineside/luaj/LuaValue;

    array-length v2, v1

    if-le p1, v2, :cond_2

    iget-object v0, p0, Lcom/prineside/luaj/Varargs$ArrayVarargs;->a:Lcom/prineside/luaj/Varargs;

    array-length v1, v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/Varargs;->subargs(I)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1

    :cond_2
    sub-int/2addr p1, v0

    array-length v0, v1

    sub-int/2addr v0, p1

    iget-object v2, p0, Lcom/prineside/luaj/Varargs$ArrayVarargs;->a:Lcom/prineside/luaj/Varargs;

    invoke-static {v1, p1, v0, v2}, Lcom/prineside/luaj/LuaValue;->varargsOf([Lcom/prineside/luaj/LuaValue;IILcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1
.end method
