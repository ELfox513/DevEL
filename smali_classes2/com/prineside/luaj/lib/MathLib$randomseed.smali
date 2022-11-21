.class public Lcom/prineside/luaj/lib/MathLib$randomseed;
.super Lcom/prineside/luaj/lib/OneArgFunction;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/luaj/lib/MathLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "randomseed"
.end annotation


# instance fields
.field public x:Lcom/prineside/luaj/lib/MathLib$random;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/OneArgFunction;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/luaj/lib/MathLib$random;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/luaj/lib/OneArgFunction;-><init>()V

    iput-object p1, p0, Lcom/prineside/luaj/lib/MathLib$randomseed;->x:Lcom/prineside/luaj/lib/MathLib$random;

    return-void
.end method


# virtual methods
.method public call(Lcom/prineside/luaj/LuaValue;)Lcom/prineside/luaj/LuaValue;
    .locals 3

    invoke-virtual {p1}, Lcom/prineside/luaj/LuaValue;->checklong()J

    move-result-wide v0

    iget-object p1, p0, Lcom/prineside/luaj/lib/MathLib$randomseed;->x:Lcom/prineside/luaj/lib/MathLib$random;

    new-instance v2, Lcom/badlogic/gdx/math/RandomXS128;

    invoke-direct {v2, v0, v1}, Lcom/badlogic/gdx/math/RandomXS128;-><init>(J)V

    iput-object v2, p1, Lcom/prineside/luaj/lib/MathLib$random;->x:Lcom/badlogic/gdx/math/RandomXS128;

    sget-object p1, Lcom/prineside/luaj/LuaValue;->NONE:Lcom/prineside/luaj/LuaValue;

    return-object p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/prineside/luaj/lib/MathLib$random;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/luaj/lib/MathLib$random;

    iput-object p1, p0, Lcom/prineside/luaj/lib/MathLib$randomseed;->x:Lcom/prineside/luaj/lib/MathLib$random;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/luaj/lib/MathLib$randomseed;->x:Lcom/prineside/luaj/lib/MathLib$random;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
