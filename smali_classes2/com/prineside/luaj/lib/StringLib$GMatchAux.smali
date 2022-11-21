.class Lcom/prineside/luaj/lib/StringLib$GMatchAux;
.super Lcom/prineside/luaj/lib/VarArgFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/lib/StringLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GMatchAux"
.end annotation


# instance fields
.field public A:I

.field public final x:I

.field public final y:Lcom/prineside/luaj/lib/StringLib$MatchState;

.field public z:I


# direct methods
.method public constructor <init>(Lcom/prineside/luaj/Varargs;Lcom/prineside/luaj/LuaString;Lcom/prineside/luaj/LuaString;)V
    .locals 1

    invoke-direct {p0}, Lcom/prineside/luaj/lib/VarArgFunction;-><init>()V

    invoke-virtual {p2}, Lcom/prineside/luaj/LuaString;->length()I

    move-result v0

    iput v0, p0, Lcom/prineside/luaj/lib/StringLib$GMatchAux;->x:I

    new-instance v0, Lcom/prineside/luaj/lib/StringLib$MatchState;

    invoke-direct {v0, p1, p2, p3}, Lcom/prineside/luaj/lib/StringLib$MatchState;-><init>(Lcom/prineside/luaj/Varargs;Lcom/prineside/luaj/LuaString;Lcom/prineside/luaj/LuaString;)V

    iput-object v0, p0, Lcom/prineside/luaj/lib/StringLib$GMatchAux;->y:Lcom/prineside/luaj/lib/StringLib$MatchState;

    const/4 p1, 0x0

    iput p1, p0, Lcom/prineside/luaj/lib/StringLib$GMatchAux;->z:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/prineside/luaj/lib/StringLib$GMatchAux;->A:I

    return-void
.end method


# virtual methods
.method public invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 3

    :goto_0
    iget p1, p0, Lcom/prineside/luaj/lib/StringLib$GMatchAux;->z:I

    iget v0, p0, Lcom/prineside/luaj/lib/StringLib$GMatchAux;->x:I

    if-gt p1, v0, :cond_1

    iget-object p1, p0, Lcom/prineside/luaj/lib/StringLib$GMatchAux;->y:Lcom/prineside/luaj/lib/StringLib$MatchState;

    invoke-virtual {p1}, Lcom/prineside/luaj/lib/StringLib$MatchState;->o()V

    iget-object p1, p0, Lcom/prineside/luaj/lib/StringLib$GMatchAux;->y:Lcom/prineside/luaj/lib/StringLib$MatchState;

    iget v0, p0, Lcom/prineside/luaj/lib/StringLib$GMatchAux;->z:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/prineside/luaj/lib/StringLib$MatchState;->f(II)I

    move-result p1

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    iget v1, p0, Lcom/prineside/luaj/lib/StringLib$GMatchAux;->A:I

    if-eq p1, v1, :cond_0

    iget v1, p0, Lcom/prineside/luaj/lib/StringLib$GMatchAux;->z:I

    iput p1, p0, Lcom/prineside/luaj/lib/StringLib$GMatchAux;->z:I

    iput p1, p0, Lcom/prineside/luaj/lib/StringLib$GMatchAux;->A:I

    iget-object v2, p0, Lcom/prineside/luaj/lib/StringLib$GMatchAux;->y:Lcom/prineside/luaj/lib/StringLib$MatchState;

    invoke-virtual {v2, v0, v1, p1}, Lcom/prineside/luaj/lib/StringLib$MatchState;->m(ZII)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1

    :cond_0
    iget p1, p0, Lcom/prineside/luaj/lib/StringLib$GMatchAux;->z:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/prineside/luaj/lib/StringLib$GMatchAux;->z:I

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    return-object p1
.end method
