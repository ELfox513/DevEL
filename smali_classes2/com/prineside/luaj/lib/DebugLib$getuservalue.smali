.class public final Lcom/prineside/luaj/lib/DebugLib$getuservalue;
.super Lcom/prineside/luaj/lib/LibFunction;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/lib/DebugLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "getuservalue"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/LibFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 1

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->isuserdata()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/prineside/luaj/LuaValue;->NIL:Lcom/prineside/luaj/LuaValue;

    :goto_0
    return-object p1
.end method
