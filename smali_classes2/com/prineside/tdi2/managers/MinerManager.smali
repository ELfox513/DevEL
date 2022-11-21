.class public Lcom/prineside/tdi2/managers/MinerManager;
.super Lcom/prineside/tdi2/Manager$ManagerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
    serializer = Lcom/prineside/tdi2/managers/MinerManager$Serializer;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/managers/MinerManager$Factories;,
        Lcom/prineside/tdi2/managers/MinerManager$Serializer;
    }
.end annotation


# instance fields
.field public final F:Lcom/prineside/tdi2/managers/MinerManager$Factories;

.field public final SHORT_MINER_ALIASES:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Lcom/prineside/tdi2/enums/MinerType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final a:[Lcom/prineside/tdi2/Miner$Factory;

.field public final b:[Lcom/prineside/tdi2/enums/StatisticsType;

.field public final d:[Lcom/prineside/tdi2/enums/StatisticsType;

.field public doubleSpeedParticleEffectPool:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

.field public highlightParticles:[Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

.field public final k:[Lcom/prineside/tdi2/enums/StatisticsType;

.field public minedResourceParticleEffectPool:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

.field public final p:[Lcom/prineside/tdi2/enums/GameValueType;

.field public final q:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 10

    invoke-direct {p0}, Lcom/prineside/tdi2/Manager$ManagerAdapter;-><init>()V

    sget-object v0, Lcom/prineside/tdi2/enums/MinerType;->values:[Lcom/prineside/tdi2/enums/MinerType;

    array-length v1, v0

    new-array v1, v1, [Lcom/prineside/tdi2/Miner$Factory;

    iput-object v1, p0, Lcom/prineside/tdi2/managers/MinerManager;->a:[Lcom/prineside/tdi2/Miner$Factory;

    new-instance v1, Lcom/prineside/tdi2/managers/MinerManager$Factories;

    invoke-direct {v1}, Lcom/prineside/tdi2/managers/MinerManager$Factories;-><init>()V

    iput-object v1, p0, Lcom/prineside/tdi2/managers/MinerManager;->F:Lcom/prineside/tdi2/managers/MinerManager$Factories;

    new-instance v1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v1, p0, Lcom/prineside/tdi2/managers/MinerManager;->SHORT_MINER_ALIASES:Lcom/badlogic/gdx/utils/ObjectMap;

    sget-object v2, Lcom/prineside/tdi2/enums/MinerType;->SCALAR:Lcom/prineside/tdi2/enums/MinerType;

    const-string v3, "S"

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/prineside/tdi2/enums/MinerType;->VECTOR:Lcom/prineside/tdi2/enums/MinerType;

    const-string v3, "V"

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/prineside/tdi2/enums/MinerType;->MATRIX:Lcom/prineside/tdi2/enums/MinerType;

    const-string v3, "M"

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/prineside/tdi2/enums/MinerType;->TENSOR:Lcom/prineside/tdi2/enums/MinerType;

    const-string v3, "T"

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/prineside/tdi2/enums/MinerType;->INFIAR:Lcom/prineside/tdi2/enums/MinerType;

    const-string v3, "I"

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    array-length v1, v0

    new-array v1, v1, [Lcom/prineside/tdi2/enums/StatisticsType;

    iput-object v1, p0, Lcom/prineside/tdi2/managers/MinerManager;->b:[Lcom/prineside/tdi2/enums/StatisticsType;

    array-length v1, v0

    new-array v1, v1, [Lcom/prineside/tdi2/enums/StatisticsType;

    iput-object v1, p0, Lcom/prineside/tdi2/managers/MinerManager;->d:[Lcom/prineside/tdi2/enums/StatisticsType;

    array-length v1, v0

    new-array v1, v1, [Lcom/prineside/tdi2/enums/StatisticsType;

    iput-object v1, p0, Lcom/prineside/tdi2/managers/MinerManager;->k:[Lcom/prineside/tdi2/enums/StatisticsType;

    array-length v1, v0

    new-array v1, v1, [Lcom/prineside/tdi2/enums/GameValueType;

    iput-object v1, p0, Lcom/prineside/tdi2/managers/MinerManager;->p:[Lcom/prineside/tdi2/enums/GameValueType;

    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/prineside/tdi2/managers/MinerManager;->q:[Ljava/lang/String;

    sget-object v1, Lcom/prineside/tdi2/enums/TowerType;->values:[Lcom/prineside/tdi2/enums/TowerType;

    array-length v1, v1

    new-array v1, v1, [Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    iput-object v1, p0, Lcom/prineside/tdi2/managers/MinerManager;->highlightParticles:[Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/prineside/tdi2/managers/MinerManager;->SHORT_MINER_ALIASES:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/prineside/tdi2/managers/MinerManager;->b:[Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MMS_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/prineside/tdi2/enums/StatisticsType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/StatisticsType;

    move-result-object v8

    aput-object v8, v6, v7

    iget-object v6, p0, Lcom/prineside/tdi2/managers/MinerManager;->d:[Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MB_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/prineside/tdi2/enums/StatisticsType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/StatisticsType;

    move-result-object v8

    aput-object v8, v6, v7

    iget-object v6, p0, Lcom/prineside/tdi2/managers/MinerManager;->k:[Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MU_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/prineside/tdi2/enums/StatisticsType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/StatisticsType;

    move-result-object v5

    aput-object v5, v6, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/MinerManager;->a:[Lcom/prineside/tdi2/Miner$Factory;

    sget-object v1, Lcom/prineside/tdi2/enums/MinerType;->SCALAR:Lcom/prineside/tdi2/enums/MinerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-object v3, p0, Lcom/prineside/tdi2/managers/MinerManager;->F:Lcom/prineside/tdi2/managers/MinerManager$Factories;

    new-instance v4, Lcom/prineside/tdi2/miners/ScalarMiner$ScalarMinerFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/miners/ScalarMiner$ScalarMinerFactory;-><init>()V

    iput-object v4, v3, Lcom/prineside/tdi2/managers/MinerManager$Factories;->SCALAR:Lcom/prineside/tdi2/miners/ScalarMiner$ScalarMinerFactory;

    aput-object v4, v0, v1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/MinerManager;->a:[Lcom/prineside/tdi2/Miner$Factory;

    sget-object v1, Lcom/prineside/tdi2/enums/MinerType;->VECTOR:Lcom/prineside/tdi2/enums/MinerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-object v3, p0, Lcom/prineside/tdi2/managers/MinerManager;->F:Lcom/prineside/tdi2/managers/MinerManager$Factories;

    new-instance v4, Lcom/prineside/tdi2/miners/VectorMiner$VectorMinerFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/miners/VectorMiner$VectorMinerFactory;-><init>()V

    iput-object v4, v3, Lcom/prineside/tdi2/managers/MinerManager$Factories;->VECTOR:Lcom/prineside/tdi2/miners/VectorMiner$VectorMinerFactory;

    aput-object v4, v0, v1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/MinerManager;->a:[Lcom/prineside/tdi2/Miner$Factory;

    sget-object v1, Lcom/prineside/tdi2/enums/MinerType;->MATRIX:Lcom/prineside/tdi2/enums/MinerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-object v3, p0, Lcom/prineside/tdi2/managers/MinerManager;->F:Lcom/prineside/tdi2/managers/MinerManager$Factories;

    new-instance v4, Lcom/prineside/tdi2/miners/MatrixMiner$MatrixMinerFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/miners/MatrixMiner$MatrixMinerFactory;-><init>()V

    iput-object v4, v3, Lcom/prineside/tdi2/managers/MinerManager$Factories;->MATRIX:Lcom/prineside/tdi2/miners/MatrixMiner$MatrixMinerFactory;

    aput-object v4, v0, v1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/MinerManager;->a:[Lcom/prineside/tdi2/Miner$Factory;

    sget-object v1, Lcom/prineside/tdi2/enums/MinerType;->TENSOR:Lcom/prineside/tdi2/enums/MinerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-object v3, p0, Lcom/prineside/tdi2/managers/MinerManager;->F:Lcom/prineside/tdi2/managers/MinerManager$Factories;

    new-instance v4, Lcom/prineside/tdi2/miners/TensorMiner$TensorMinerFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/miners/TensorMiner$TensorMinerFactory;-><init>()V

    iput-object v4, v3, Lcom/prineside/tdi2/managers/MinerManager$Factories;->TENSOR:Lcom/prineside/tdi2/miners/TensorMiner$TensorMinerFactory;

    aput-object v4, v0, v1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/MinerManager;->a:[Lcom/prineside/tdi2/Miner$Factory;

    sget-object v1, Lcom/prineside/tdi2/enums/MinerType;->INFIAR:Lcom/prineside/tdi2/enums/MinerType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iget-object v3, p0, Lcom/prineside/tdi2/managers/MinerManager;->F:Lcom/prineside/tdi2/managers/MinerManager$Factories;

    new-instance v4, Lcom/prineside/tdi2/miners/InfiarMiner$InfiarMinerFactory;

    invoke-direct {v4}, Lcom/prineside/tdi2/miners/InfiarMiner$InfiarMinerFactory;-><init>()V

    iput-object v4, v3, Lcom/prineside/tdi2/managers/MinerManager$Factories;->INFIAR:Lcom/prineside/tdi2/miners/InfiarMiner$InfiarMinerFactory;

    aput-object v4, v0, v1

    sget-object v0, Lcom/prineside/tdi2/enums/MinerType;->values:[Lcom/prineside/tdi2/enums/MinerType;

    array-length v1, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/prineside/tdi2/managers/MinerManager;->a:[Lcom/prineside/tdi2/Miner$Factory;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-object v4, v5, v4

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not all miner factories were created"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v0, Lcom/prineside/tdi2/enums/MinerType;->values:[Lcom/prineside/tdi2/enums/MinerType;

    array-length v1, v0

    :goto_2
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/prineside/tdi2/managers/MinerManager;->q:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "miner_name_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    iget-object v4, p0, Lcom/prineside/tdi2/managers/MinerManager;->p:[Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MINER_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_INSTALL_DURATION"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/prineside/tdi2/enums/GameValueType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v3

    aput-object v3, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    return-void
.end method

.method public fromJson(Lcom/badlogic/gdx/utils/JsonValue;)Lcom/prineside/tdi2/Miner;
    .locals 1

    const-string v0, "type"

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/JsonValue;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/prineside/tdi2/enums/MinerType;->valueOf(Ljava/lang/String;)Lcom/prineside/tdi2/enums/MinerType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/managers/MinerManager;->getFactory(Lcom/prineside/tdi2/enums/MinerType;)Lcom/prineside/tdi2/Miner$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Miner$Factory;->create()Lcom/prineside/tdi2/Miner;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/Miner;->loadFromJson(Lcom/badlogic/gdx/utils/JsonValue;)V

    return-object v0
.end method

.method public getBuiltStatisticType(Lcom/prineside/tdi2/enums/MinerType;)Lcom/prineside/tdi2/enums/StatisticsType;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/MinerManager;->d:[Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getFactory(Lcom/prineside/tdi2/enums/MinerType;)Lcom/prineside/tdi2/Miner$Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/prineside/tdi2/enums/MinerType;",
            ")",
            "Lcom/prineside/tdi2/Miner$Factory<",
            "+",
            "Lcom/prineside/tdi2/Miner;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/prineside/tdi2/managers/MinerManager;->a:[Lcom/prineside/tdi2/Miner$Factory;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getInstallDurationGameValueType(Lcom/prineside/tdi2/enums/MinerType;)Lcom/prineside/tdi2/enums/GameValueType;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/MinerManager;->p:[Lcom/prineside/tdi2/enums/GameValueType;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getMoneySpentStatisticType(Lcom/prineside/tdi2/enums/MinerType;)Lcom/prineside/tdi2/enums/StatisticsType;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/MinerManager;->b:[Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getTitle(Lcom/prineside/tdi2/enums/MinerType;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/MinerManager;->q:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getUpgradedStatisticType(Lcom/prineside/tdi2/enums/MinerType;)Lcom/prineside/tdi2/enums/StatisticsType;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/MinerManager;->k:[Lcom/prineside/tdi2/enums/StatisticsType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public isMinerOpened(Lcom/prineside/tdi2/enums/MinerType;Lcom/prineside/tdi2/GameValueProvider;)Z
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/managers/MinerManager$1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_8

    const/4 v2, 0x2

    if-eq p1, v2, :cond_6

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    return v0

    :cond_0
    sget-object p1, Lcom/prineside/tdi2/enums/GameValueType;->MINER_COUNT_INFIAR:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-interface {p2, p1}, Lcom/prineside/tdi2/GameValueProvider;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result p1

    if-lez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    sget-object p1, Lcom/prineside/tdi2/enums/GameValueType;->MINER_COUNT_TENSOR:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-interface {p2, p1}, Lcom/prineside/tdi2/GameValueProvider;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result p1

    if-lez p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0

    :cond_4
    sget-object p1, Lcom/prineside/tdi2/enums/GameValueType;->MINER_COUNT_MATRIX:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-interface {p2, p1}, Lcom/prineside/tdi2/GameValueProvider;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result p1

    if-lez p1, :cond_5

    const/4 v0, 0x1

    :cond_5
    return v0

    :cond_6
    sget-object p1, Lcom/prineside/tdi2/enums/GameValueType;->MINER_COUNT_VECTOR:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-interface {p2, p1}, Lcom/prineside/tdi2/GameValueProvider;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result p1

    if-lez p1, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0

    :cond_8
    sget-object p1, Lcom/prineside/tdi2/enums/GameValueType;->MINER_COUNT_SCALAR:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-interface {p2, p1}, Lcom/prineside/tdi2/GameValueProvider;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result p1

    if-lez p1, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0
.end method

.method public minersAndEnergyAvailable()Z
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->MINER_COUNT_SCALAR:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setup()V
    .locals 13

    iget-object v0, p0, Lcom/prineside/tdi2/managers/MinerManager;->a:[Lcom/prineside/tdi2/Miner$Factory;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/prineside/tdi2/Miner$Factory;->setup()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;-><init>()V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v3, "particles/mined-resource.prt"

    invoke-interface {v1, v3}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "particle-triangle"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;->getAtlas()Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->load(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setEmittersCleanUpBlendFunction(Z)V

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    const/16 v3, 0x8

    const/16 v5, 0x80

    invoke-direct {v1, v0, v3, v5}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;-><init>(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;II)V

    iput-object v1, p0, Lcom/prineside/tdi2/managers/MinerManager;->minedResourceParticleEffectPool:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;-><init>()V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v6, "particles/miner-double-speed.prt"

    invoke-interface {v1, v6}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v6, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v4

    invoke-virtual {v4}, Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;->getAtlas()Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->load(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setEmittersCleanUpBlendFunction(Z)V

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    invoke-direct {v1, v0, v3, v5}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;-><init>(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;II)V

    iput-object v1, p0, Lcom/prineside/tdi2/managers/MinerManager;->doubleSpeedParticleEffectPool:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    sget-object v0, Lcom/prineside/tdi2/enums/MinerType;->values:[Lcom/prineside/tdi2/enums/MinerType;

    array-length v1, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_1

    aget-object v6, v0, v4

    new-instance v7, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-direct {v7}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;-><init>()V

    sget-object v8, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v9, "particles/building-highlight.prt"

    invoke-interface {v8, v9}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v8

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v10, "tower-basic-base"

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v9

    invoke-virtual {v9}, Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;->getAtlas()Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->load(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V

    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setEmittersCleanUpBlendFunction(Z)V

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object v8

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    new-instance v9, Lcom/badlogic/gdx/utils/Array;

    const/4 v10, 0x1

    new-array v10, v10, [Lcom/badlogic/gdx/graphics/g2d/Sprite;

    new-instance v11, Lcom/badlogic/gdx/graphics/g2d/Sprite;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->minerManager:Lcom/prineside/tdi2/managers/MinerManager;

    invoke-virtual {v12, v6}, Lcom/prineside/tdi2/managers/MinerManager;->getFactory(Lcom/prineside/tdi2/enums/MinerType;)Lcom/prineside/tdi2/Miner$Factory;

    move-result-object v12

    invoke-virtual {v12}, Lcom/prineside/tdi2/Miner$Factory;->getTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/badlogic/gdx/graphics/g2d/Sprite;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    aput-object v11, v10, v2

    invoke-direct {v9, v10}, Lcom/badlogic/gdx/utils/Array;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->setSprites(Lcom/badlogic/gdx/utils/Array;)V

    iget-object v8, p0, Lcom/prineside/tdi2/managers/MinerManager;->highlightParticles:[Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    new-instance v9, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    invoke-direct {v9, v7, v3, v5}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;-><init>(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;II)V

    aput-object v9, v8, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public test()V
    .locals 0

    return-void
.end method
