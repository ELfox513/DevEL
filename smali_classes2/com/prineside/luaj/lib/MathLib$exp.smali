.class public final Lcom/prineside/luaj/lib/MathLib$exp;
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
    name = "exp"
.end annotation


# instance fields
.field public x:Lcom/prineside/luaj/lib/MathLib;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/MathLib$UnaryOp;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/luaj/lib/MathLib;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/MathLib$UnaryOp;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/lib/MathLib$exp;->x:Lcom/prineside/luaj/lib/MathLib;

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 0

    invoke-super {p0, p1}, Lcom/prineside/luaj/lib/MathLib$UnaryOp;->call(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/luaj/lib/MathLib;

    iput-object p1, p0, Lcom/prineside/luaj/lib/MathLib$exp;->x:Lcom/prineside/luaj/lib/MathLib;

    return-void
.end method

.method public s(D)D
    .locals 3

    iget-object v0, p0, Lcom/prineside/luaj/lib/MathLib$exp;->x:Lcom/prineside/luaj/lib/MathLib;

    const-wide v1, 0x4005bf0a8b145769L    # Math.E

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/prineside/luaj/lib/MathLib;->dpow_lib(DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/lib/MathLib$exp;->x:Lcom/prineside/luaj/lib/MathLib;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
