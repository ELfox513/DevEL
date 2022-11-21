.class Lcom/prineside/luaj/Varargs$SubVarargs;
.super Lcom/prineside/luaj/Varargs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/Varargs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubVarargs"
.end annotation


# instance fields
.field public final a:Lcom/prineside/luaj/Varargs;

.field public final b:I

.field public final d:I


# direct methods
.method public constructor <init>(Lcom/prineside/luaj/Varargs;II)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/Varargs;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/Varargs$SubVarargs;->a:Lcom/prineside/luaj/Varargs;

    iput p2, p0, Lcom/prineside/luaj/Varargs$SubVarargs;->b:I

    iput p3, p0, Lcom/prineside/luaj/Varargs$SubVarargs;->d:I

    return-void
.end method


# virtual methods
.method public arg(I)Lcom/prineside/luaj/LuaValue;
    .locals 2

    iget v0, p0, Lcom/prineside/luaj/Varargs$SubVarargs;->b:I

    add-int/lit8 v1, v0, -0x1

    add-int/2addr p1, v1

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/prineside/luaj/Varargs$SubVarargs;->d:I

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/prineside/luaj/Varargs$SubVarargs;->a:Lcom/prineside/luaj/Varargs;

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    :goto_0
    return-object p1
.end method

.method public arg1()Lcom/prineside/luaj/LuaValue;
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/Varargs$SubVarargs;->a:Lcom/prineside/luaj/Varargs;

    iget v1, p0, Lcom/prineside/luaj/Varargs$SubVarargs;->b:I

    invoke-virtual {v0, v1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public narg()I
    .locals 2

    iget v0, p0, Lcom/prineside/luaj/Varargs$SubVarargs;->d:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/prineside/luaj/Varargs$SubVarargs;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public subargs(I)Lcom/prineside/luaj/Varargs;
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    iget v1, p0, Lcom/prineside/luaj/Varargs$SubVarargs;->b:I

    add-int/2addr v1, p1

    sub-int/2addr v1, v0

    if-lez p1, :cond_4

    iget p1, p0, Lcom/prineside/luaj/Varargs$SubVarargs;->d:I

    if-lt v1, p1, :cond_1

    sget-object p1, Lcom/prineside/luaj/LuaValue;->NONE:Lcom/prineside/luaj/LuaValue;

    return-object p1

    :cond_1
    if-ne v1, p1, :cond_2

    iget-object v0, p0, Lcom/prineside/luaj/Varargs$SubVarargs;->a:Lcom/prineside/luaj/Varargs;

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1

    :cond_2
    add-int/lit8 v2, p1, -0x1

    if-ne v1, v2, :cond_3

    new-instance v1, Lcom/prineside/luaj/Varargs$PairVarargs;

    iget-object v2, p0, Lcom/prineside/luaj/Varargs$SubVarargs;->a:Lcom/prineside/luaj/Varargs;

    sub-int/2addr p1, v0

    invoke-virtual {v2, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    iget-object v0, p0, Lcom/prineside/luaj/Varargs$SubVarargs;->a:Lcom/prineside/luaj/Varargs;

    iget v2, p0, Lcom/prineside/luaj/Varargs$SubVarargs;->d:I

    invoke-virtual {v0, v2}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/prineside/luaj/Varargs$PairVarargs;-><init>(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)V

    return-object v1

    :cond_3
    new-instance v0, Lcom/prineside/luaj/Varargs$SubVarargs;

    iget-object v2, p0, Lcom/prineside/luaj/Varargs$SubVarargs;->a:Lcom/prineside/luaj/Varargs;

    invoke-direct {v0, v2, v1, p1}, Lcom/prineside/luaj/Varargs$SubVarargs;-><init>(Lcom/prineside/luaj/Varargs;II)V

    return-object v0

    :cond_4
    new-instance p1, Lcom/prineside/luaj/Varargs$SubVarargs;

    iget-object v0, p0, Lcom/prineside/luaj/Varargs$SubVarargs;->a:Lcom/prineside/luaj/Varargs;

    iget v2, p0, Lcom/prineside/luaj/Varargs$SubVarargs;->d:I

    invoke-direct {p1, v0, v1, v2}, Lcom/prineside/luaj/Varargs$SubVarargs;-><init>(Lcom/prineside/luaj/Varargs;II)V

    return-object p1
.end method
