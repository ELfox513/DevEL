.class public abstract Lcom/prineside/luaj/lib/MathLib$UnaryOp;
.super Lcom/prineside/luaj/lib/OneArgFunction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/lib/MathLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "UnaryOp"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/OneArgFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 2

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->checkdouble()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/prineside/luaj/lib/MathLib$UnaryOp;->s(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/prineside/luaj/LuaValue;->valueOf(D)Lcom/prineside/luaj/LuaNumber;

    move-result-object p1

    return-object p1
.end method

.method public abstract s(D)D
.end method
