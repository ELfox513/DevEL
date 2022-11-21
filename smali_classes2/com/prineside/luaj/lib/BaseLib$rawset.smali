.class public final Lcom/prineside/luaj/lib/BaseLib$rawset;
.super Lcom/prineside/luaj/lib/TableLibFunction;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/lib/BaseLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "rawset"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/TableLibFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Lcom/prineside/luaj/LuaValue;
    .locals 1

    invoke-super {p0}, Lcom/prineside/luaj/lib/TableLibFunction;->call()Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public call(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 1

    const/4 p1, 0x2

    const-string v0, "value expected"

    invoke-static {p1, v0}, Lcom/prineside/luaj/LuaValue;->argerror(ILjava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 0

    const/4 p1, 0x3

    const-string p2, "value expected"

    invoke-static {p1, p2}, Lcom/prineside/luaj/LuaValue;->argerror(ILjava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 2

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->checktable()Lcom/prineside/luaj/LuaTable;

    move-result-object p1

    invoke-virtual {p2}, Lcom/prineside/luaj/LuaValue;->isvalidkey()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    const-string v1, "table index is nil"

    invoke-static {v0, v1}, Lcom/prineside/luaj/LuaValue;->argerror(ILjava/lang/String;)Lcom/prineside/luaj/LuaValue;

    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/prineside/luaj/LuaTable;->rawset(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)V

    return-object p1
.end method
