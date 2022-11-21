.class public final Lcom/prineside/luaj/lib/jse/JseMathLib;
.super Lcom/prineside/luaj/lib/MathLib;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/luaj/lib/jse/JseMathLib$acos;,
        Lcom/prineside/luaj/lib/jse/JseMathLib$asin;,
        Lcom/prineside/luaj/lib/jse/JseMathLib$atan2;,
        Lcom/prineside/luaj/lib/jse/JseMathLib$cosh;,
        Lcom/prineside/luaj/lib/jse/JseMathLib$exp;,
        Lcom/prineside/luaj/lib/jse/JseMathLib$log;,
        Lcom/prineside/luaj/lib/jse/JseMathLib$pow;,
        Lcom/prineside/luaj/lib/jse/JseMathLib$sinh;,
        Lcom/prineside/luaj/lib/jse/JseMathLib$tanh;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/MathLib;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/luaj/lib/MathLib;->call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    const-string p1, "math"

    invoke-virtual {p2, p1}, Lcom/prineside/luaj/LuaValue;->get(Ljava/lang/String;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    new-instance p2, Lcom/prineside/luaj/lib/jse/JseMathLib$acos;

    invoke-direct {p2}, Lcom/prineside/luaj/lib/jse/JseMathLib$acos;-><init>()V

    const-string v0, "acos"

    invoke-virtual {p1, v0, p2}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance p2, Lcom/prineside/luaj/lib/jse/JseMathLib$asin;

    invoke-direct {p2}, Lcom/prineside/luaj/lib/jse/JseMathLib$asin;-><init>()V

    const-string v0, "asin"

    invoke-virtual {p1, v0, p2}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance p2, Lcom/prineside/luaj/lib/jse/JseMathLib$atan2;

    invoke-direct {p2}, Lcom/prineside/luaj/lib/jse/JseMathLib$atan2;-><init>()V

    const-string v0, "atan"

    invoke-virtual {p1, v0, p2}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    const-string v0, "atan2"

    invoke-virtual {p1, v0, p2}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance p2, Lcom/prineside/luaj/lib/jse/JseMathLib$cosh;

    invoke-direct {p2}, Lcom/prineside/luaj/lib/jse/JseMathLib$cosh;-><init>()V

    const-string v0, "cosh"

    invoke-virtual {p1, v0, p2}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance p2, Lcom/prineside/luaj/lib/jse/JseMathLib$exp;

    invoke-direct {p2}, Lcom/prineside/luaj/lib/jse/JseMathLib$exp;-><init>()V

    const-string v0, "exp"

    invoke-virtual {p1, v0, p2}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance p2, Lcom/prineside/luaj/lib/jse/JseMathLib$log;

    invoke-direct {p2}, Lcom/prineside/luaj/lib/jse/JseMathLib$log;-><init>()V

    const-string v0, "log"

    invoke-virtual {p1, v0, p2}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance p2, Lcom/prineside/luaj/lib/jse/JseMathLib$pow;

    invoke-direct {p2}, Lcom/prineside/luaj/lib/jse/JseMathLib$pow;-><init>()V

    const-string v0, "pow"

    invoke-virtual {p1, v0, p2}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance p2, Lcom/prineside/luaj/lib/jse/JseMathLib$sinh;

    invoke-direct {p2}, Lcom/prineside/luaj/lib/jse/JseMathLib$sinh;-><init>()V

    const-string v0, "sinh"

    invoke-virtual {p1, v0, p2}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    new-instance p2, Lcom/prineside/luaj/lib/jse/JseMathLib$tanh;

    invoke-direct {p2}, Lcom/prineside/luaj/lib/jse/JseMathLib$tanh;-><init>()V

    const-string v0, "tanh"

    invoke-virtual {p1, v0, p2}, Lcom/prineside/luaj/LuaValue;->set(Ljava/lang/String;Lcom/prineside/luaj/LuaValue;)V

    return-object p1
.end method

.method public dpow_lib(DD)D
    .locals 0

    invoke-static {p1, p2, p3, p4}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide p1

    return-wide p1
.end method
