.class final Lcom/prineside/luaj/Varargs$PairVarargs;
.super Lcom/prineside/luaj/Varargs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/Varargs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PairVarargs"
.end annotation


# instance fields
.field public v1:Lcom/prineside/luaj/LuaValue;

.field public v2:Lcom/prineside/luaj/Varargs;


# direct methods
.method public constructor <init>(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/Varargs;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/Varargs;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/Varargs$PairVarargs;->v1:Lcom/prineside/luaj/LuaValue;

    iput-object p2, p0, Lcom/prineside/luaj/Varargs$PairVarargs;->v2:Lcom/prineside/luaj/Varargs;

    return-void
.end method


# virtual methods
.method public arg(I)Lcom/prineside/luaj/LuaValue;
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/prineside/luaj/Varargs$PairVarargs;->v1:Lcom/prineside/luaj/LuaValue;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/prineside/luaj/Varargs$PairVarargs;->v2:Lcom/prineside/luaj/Varargs;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lcom/prineside/luaj/Varargs;->arg(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public arg1()Lcom/prineside/luaj/LuaValue;
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/Varargs$PairVarargs;->v1:Lcom/prineside/luaj/LuaValue;

    return-object v0
.end method

.method public narg()I
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/Varargs$PairVarargs;->v2:Lcom/prineside/luaj/Varargs;

    invoke-virtual {v0}, Lcom/prineside/luaj/Varargs;->narg()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public subargs(I)Lcom/prineside/luaj/Varargs;
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/prineside/luaj/Varargs$PairVarargs;->v2:Lcom/prineside/luaj/Varargs;

    return-object p1

    :cond_1
    if-le p1, v1, :cond_2

    iget-object v1, p0, Lcom/prineside/luaj/Varargs$PairVarargs;->v2:Lcom/prineside/luaj/Varargs;

    sub-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lcom/prineside/luaj/Varargs;->subargs(I)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, "start must be > 0"

    invoke-static {v0, p1}, Lcom/prineside/luaj/LuaValue;->argerror(ILjava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method
