.class public abstract Lcom/prineside/luaj/lib/OneArgFunction;
.super Lcom/prineside/luaj/lib/LibFunction;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/LibFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Lcom/prineside/luaj/LuaValue;
    .locals 1

    sget-object v0, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/lib/OneArgFunction;->call(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public abstract call(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
.end method

.method public final call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/lib/OneArgFunction;->call(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/lib/OneArgFunction;->call(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;
    .locals 0

    invoke-virtual {p1}, Lcom/prineside/luaj/Varargs;->arg1()Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/lib/OneArgFunction;->call(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method
