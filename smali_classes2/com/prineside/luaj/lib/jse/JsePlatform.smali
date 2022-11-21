.class public Lcom/prineside/luaj/lib/jse/JsePlatform;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debugGlobals()Lcom/prineside/luaj/Globals;
    .locals 2

    invoke-static {}, Lcom/prineside/luaj/lib/jse/JsePlatform;->standardGlobals()Lcom/prineside/luaj/Globals;

    move-result-object v0

    new-instance v1, Lcom/prineside/luaj/lib/DebugLib;

    invoke-direct {v1}, Lcom/prineside/luaj/lib/DebugLib;-><init>()V

    invoke-virtual {v0, v1}, Lcom/prineside/luaj/LuaValue;->load(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    return-object v0
.end method

.method public static luaMain(Lcom/prineside/luaj/LuaValue;[Ljava/lang/String;)Lcom/prineside/luaj/Varargs;
    .locals 5

    invoke-static {}, Lcom/prineside/luaj/lib/jse/JsePlatform;->standardGlobals()Lcom/prineside/luaj/Globals;

    move-result-object v0

    array-length v1, p1

    array-length v2, p1

    new-array v2, v2, [Lcom/prineside/luaj/LuaValue;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    invoke-static {v4}, Lcom/prineside/luaj/LuaValue;->valueOf(Ljava/lang/String;)Lcom/prineside/luaj/LuaString;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lcom/prineside/luaj/LuaValue;->listOf([Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaTable;

    move-result-object p1

    const-string v3, "n"

    invoke-virtual {p1, v3, v1}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;I)V

    const-string v1, "arg"

    invoke-virtual {v0, v1, p1}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    invoke-virtual {p0, v0}, Lcom/prineside/luaj/LuaValue;->initupvalue1(Lcom/prineside/luaj/LuaValue;)V

    invoke-static {v2}, Lcom/prineside/luaj/LuaValue;->varargsOf([Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/Varargs;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prineside/luaj/LuaValue;->invoke(Lcom/prineside/luaj/Varargs;)Lcom/prineside/luaj/Varargs;

    move-result-object p0

    return-object p0
.end method

.method public static standardGlobals()Lcom/prineside/luaj/Globals;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deprecated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
