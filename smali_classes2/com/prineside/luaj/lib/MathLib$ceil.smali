.class public final Lcom/prineside/luaj/lib/MathLib$ceil;
.super Lcom/prineside/luaj/lib/MathLib$UnaryOp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/lib/MathLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ceil"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/MathLib$UnaryOp;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 0

    invoke-super {p0, p1}, Lcom/prineside/luaj/lib/MathLib$UnaryOp;->call(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public s(D)D
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/StrictMath;->ceil(D)D

    move-result-wide p1

    return-wide p1
.end method
