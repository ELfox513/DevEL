.class public final Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/MapSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AabbEnemyEntry"
.end annotation


# static fields
.field public static final a:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public enemyReference:Lcom/prineside/tdi2/Enemy$EnemyReference;

.field public position:Lcom/badlogic/gdx/math/Vector2;

.field public size:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry$1;

    invoke-direct {v0}, Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry$1;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;->a:Lcom/badlogic/gdx/utils/Pool;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/badlogic/gdx/utils/Pool;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;->a:Lcom/badlogic/gdx/utils/Pool;

    return-object v0
.end method


# virtual methods
.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const-class v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;->size:F

    const-class v0, Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/Enemy$EnemyReference;

    iput-object p1, p0, Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;->enemyReference:Lcom/prineside/tdi2/Enemy$EnemyReference;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;->position:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;->size:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;->enemyReference:Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
