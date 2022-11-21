.class final Lcom/prineside/luaj/Varargs$ArrayPartVarargs;
.super Lcom/prineside/luaj/Varargs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/Varargs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ArrayPartVarargs"
.end annotation


# instance fields
.field public final a:I

.field public final b:[Lcom/prineside/luaj/LuaValue;

.field public final d:I

.field public final k:Lcom/prineside/luaj/Varargs;


# direct methods
.method public constructor <init>([Lcom/prineside/luaj/LuaValue;IILcom/prineside/luaj/Varargs;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/Varargs;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/Varargs$ArrayPartVarargs;->b:[Lcom/prineside/luaj/LuaValue;

    iput p2, p0, Lcom/prineside/luaj/Varargs$ArrayPartVarargs;->a:I

    iput p3, p0, Lcom/prineside/luaj/Varargs$ArrayPartVarargs;->d:I

    iput-object p4, p0, Lcom/prineside/luaj/Varargs$ArrayPartVarargs;->k:Lcom/prineside/luaj/Varargs;

    return-void
.end method


# virtual methods
.method public a([Lcom/prineside/luaj/LuaValue;II)V
    .locals 3

    iget v0, p0, Lcom/prineside/luaj/Varargs$ArrayPartVarargs;->d:I

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/prineside/luaj/Varargs$ArrayPartVarargs;->b:[Lcom/prineside/luaj/LuaValue;

    iget v2, p0, Lcom/prineside/luaj/Varargs$ArrayPartVarargs;->a:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/prineside/luaj/Varargs$ArrayPartVarargs;->k:Lcom/prineside/luaj/Varargs;

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
    iget v1, p0, Lcom/prineside/luaj/Varargs$ArrayPartVarargs;->d:I

    if-gt p1, v1, :cond_1

    iget-object v1, p0, Lcom/prineside/luaj/Varargs$ArrayPartVarargs;->b:[Lcom/prineside/luaj/LuaValue;

    iget v2, p0, Lcom/prineside/luaj/Varargs$ArrayPartVarargs;->a:I

    add-int/2addr v2, p1

    sub-int/2addr v2, v0

    aget-object p1, v1, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/prineside/luaj/Varargs$ArrayPartVarargs;->k:Lcom/prineside/luaj/Varargs;

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public arg1()Lcom/prineside/luaj/LuaValue;
    .locals 2

    iget v0, p0, Lcom/prineside/luaj/Varargs$ArrayPartVarargs;->d:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/luaj/Varargs$ArrayPartVarargs;->b:[Lcom/prineside/luaj/LuaValue;

    iget v1, p0, Lcom/prineside/luaj/Varargs$ArrayPartVarargs;->a:I

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/luaj/Varargs$ArrayPartVarargs;->k:Lcom/prineside/luaj/Varargs;

    invoke-virtual {v0}, Lcom/prineside/luaj/Varargs;->arg1()Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public narg()I
    .locals 2

    iget v0, p0, Lcom/prineside/luaj/Varargs$ArrayPartVarargs;->d:I

    iget-object v1, p0, Lcom/prineside/luaj/Varargs$ArrayPartVarargs;->k:Lcom/prineside/luaj/Varargs;

    invoke-virtual {v1}, Lcom/prineside/luaj/Varargs;->narg()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public subargs(I)Lcom/prineside/luaj/Varargs;
    .locals 4

    const/4 v0, 0x1

    if-gtz p1, :cond_0

    const-string v1, "start must be > 0"

    invoke-static {v0, v1}, Lcom/prineside/luaj/LuaValue;->argerror(ILjava/lang/String;)Lcom/prineside/luaj/LuaValue;

    :cond_0
    if-ne p1, v0, :cond_1

    return-object p0

    :cond_1
    iget v1, p0, Lcom/prineside/luaj/Varargs$ArrayPartVarargs;->d:I

    if-le p1, v1, :cond_2

    iget-object v0, p0, Lcom/prineside/luaj/Varargs$ArrayPartVarargs;->k:Lcom/prineside/luaj/Varargs;

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/Varargs;->subargs(I)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v2, p0, Lcom/prineside/luaj/Varargs$ArrayPartVarargs;->b:[Lcom/prineside/luaj/LuaValue;

    iget v3, p0, Lcom/prineside/luaj/Varargs$ArrayPartVarargs;->a:I

    add-int/2addr v3, p1

    sub-int/2addr v3, v0

    sub-int/2addr p1, v0

    sub-int/2addr v1, p1

    iget-object p1, p0, Lcom/prineside/luaj/Varargs$ArrayPartVarargs;->k:Lcom/prineside/luaj/Varargs;

    invoke-static {v2, v3, v1, p1}, Lcom/prineside/luaj/LuaValue;->varargsOf([Lcom/prineside/luaj/LuaValue;IILcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1
.end method
