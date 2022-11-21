.class public final Lcom/prineside/luaj/lib/jse/JseMathLib$log;
.super Lcom/prineside/luaj/lib/TwoArgFunction;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/lib/jse/JseMathLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "log"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/TwoArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 5

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->checkdouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/StrictMath;->log(D)D

    move-result-wide v0

    const-wide v2, 0x4005bf0a8b145769L    # Math.E

    invoke-virtual {p2, v2, v3}, Lcom/prineside/luaj/LuaValue;->optdouble(D)D

    move-result-wide p1

    cmpl-double v4, p1, v2

    if-eqz v4, :cond_0

    invoke-static {p1, p2}, Ljava/lang/StrictMath;->log(D)D

    move-result-wide p1

    div-double/2addr v0, p1

    :cond_0
    invoke-static {v0, v1}, Lcom/prineside/luaj/LuaValue;->valueOf(D)Lcom/prineside/luaj/LuaNumber;

    move-result-object p1

    return-object p1
.end method
