.class public final Lcom/prineside/luaj/lib/BaseLib$tonumber;
.super Lcom/prineside/luaj/lib/LibFunction;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/lib/BaseLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "tonumber"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/LibFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 0

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->tonumber()Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 2

    invoke-virtual {p2}, Lcom/prineside/luaj/LuaValue;->isnil()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->tonumber()Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p2}, Lcom/prineside/luaj/LuaValue;->checkint()I

    move-result p2

    const/4 v0, 0x2

    if-lt p2, v0, :cond_1

    const/16 v1, 0x24

    if-le p2, v1, :cond_2

    :cond_1
    const-string v1, "base out of range"

    invoke-static {v0, v1}, Lcom/prineside/luaj/LuaValue;->argerror(ILjava/lang/String;)Lcom/prineside/luaj/LuaValue;

    :cond_2
    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->checkstring()Lcom/prineside/luaj/LuaString;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/prineside/luaj/LuaString;->tonumber(I)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method
