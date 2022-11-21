.class public final Lcom/prineside/luaj/lib/jse/JseBaseLib;
.super Lcom/prineside/luaj/lib/BaseLib;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/BaseLib;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/luaj/lib/BaseLib;->call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    invoke-virtual {p2}, Lcom/prineside/luaj/LuaValue;->checkglobals()Lcom/prineside/luaj/Globals;

    move-result-object p1

    sget-object v0, Ljava/lang/System;->in:Ljava/io/InputStream;

    iput-object v0, p1, Lcom/prineside/luaj/Globals;->STDIN:Ljava/io/InputStream;

    return-object p2
.end method
