.class public Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/esotericsoftware/kryo/KryoSerializable;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/tiles/BossTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BossWavesConfig"
.end annotation


# instance fields
.field public bossWavePairs:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;",
            ">;"
        }
    .end annotation
.end field

.field public cycleLength:I

.field public repeatCount:I

.field public startDelay:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    iput v0, p0, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->cycleLength:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->repeatCount:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->startDelay:I

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->bossWavePairs:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public constructor <init>(IIILcom/badlogic/gdx/utils/Array;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    iput v0, p0, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->cycleLength:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->repeatCount:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->startDelay:I

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->bossWavePairs:Lcom/badlogic/gdx/utils/Array;

    iput p1, p0, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->cycleLength:I

    iput p2, p0, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->repeatCount:I

    iput p3, p0, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->startDelay:I

    invoke-virtual {v0, p4}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/tiles/BossTile$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;-><init>()V

    return-void
.end method

.method public static fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;

    invoke-direct {v0}, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;-><init>()V

    const-string v1, "cl"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->cycleLength:I

    const-string v1, "rc"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->repeatCount:I

    const-string v1, "sd"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->startDelay:I

    :try_start_0
    const-string v1, "bwp"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->get(Ljava/lang/String;)Lcom/badlogic/gdx/utils/JsonValue;

    move-result-object p0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/JsonValue;->iterator()Lcom/badlogic/gdx/utils/JsonValue$JsonIterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/JsonValue;

    iget-object v2, v0, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->bossWavePairs:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v1}, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;->fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "BossTile"

    const-string v2, "failed to load boss wave pairs"

    invoke-static {v1, v2, p0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->cycleLength:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->repeatCount:I

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->startDelay:I

    const-class v0, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/Array;

    iput-object p1, p0, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->bossWavePairs:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public sameAs(Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;)Z
    .locals 4

    iget v0, p1, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->cycleLength:I

    iget v1, p0, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->cycleLength:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget v0, p1, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->repeatCount:I

    iget v1, p0, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->repeatCount:I

    if-eq v0, v1, :cond_1

    return v2

    :cond_1
    iget v0, p1, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->startDelay:I

    iget v1, p0, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->startDelay:I

    if-eq v0, v1, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->bossWavePairs:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    iget-object v1, p1, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->bossWavePairs:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eq v0, v1, :cond_3

    return v2

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->bossWavePairs:Lcom/badlogic/gdx/utils/Array;

    iget v3, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v3, :cond_5

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;

    aget-object v1, v1, v0

    iget-object v3, p1, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->bossWavePairs:Lcom/badlogic/gdx/utils/Array;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;->sameAs(Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    const/4 p1, 0x1

    return p1
.end method

.method public toJson(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->cycleLength:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "cl"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->repeatCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "rc"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->startDelay:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "sd"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "bwp"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Json;->writeArrayStart(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->bossWavePairs:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectStart()V

    iget-object v1, p0, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->bossWavePairs:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;->toJson(Lcom/badlogic/gdx/utils/Json;)V

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeObjectEnd()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Json;->writeArrayEnd()V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->cycleLength:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget v0, p0, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->repeatCount:I

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget v0, p0, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->startDelay:I

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/BossTile$BossWavesConfig;->bossWavePairs:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
