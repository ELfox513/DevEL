.class public final Lcom/prineside/luaj/lib/MathLib$ldexp;
.super Lcom/prineside/luaj/lib/MathLib$BinaryOp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/lib/MathLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ldexp"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/MathLib$BinaryOp;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/prineside/luaj/lib/MathLib$BinaryOp;->call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public s(DD)D
    .locals 2

    double-to-long p3, p3

    const-wide/16 v0, 0x3ff

    add-long/2addr p3, v0

    const/16 v0, 0x34

    shl-long/2addr p3, v0

    invoke-static {p3, p4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p3

    mul-double p1, p1, p3

    return-wide p1
.end method
