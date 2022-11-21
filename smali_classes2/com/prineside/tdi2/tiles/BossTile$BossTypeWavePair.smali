.class public Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;
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
    name = "BossTypeWavePair"
.end annotation


# instance fields
.field public bossType:Lcom/prineside/tdi2/enums/BossType;

.field public wave:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILcom/prineside/tdi2/enums/BossType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;->wave:I

    iput-object p2, p0, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;->bossType:Lcom/prineside/tdi2/enums/BossType;

    return-void
.end method

.method public static fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;

    invoke-direct {v0}, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;-><init>()V

    const-string v1, "w"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;->wave:I

    :try_start_0
    const-string v1, "bt"

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/prineside/tdi2/enums/BossType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/BossType;

    move-result-object p0

    iput-object p0, v0, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;->bossType:Lcom/prineside/tdi2/enums/BossType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "BossTile"

    const-string v2, "failed to load boss type"

    invoke-static {v1, v2, p0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p0, Lcom/prineside/tdi2/enums/BossType;->BROOT:Lcom/prineside/tdi2/enums/BossType;

    iput-object p0, v0, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;->bossType:Lcom/prineside/tdi2/enums/BossType;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public cpy()Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;
    .locals 3

    new-instance v0, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;

    iget v1, p0, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;->wave:I

    iget-object v2, p0, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;->bossType:Lcom/prineside/tdi2/enums/BossType;

    invoke-direct {v0, v1, v2}, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;-><init>(ILcom/prineside/tdi2/enums/BossType;)V

    return-object v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;->wave:I

    const-class v0, Lcom/prineside/tdi2/enums/BossType;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/enums/BossType;

    iput-object p1, p0, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;->bossType:Lcom/prineside/tdi2/enums/BossType;

    return-void
.end method

.method public sameAs(Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;)Z
    .locals 3

    iget-object v0, p1, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;->bossType:Lcom/prineside/tdi2/enums/BossType;

    iget-object v1, p0, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;->bossType:Lcom/prineside/tdi2/enums/BossType;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget p1, p1, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;->wave:I

    iget v0, p0, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;->wave:I

    if-eq p1, v0, :cond_1

    return v2

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public toJson(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;->wave:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "w"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;->bossType:Lcom/prineside/tdi2/enums/BossType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "bt"

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;->wave:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/BossTile$BossTypeWavePair;->bossType:Lcom/prineside/tdi2/enums/BossType;

    const-class v1, Lcom/prineside/tdi2/enums/BossType;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
