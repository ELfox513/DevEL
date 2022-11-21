.class public final Lcom/prineside/luaj/lib/BaseLib$error;
.super Lcom/prineside/luaj/lib/TwoArgFunction;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/lib/BaseLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "error"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 2

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->isstring()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/prineside/luaj/LuaValue;->optint(I)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/prineside/luaj/LuaError;

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->tojstring()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0}, Lcom/prineside/luaj/LuaValue;->optint(I)I

    move-result p2

    invoke-direct {v1, p1, p2}, Lcom/prineside/luaj/LuaError;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_1
    :goto_0
    new-instance p2, Lcom/prineside/luaj/LuaError;

    invoke-direct {p2, p1}, Lcom/prineside/luaj/LuaError;-><init>(Lcom/prineside/luaj/LuaValue;)V

    throw p2

    :cond_2
    new-instance p1, Lcom/prineside/luaj/LuaError;

    sget-object p2, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    invoke-direct {p1, p2}, Lcom/prineside/luaj/LuaError;-><init>(Lcom/prineside/luaj/LuaValue;)V

    throw p1
.end method
