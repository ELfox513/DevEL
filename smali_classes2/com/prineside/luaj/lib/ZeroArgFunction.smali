.class public abstract Lcom/prineside/luaj/lib/ZeroArgFunction;
.super Lcom/prineside/luaj/lib/LibFunction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/LibFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract call()Lcom/prineside/luaj/LuaValue;
.end method

.method public call(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/luaj/lib/ZeroArgFunction;->call()Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/luaj/lib/ZeroArgFunction;->call()Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/luaj/lib/ZeroArgFunction;->call()Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/luaj/lib/ZeroArgFunction;->call()Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method
