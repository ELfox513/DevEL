.class public Lcom/prineside/tdi2/systems/GameValueSystem;
.super Lcom/prineside/tdi2/GameSystem;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/GameValueProvider;


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/systems/GameValueSystem$GameValueSystemListener;,
        Lcom/prineside/tdi2/systems/GameValueSystem$_MapSystemListener;
    }
.end annotation


# static fields
.field public static q:[D


# instance fields
.field public a:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

.field public b:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

.field public d:I

.field public k:F

.field public listeners:Lcom/prineside/tdi2/ListenerGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/prineside/tdi2/ListenerGroup<",
            "Lcom/prineside/tdi2/systems/GameValueSystem$GameValueSystemListener;",
            ">;"
        }
    .end annotation
.end field

.field public p:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/GameValueConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/GameValueType;->values:[Lcom/prineside/tdi2/enums/GameValueType;

    array-length v0, v0

    new-array v0, v0, [D

    sput-object v0, Lcom/prineside/tdi2/systems/GameValueSystem;->q:[D

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/prineside/tdi2/GameSystem;-><init>()V

    new-instance v0, Lcom/prineside/tdi2/ListenerGroup;

    const-class v1, Lcom/prineside/tdi2/systems/GameValueSystem$GameValueSystemListener;

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    sget v0, Lcom/prineside/tdi2/Config;->GAME_STATE_UPDATE_RATE:I

    iput v0, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->d:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    iput v1, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->k:F

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/GameValueConfig;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v2, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->p:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method


# virtual methods
.method public addCustomGameValue(Lcom/prineside/tdi2/GameValueConfig;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->p:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->p:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getBooleanValue(Lcom/prineside/tdi2/enums/GameValueType;)Z
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->b:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getBooleanValue(Lcom/prineside/tdi2/enums/GameValueType;)Z

    move-result p1

    return p1
.end method

.method public getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->b:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result p1

    return p1
.end method

.method public getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;Lcom/prineside/tdi2/enums/GameValueType;)F
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->b:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    invoke-virtual {v0, p1, p2}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result p1

    return p1
.end method

.method public getGlobalSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->a:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    return-object v0
.end method

.method public getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->b:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result p1

    return p1
.end method

.method public getIntValue(Lcom/prineside/tdi2/enums/GameValueType;Lcom/prineside/tdi2/enums/GameValueType;)I
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->b:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    invoke-virtual {v0, p1, p2}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result p1

    return p1
.end method

.method public getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->b:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;Lcom/prineside/tdi2/enums/GameValueType;)D
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->b:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    invoke-virtual {v0, p1, p2}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide p1

    return-wide p1
.end method

.method public getPercentValueAsMultiplier([Lcom/prineside/tdi2/enums/GameValueType;)D
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->b:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getPercentValueAsMultiplier([Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->b:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    return-object v0
.end method

.method public getSystemName()Ljava/lang/String;
    .locals 1

    const-string v0, "GameValue"

    return-object v0
.end method

.method public getTickRate()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->d:I

    return v0
.end method

.method public getTickRateDeltaTime()F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->k:F

    return v0
.end method

.method public getValue(Lcom/prineside/tdi2/enums/GameValueType;)D
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->b:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getValue(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v0

    return-wide v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 2

    const-class v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Registrable;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    const-class v1, Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/ListenerGroup;

    iput-object v1, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    iput-object v1, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->a:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->b:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->d:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->k:F

    const-class v0, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/Array;

    iput-object p1, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->p:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public recalculate()V
    .locals 14

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->a:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->b:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->values:[D

    sget-object v1, Lcom/prineside/tdi2/systems/GameValueSystem;->q:[D

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->b:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->effects:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_0

    sget-object v2, Lcom/prineside/tdi2/managers/GameValueManager;->gameValueEffectPool:Lcom/badlogic/gdx/utils/Pool;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    aget-object v1, v1, v0

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->a:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->values:[D

    iget-object v1, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->b:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->values:[D

    array-length v2, v1

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->a:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->effects:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/prineside/tdi2/managers/GameValueManager;->gameValueEffectPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    iget-object v2, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->a:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->effects:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->from(Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;)V

    iget-object v2, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->b:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->effects:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Map;->targetTile:Lcom/prineside/tdi2/tiles/TargetTile;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/prineside/tdi2/tiles/TargetTile;->getGameValues()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    const/4 v1, 0x0

    :goto_2
    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_8

    iget-object v2, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/GameValueConfig;

    aget-object v2, v2, v1

    iget-boolean v4, v2, Lcom/prineside/tdi2/GameValueConfig;->allowBonuses:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->b:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->effects:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v4, 0x0

    :goto_3
    iget-object v5, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->b:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->effects:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v6, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v6, :cond_3

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    iget-object v6, v5, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->type:Lcom/prineside/tdi2/enums/GameValueType;

    iget-object v7, v2, Lcom/prineside/tdi2/GameValueConfig;->type:Lcom/prineside/tdi2/enums/GameValueType;

    if-ne v6, v7, :cond_2

    iget-object v6, v5, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->source:Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;

    sget-object v7, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;->STOCK:Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;

    if-eq v6, v7, :cond_2

    iget-object v6, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->b:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->effects:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeIndex(I)Ljava/lang/Object;

    sget-object v6, Lcom/prineside/tdi2/managers/GameValueManager;->gameValueEffectPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    iget-object v4, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->b:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->values:[D

    iget-object v5, v2, Lcom/prineside/tdi2/GameValueConfig;->type:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    iget-object v7, v2, Lcom/prineside/tdi2/GameValueConfig;->type:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/GameValueManager;->getStockValueConfig(Lcom/prineside/tdi2/enums/GameValueType;)Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;

    move-result-object v6

    iget-wide v6, v6, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->stockValue:D

    aput-wide v6, v4, v5

    :cond_4
    iget-boolean v4, v2, Lcom/prineside/tdi2/GameValueConfig;->overwrite:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->b:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->values:[D

    iget-object v5, v2, Lcom/prineside/tdi2/GameValueConfig;->type:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget-wide v6, v4, v5

    iget-wide v8, v2, Lcom/prineside/tdi2/GameValueConfig;->value:D

    add-double/2addr v6, v8

    aput-wide v6, v4, v5

    sget-object v4, Lcom/prineside/tdi2/managers/GameValueManager;->gameValueEffectPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    iget-wide v5, v2, Lcom/prineside/tdi2/GameValueConfig;->value:D

    iput-wide v5, v4, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->delta:D

    iget-object v2, v2, Lcom/prineside/tdi2/GameValueConfig;->type:Lcom/prineside/tdi2/enums/GameValueType;

    iput-object v2, v4, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->type:Lcom/prineside/tdi2/enums/GameValueType;

    sget-object v2, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;->BASE_TILE:Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;

    iput-object v2, v4, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->source:Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;

    iget-object v2, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->b:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->effects:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_5

    :cond_5
    iget-object v4, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->b:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->effects:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v4, 0x0

    :goto_4
    iget-object v5, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->b:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->effects:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v6, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v6, :cond_7

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    iget-object v6, v5, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->type:Lcom/prineside/tdi2/enums/GameValueType;

    iget-object v7, v2, Lcom/prineside/tdi2/GameValueConfig;->type:Lcom/prineside/tdi2/enums/GameValueType;

    if-ne v6, v7, :cond_6

    iget-object v6, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->b:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->effects:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeIndex(I)Ljava/lang/Object;

    sget-object v6, Lcom/prineside/tdi2/managers/GameValueManager;->gameValueEffectPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    sget-object v4, Lcom/prineside/tdi2/managers/GameValueManager;->gameValueEffectPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    iget-object v5, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->b:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->values:[D

    iget-object v6, v2, Lcom/prineside/tdi2/GameValueConfig;->type:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-wide v6, v5, v6

    neg-double v5, v6

    iget-wide v7, v2, Lcom/prineside/tdi2/GameValueConfig;->value:D

    add-double/2addr v5, v7

    iput-wide v5, v4, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->delta:D

    iget-object v5, v2, Lcom/prineside/tdi2/GameValueConfig;->type:Lcom/prineside/tdi2/enums/GameValueType;

    iput-object v5, v4, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->type:Lcom/prineside/tdi2/enums/GameValueType;

    sget-object v5, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;->BASE_TILE:Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;

    iput-object v5, v4, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->source:Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;

    iget-object v5, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->b:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->effects:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->b:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->values:[D

    iget-object v5, v2, Lcom/prineside/tdi2/GameValueConfig;->type:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    iget-wide v6, v2, Lcom/prineside/tdi2/GameValueConfig;->value:D

    aput-wide v6, v4, v5

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_8
    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Map;->bossTile:Lcom/prineside/tdi2/tiles/BossTile;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/prineside/tdi2/tiles/BossTile;->getGameValues()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    const/4 v1, 0x0

    :goto_6
    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_9

    iget-object v2, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/GameValueConfig;

    aget-object v2, v2, v1

    iget-object v4, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->b:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->values:[D

    iget-object v5, v2, Lcom/prineside/tdi2/GameValueConfig;->type:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget-wide v6, v4, v5

    iget-wide v8, v2, Lcom/prineside/tdi2/GameValueConfig;->value:D

    add-double/2addr v6, v8

    aput-wide v6, v4, v5

    sget-object v4, Lcom/prineside/tdi2/managers/GameValueManager;->gameValueEffectPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    iget-wide v5, v2, Lcom/prineside/tdi2/GameValueConfig;->value:D

    iput-wide v5, v4, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->delta:D

    iget-object v2, v2, Lcom/prineside/tdi2/GameValueConfig;->type:Lcom/prineside/tdi2/enums/GameValueType;

    iput-object v2, v4, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->type:Lcom/prineside/tdi2/enums/GameValueType;

    sget-object v2, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;->BOSS_TILE:Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;

    iput-object v2, v4, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->source:Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;

    iget-object v2, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->b:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->effects:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_9
    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Map;->tilesArray:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x0

    :goto_7
    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_e

    iget-object v2, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/Tile;

    aget-object v2, v2, v1

    instance-of v4, v2, Lcom/prineside/tdi2/tiles/GameValueTile;

    if-eqz v4, :cond_d

    check-cast v2, Lcom/prineside/tdi2/tiles/GameValueTile;

    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/GameValueTile;->isOverwrite()Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->b:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->values:[D

    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/GameValueTile;->getGameValueType()Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget-wide v6, v4, v5

    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/GameValueTile;->getDelta()D

    move-result-wide v8

    add-double/2addr v6, v8

    aput-wide v6, v4, v5

    sget-object v4, Lcom/prineside/tdi2/managers/GameValueManager;->gameValueEffectPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/GameValueTile;->getDelta()D

    move-result-wide v5

    iput-wide v5, v4, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->delta:D

    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/GameValueTile;->getGameValueType()Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v2

    iput-object v2, v4, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->type:Lcom/prineside/tdi2/enums/GameValueType;

    sget-object v2, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;->GV_TILE:Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;

    iput-object v2, v4, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->source:Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;

    iget-object v2, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->b:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->effects:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_9

    :cond_a
    iget-object v4, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->b:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->effects:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v4, 0x0

    :goto_8
    iget-object v5, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->b:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->effects:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v6, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v6, :cond_c

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    iget-object v6, v5, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->type:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/GameValueTile;->getGameValueType()Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v7

    if-ne v6, v7, :cond_b

    iget-object v6, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->b:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->effects:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeIndex(I)Ljava/lang/Object;

    sget-object v6, Lcom/prineside/tdi2/managers/GameValueManager;->gameValueEffectPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_c
    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    sget-object v4, Lcom/prineside/tdi2/managers/GameValueManager;->gameValueEffectPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    iget-object v5, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->b:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->values:[D

    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/GameValueTile;->getGameValueType()Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-wide v6, v5, v6

    neg-double v5, v6

    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/GameValueTile;->getDelta()D

    move-result-wide v7

    add-double/2addr v5, v7

    iput-wide v5, v4, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->delta:D

    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/GameValueTile;->getGameValueType()Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v5

    iput-object v5, v4, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->type:Lcom/prineside/tdi2/enums/GameValueType;

    sget-object v5, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;->GV_TILE:Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;

    iput-object v5, v4, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->source:Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;

    iget-object v5, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->b:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->effects:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->b:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->values:[D

    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/GameValueTile;->getGameValueType()Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/GameValueTile;->getDelta()D

    move-result-wide v6

    aput-wide v6, v4, v5

    :cond_d
    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_7

    :cond_e
    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Map;->coreTiles:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    :goto_a
    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_11

    iget-object v2, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/tiles/CoreTile;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgrades()Lcom/badlogic/gdx/utils/Array;

    move-result-object v4

    const/4 v5, 0x0

    :goto_b
    iget v6, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v6, :cond_10

    iget-object v6, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v6, [Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

    aget-object v6, v6, v5

    invoke-virtual {v2, v5}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgradeInstallLevel(I)I

    move-result v7

    if-eqz v6, :cond_f

    iget-boolean v8, v6, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->isAction:Z

    if-nez v8, :cond_f

    if-eqz v7, :cond_f

    iget-object v8, v6, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->upgradeLevels:Lcom/badlogic/gdx/utils/Array;

    iget-object v8, v8, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v8, [Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v8, v7

    iget-object v8, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->b:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    iget-object v8, v8, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->values:[D

    invoke-virtual {v6}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->getGameValueType()Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget-wide v10, v8, v9

    iget v12, v7, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->delta:F

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v10, v12

    aput-wide v10, v8, v9

    sget-object v8, Lcom/prineside/tdi2/managers/GameValueManager;->gameValueEffectPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    iget v7, v7, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->delta:F

    float-to-double v9, v7

    iput-wide v9, v8, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->delta:D

    invoke-virtual {v6}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->getGameValueType()Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v6

    iput-object v6, v8, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->type:Lcom/prineside/tdi2/enums/GameValueType;

    sget-object v6, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;->CORE_TILE:Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;

    iput-object v6, v8, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->source:Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;

    iget-object v6, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->b:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->effects:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_11
    const/4 v0, 0x0

    :goto_c
    iget-object v1, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->p:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_15

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/GameValueConfig;

    aget-object v1, v1, v0

    iget-boolean v2, v1, Lcom/prineside/tdi2/GameValueConfig;->overwrite:Z

    if-nez v2, :cond_12

    iget-object v2, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->b:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->values:[D

    iget-object v4, v1, Lcom/prineside/tdi2/GameValueConfig;->type:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-wide v5, v2, v4

    iget-wide v7, v1, Lcom/prineside/tdi2/GameValueConfig;->value:D

    add-double/2addr v5, v7

    aput-wide v5, v2, v4

    sget-object v2, Lcom/prineside/tdi2/managers/GameValueManager;->gameValueEffectPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    iget-wide v4, v1, Lcom/prineside/tdi2/GameValueConfig;->value:D

    iput-wide v4, v2, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->delta:D

    iget-object v1, v1, Lcom/prineside/tdi2/GameValueConfig;->type:Lcom/prineside/tdi2/enums/GameValueType;

    iput-object v1, v2, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->type:Lcom/prineside/tdi2/enums/GameValueType;

    sget-object v1, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;->CUSTOM:Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;

    iput-object v1, v2, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->source:Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->b:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->effects:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_e

    :cond_12
    iget-object v2, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->b:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->effects:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v2, 0x0

    :goto_d
    iget-object v4, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->b:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->effects:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v5, :cond_14

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    iget-object v5, v4, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->type:Lcom/prineside/tdi2/enums/GameValueType;

    iget-object v6, v1, Lcom/prineside/tdi2/GameValueConfig;->type:Lcom/prineside/tdi2/enums/GameValueType;

    if-ne v5, v6, :cond_13

    iget-object v5, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->b:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->effects:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeIndex(I)Ljava/lang/Object;

    sget-object v5, Lcom/prineside/tdi2/managers/GameValueManager;->gameValueEffectPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_14
    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    sget-object v2, Lcom/prineside/tdi2/managers/GameValueManager;->gameValueEffectPool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;

    iget-object v4, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->b:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->values:[D

    iget-object v5, v1, Lcom/prineside/tdi2/GameValueConfig;->type:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget-wide v5, v4, v5

    neg-double v4, v5

    iget-wide v6, v1, Lcom/prineside/tdi2/GameValueConfig;->value:D

    add-double/2addr v4, v6

    iput-wide v4, v2, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->delta:D

    iget-object v4, v1, Lcom/prineside/tdi2/GameValueConfig;->type:Lcom/prineside/tdi2/enums/GameValueType;

    iput-object v4, v2, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->type:Lcom/prineside/tdi2/enums/GameValueType;

    sget-object v4, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;->CUSTOM:Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;

    iput-object v4, v2, Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect;->source:Lcom/prineside/tdi2/managers/GameValueManager$GameValueEffect$Source;

    iget-object v4, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->b:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->effects:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->b:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->values:[D

    iget-object v4, v1, Lcom/prineside/tdi2/GameValueConfig;->type:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    iget-wide v5, v1, Lcom/prineside/tdi2/GameValueConfig;->value:D

    aput-wide v5, v2, v4

    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_c

    :cond_15
    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->b:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->values:[D

    array-length v1, v0

    const/4 v2, 0x1

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v1, :cond_16

    aget-wide v5, v0, v4

    mul-int/lit8 v2, v2, 0x1f

    const-wide v7, 0x40c3880000000000L    # 10000.0

    mul-double v5, v5, v7

    double-to-int v5, v5

    add-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_16
    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->b:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    iget v1, v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->hash:I

    if-eq v1, v2, :cond_1a

    iput v2, v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->hash:I

    sget-object v0, Lcom/prineside/tdi2/enums/GameValueType;->GAME_TICK_RATE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result v0

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->d:I

    const/16 v1, 0xf

    if-ge v0, v1, :cond_17

    iput v1, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->d:I

    :cond_17
    iget v0, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->d:I

    const/16 v1, 0x78

    if-le v0, v1, :cond_18

    iput v1, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->d:I

    :cond_18
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->d:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->k:F

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    :goto_10
    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v0

    if-ge v3, v0, :cond_19

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0, v3}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/systems/GameValueSystem$GameValueSystemListener;

    sget-object v1, Lcom/prineside/tdi2/systems/GameValueSystem;->q:[D

    invoke-interface {v0, v1}, Lcom/prineside/tdi2/systems/GameValueSystem$GameValueSystemListener;->recalculated([D)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_19
    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    :cond_1a
    return-void

    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "System can be used only when all systems are set up"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_12

    :goto_11
    throw v0

    :goto_12
    goto :goto_11
.end method

.method public removeCustomGameValue(Lcom/prineside/tdi2/GameValueConfig;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->p:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    return-void
.end method

.method public setGlobalSnapshot(Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setGlobalSnapshot (Starting money: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->STARTING_MONEY:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameValueSystem"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->a:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    return-void
.end method

.method public setup()V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    new-instance v2, Lcom/prineside/tdi2/systems/GameValueSystem$_MapSystemListener;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/prineside/tdi2/systems/GameValueSystem$_MapSystemListener;-><init>(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/systems/GameValueSystem$1;)V

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->a:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    invoke-direct {v0}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->b:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/GameValueSystem;->recalculate()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "globalSnapshot not specified before system setup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Registrable;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->a:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->b:Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->d:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget v0, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->k:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/GameValueSystem;->p:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
