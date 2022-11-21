.class public final Lcom/prineside/luaj/lib/DebugLib$setmetatable;
.super Lcom/prineside/luaj/lib/TwoArgFunction;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/lib/DebugLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "setmetatable"
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

    const-string v0, "DebugLib"

    const-string v1, "setmetatable"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/prineside/luaj/LuaValue;->opttable(Lcom/prineside/luaj/LuaTable;)Lcom/prineside/luaj/LuaTable;

    move-result-object p2

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->type()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-virtual {p1, p2}, Lcom/prineside/luaj/LuaValue;->setmetatable(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    goto :goto_0

    :cond_0
    sput-object p2, Lcom/prineside/luaj/LuaThread;->s_metatable:Lcom/prineside/luaj/LuaValue;

    goto :goto_0

    :cond_1
    sput-object p2, Lcom/prineside/luaj/LuaFunction;->s_metatable:Lcom/prineside/luaj/LuaValue;

    goto :goto_0

    :cond_2
    sput-object p2, Lcom/prineside/luaj/LuaString;->s_metatable:Lcom/prineside/luaj/LuaValue;

    goto :goto_0

    :cond_3
    sput-object p2, Lcom/prineside/luaj/LuaNumber;->s_metatable:Lcom/prineside/luaj/LuaValue;

    goto :goto_0

    :cond_4
    sput-object p2, Lcom/prineside/luaj/LuaBoolean;->s_metatable:Lcom/prineside/luaj/LuaValue;

    goto :goto_0

    :cond_5
    sput-object p2, Lcom/prineside/luaj/LuaNil;->s_metatable:Lcom/prineside/luaj/LuaValue;

    :goto_0
    return-object p1
.end method
