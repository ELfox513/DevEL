.class public Lcom/prineside/luaj/lib/MathLib$random;
.super Lcom/prineside/luaj/lib/LibFunction;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/lib/MathLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "random"
.end annotation


# instance fields
.field public x:Lcom/badlogic/gdx/math/RandomXS128;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/prineside/luaj/lib/LibFunction;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/math/RandomXS128;

    const-wide/32 v1, 0x837555

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/math/RandomXS128;-><init>(J)V

    iput-object v0, p0, Lcom/prineside/luaj/lib/MathLib$random;->x:Lcom/badlogic/gdx/math/RandomXS128;

    return-void
.end method


# virtual methods
.method public call()Lcom/prineside/luaj/LuaValue;
    .locals 2

    iget-object v0, p0, Lcom/prineside/luaj/lib/MathLib$random;->x:Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/RandomXS128;->nextDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/prineside/luaj/LuaValue;->valueOf(D)Lcom/prineside/luaj/LuaNumber;

    move-result-object v0

    return-object v0
.end method

.method public call(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 2

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->checkint()I

    move-result p1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const-string v1, "interval is empty"

    invoke-static {v0, v1}, Lcom/prineside/luaj/LuaValue;->argerror(ILjava/lang/String;)Lcom/prineside/luaj/LuaValue;

    :cond_0
    iget-object v1, p0, Lcom/prineside/luaj/lib/MathLib$random;->x:Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result p1

    add-int/2addr p1, v0

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->valueOf(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object p1

    return-object p1
.end method

.method public call(Lcom/prineside/luaj/LuaValue;Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 2

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->checkint()I

    move-result p1

    invoke-virtual {p2}, Lcom/prineside/luaj/LuaValue;->checkint()I

    move-result p2

    if-ge p2, p1, :cond_0

    const/4 v0, 0x2

    const-string v1, "interval is empty"

    invoke-static {v0, v1}, Lcom/prineside/luaj/LuaValue;->argerror(ILjava/lang/String;)Lcom/prineside/luaj/LuaValue;

    :cond_0
    iget-object v0, p0, Lcom/prineside/luaj/lib/MathLib$random;->x:Lcom/badlogic/gdx/math/RandomXS128;

    add-int/lit8 p2, p2, 0x1

    sub-int/2addr p2, p1

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/RandomXS128;->nextInt(I)I

    move-result p2

    add-int/2addr p1, p2

    invoke-static {p1}, Lcom/prineside/luaj/LuaValue;->valueOf(I)Lcom/prineside/luaj/LuaInteger;

    move-result-object p1

    return-object p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/math/RandomXS128;

    iput-object p1, p0, Lcom/prineside/luaj/lib/MathLib$random;->x:Lcom/badlogic/gdx/math/RandomXS128;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/lib/MathLib$random;->x:Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
