.class public Lcom/prineside/tdi2/EnemyGroup$SpawnEnemyGroup;
.super Lcom/prineside/tdi2/EnemyGroup;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/EnemyGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpawnEnemyGroup"
.end annotation


# instance fields
.field public waveGroup:Lcom/prineside/tdi2/EnemyGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/EnemyGroup;-><init>(Lcom/prineside/tdi2/EnemyGroup$1;)V

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/EnemyGroup;Lcom/prineside/tdi2/enums/EnemyType;FFIFFFFI)V
    .locals 10

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/prineside/tdi2/EnemyGroup;-><init>(Lcom/prineside/tdi2/enums/EnemyType;FFIFFFFI)V

    move-object v1, p1

    iput-object v1, v0, Lcom/prineside/tdi2/EnemyGroup$SpawnEnemyGroup;->waveGroup:Lcom/prineside/tdi2/EnemyGroup;

    return-void
.end method


# virtual methods
.method public addSpawnedCount(I)V
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/EnemyGroup;->a:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/EnemyGroup;->a:I

    iget-object v0, p0, Lcom/prineside/tdi2/EnemyGroup$SpawnEnemyGroup;->waveGroup:Lcom/prineside/tdi2/EnemyGroup;

    iget v1, v0, Lcom/prineside/tdi2/EnemyGroup;->a:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/prineside/tdi2/EnemyGroup;->a:I

    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/EnemyGroup;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    const-class v0, Lcom/prineside/tdi2/EnemyGroup;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/EnemyGroup;

    iput-object p1, p0, Lcom/prineside/tdi2/EnemyGroup$SpawnEnemyGroup;->waveGroup:Lcom/prineside/tdi2/EnemyGroup;

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/EnemyGroup;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-object v0, p0, Lcom/prineside/tdi2/EnemyGroup$SpawnEnemyGroup;->waveGroup:Lcom/prineside/tdi2/EnemyGroup;

    const-class v1, Lcom/prineside/tdi2/EnemyGroup;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
