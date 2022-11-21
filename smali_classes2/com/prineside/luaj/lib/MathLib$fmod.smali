.class public final Lcom/prineside/luaj/lib/MathLib$fmod;
.super Lcom/prineside/luaj/lib/TwoArgFunction;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/lib/MathLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "fmod"
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

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->islong()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/prineside/luaj/LuaValue;->islong()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->tolong()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/prineside/luaj/LuaValue;->tolong()J

    move-result-wide p1

    rem-long/2addr v0, p1

    long-to-double p1, v0

    invoke-static {p1, p2}, Lcom/prineside/luaj/LuaValue;->valueOf(D)Lcom/prineside/luaj/LuaNumber;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->checkdouble()D

    move-result-wide v0

    invoke-virtual {p2}, Lcom/prineside/luaj/LuaValue;->checkdouble()D

    move-result-wide p1

    rem-double/2addr v0, p1

    invoke-static {v0, v1}, Lcom/prineside/luaj/LuaValue;->valueOf(D)Lcom/prineside/luaj/LuaNumber;

    move-result-object p1

    return-object p1
.end method
