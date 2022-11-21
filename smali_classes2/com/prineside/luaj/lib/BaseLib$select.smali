.class public final Lcom/prineside/luaj/lib/BaseLib$select;
.super Lcom/prineside/luaj/lib/VarArgFunction;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/lib/BaseLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "select"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/VarArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 4

    invoke-virtual {p1}, Lcom/prineside/luaj/Varargs;->narg()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/prineside/luaj/Varargs;->arg1()Lcom/prineside/luaj/LuaValue;

    move-result-object v2

    const-string v3, "#"

    invoke-static {v3}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/prineside/luaj/LuaValue;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/prineside/luaj/LuaValue;->valueOf(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1, v1}, Lcom/prineside/luaj/Varargs;->checkint(I)I

    move-result v2

    if-eqz v2, :cond_1

    neg-int v3, v0

    if-ge v2, v3, :cond_2

    :cond_1
    const-string v3, "index out of range"

    invoke-static {v1, v3}, Lcom/prineside/luaj/LuaValue;->argerror(ILjava/lang/String;)Lcom/prineside/luaj/LuaValue;

    :cond_2
    if-gez v2, :cond_3

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v2, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/prineside/luaj/Varargs;->subargs(I)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    return-object p1
.end method
