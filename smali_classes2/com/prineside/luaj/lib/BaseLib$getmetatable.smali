.class public final Lcom/prineside/luaj/lib/BaseLib$getmetatable;
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
    name = "getmetatable"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/LibFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/prineside/luaj/LuaValue;
    .locals 2

    const/4 v0, 0x1

    const-string v1, "value expected"

    invoke-static {v0, v1}, Lcom/prineside/luaj/LuaValue;->argerror(ILjava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public call(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->getmetatable()Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/prineside/luaj/LuaValue;->METATABLE:Lcom/prineside/luaj/LuaString;

    invoke-virtual {p1, v0}, Lcom/prineside/luaj/LuaValue;->rawget(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/prineside/luaj/LuaValue;->optvalue(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    :goto_0
    return-object p1
.end method
