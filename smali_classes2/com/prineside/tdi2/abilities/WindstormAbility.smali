.class public Lcom/prineside/tdi2/abilities/WindstormAbility;
.super Lcom/prineside/tdi2/Ability;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/abilities/WindstormAbility$WindstormAbilityFactory;
    }
.end annotation


# static fields
.field public static final u:[I

.field public static final v:[[I


# instance fields
.field public b:I

.field public d:I

.field public k:F

.field public p:F

.field public q:F

.field public r:F

.field public s:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public t:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/Enemy$EnemyReference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xb

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/prineside/tdi2/abilities/WindstormAbility;->u:[I

    const/4 v1, 0x5

    new-array v1, v1, [[I

    new-array v2, v0, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [I

    fill-array-data v2, :array_2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-array v2, v0, [I

    fill-array-data v2, :array_3

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-array v2, v0, [I

    fill-array-data v2, :array_4

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    const/4 v2, 0x4

    aput-object v0, v1, v2

    sput-object v1, Lcom/prineside/tdi2/abilities/WindstormAbility;->v:[[I

    return-void

    nop

    :array_0
    .array-data 4
        0x64
        0x7d
        0x96
        0xaf
        0xfa
        0x12c
        0x190
        0x226
        0x2ee
        0x36b
        0x3e8
    .end array-data

    :array_1
    .array-data 4
        0x5
        0xa
        0x19
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x12c
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x5
        0xa
        0x1e
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0xa
        0x14
        0x32
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0xa
        0x19
        0x2d
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0xa
        0x19
        0x4b
        0x64
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/enums/AbilityType;->WINDSTORM:Lcom/prineside/tdi2/enums/AbilityType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Ability;-><init>(Lcom/prineside/tdi2/enums/AbilityType;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/abilities/WindstormAbility;->r:F

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/abilities/WindstormAbility;->t:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/abilities/WindstormAbility$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/abilities/WindstormAbility;-><init>()V

    return-void
.end method

.method public static synthetic b()[I
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/abilities/WindstormAbility;->u:[I

    return-object v0
.end method

.method public static synthetic c()[[I
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/abilities/WindstormAbility;->v:[[I

    return-object v0
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    iget v1, v0, Lcom/prineside/tdi2/abilities/WindstormAbility;->q:F

    iget v2, v0, Lcom/prineside/tdi2/abilities/WindstormAbility;->p:F

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_0
    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "particle-shockwave-twirled-fat"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v13

    const v3, 0x3d4ccccd    # 0.05f

    cmpg-float v4, v1, v3

    if-gtz v4, :cond_1

    div-float/2addr v1, v3

    goto :goto_0

    :cond_1
    const v4, 0x3f733333    # 0.95f

    cmpl-float v5, v1, v4

    if-ltz v5, :cond_2

    sub-float/2addr v1, v4

    div-float/2addr v1, v3

    sub-float v1, v2, v1

    goto :goto_0

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    const v3, 0x3e428f5c    # 0.19f

    mul-float v1, v1, v3

    invoke-virtual {v12, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    iget v1, v0, Lcom/prineside/tdi2/abilities/WindstormAbility;->b:I

    int-to-float v1, v1

    iget v2, v0, Lcom/prineside/tdi2/abilities/WindstormAbility;->k:F

    const/high16 v14, 0x43000000    # 128.0f

    mul-float v3, v2, v14

    sub-float v3, v1, v3

    iget v1, v0, Lcom/prineside/tdi2/abilities/WindstormAbility;->d:I

    int-to-float v1, v1

    mul-float v4, v2, v14

    sub-float v4, v1, v4

    mul-float v5, v2, v14

    mul-float v6, v2, v14

    const/high16 v15, 0x40000000    # 2.0f

    mul-float v1, v2, v15

    mul-float v7, v1, v14

    mul-float v2, v2, v15

    mul-float v8, v2, v14

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    iget v1, v0, Lcom/prineside/tdi2/abilities/WindstormAbility;->q:F

    neg-float v1, v1

    const/high16 v2, 0x42b40000    # 90.0f

    mul-float v11, v1, v2

    move-object/from16 v1, p1

    move-object v2, v13

    invoke-virtual/range {v1 .. v11}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    iget v1, v0, Lcom/prineside/tdi2/abilities/WindstormAbility;->b:I

    int-to-float v1, v1

    iget v2, v0, Lcom/prineside/tdi2/abilities/WindstormAbility;->k:F

    mul-float v3, v2, v14

    sub-float v3, v1, v3

    iget v1, v0, Lcom/prineside/tdi2/abilities/WindstormAbility;->d:I

    int-to-float v1, v1

    mul-float v4, v2, v14

    sub-float v4, v1, v4

    mul-float v5, v2, v14

    mul-float v6, v2, v14

    mul-float v1, v2, v15

    mul-float v7, v1, v14

    mul-float v2, v2, v15

    mul-float v8, v2, v14

    const v9, 0x3f3d70a4    # 0.74f

    const v10, 0x3f3d70a4    # 0.74f

    iget v1, v0, Lcom/prineside/tdi2/abilities/WindstormAbility;->q:F

    neg-float v1, v1

    const/high16 v2, 0x42f00000    # 120.0f

    mul-float v11, v1, v2

    move-object/from16 v1, p1

    move-object v2, v13

    invoke-virtual/range {v1 .. v11}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    iget v1, v0, Lcom/prineside/tdi2/abilities/WindstormAbility;->b:I

    int-to-float v1, v1

    iget v2, v0, Lcom/prineside/tdi2/abilities/WindstormAbility;->k:F

    mul-float v3, v2, v14

    sub-float v3, v1, v3

    iget v1, v0, Lcom/prineside/tdi2/abilities/WindstormAbility;->d:I

    int-to-float v1, v1

    mul-float v4, v2, v14

    sub-float v4, v1, v4

    mul-float v5, v2, v14

    mul-float v6, v2, v14

    mul-float v1, v2, v15

    mul-float v7, v1, v14

    mul-float v2, v2, v15

    mul-float v8, v2, v14

    const v9, 0x3f0c2f84    # 0.54760003f

    const v10, 0x3f0c2f84    # 0.54760003f

    iget v1, v0, Lcom/prineside/tdi2/abilities/WindstormAbility;->q:F

    neg-float v1, v1

    const/high16 v2, 0x43160000    # 150.0f

    mul-float v11, v1, v2

    move-object/from16 v1, p1

    move-object v2, v13

    invoke-virtual/range {v1 .. v11}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    sget-object v1, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v12, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public isDone()Z
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/abilities/WindstormAbility;->q:F

    iget v1, p0, Lcom/prineside/tdi2/abilities/WindstormAbility;->p:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Ability;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readInt(Z)I

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/abilities/WindstormAbility;->b:I

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readInt(Z)I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/abilities/WindstormAbility;->d:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/abilities/WindstormAbility;->k:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/abilities/WindstormAbility;->p:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/abilities/WindstormAbility;->q:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/abilities/WindstormAbility;->r:F

    const-class v0, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/Array;

    iput-object p1, p0, Lcom/prineside/tdi2/abilities/WindstormAbility;->t:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public start(II)V
    .locals 2

    iput p1, p0, Lcom/prineside/tdi2/abilities/WindstormAbility;->b:I

    iput p2, p0, Lcom/prineside/tdi2/abilities/WindstormAbility;->d:I

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->ABILITY_WINDSTORM_RANGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/abilities/WindstormAbility;->k:F

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->ABILITY_WINDSTORM_DURATION:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/abilities/WindstormAbility;->p:F

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->canSkipMediaUpdate()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->abilityManager:Lcom/prineside/tdi2/managers/AbilityManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/AbilityManager;->F:Lcom/prineside/tdi2/managers/AbilityManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/AbilityManager$Factories;->WINDSTORM:Lcom/prineside/tdi2/abilities/WindstormAbility$WindstormAbilityFactory;

    invoke-static {v0}, Lcom/prineside/tdi2/abilities/WindstormAbility$WindstormAbilityFactory;->a(Lcom/prineside/tdi2/abilities/WindstormAbility$WindstormAbilityFactory;)Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    iput-object v0, p0, Lcom/prineside/tdi2/abilities/WindstormAbility;->s:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    iget p1, p0, Lcom/prineside/tdi2/abilities/WindstormAbility;->k:F

    const/high16 p2, 0x43000000    # 128.0f

    mul-float p1, p1, p2

    div-float/2addr p1, p2

    iget-object p2, p0, Lcom/prineside/tdi2/abilities/WindstormAbility;->s:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getVelocity()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object p2

    const/high16 v0, 0x430c0000    # 140.0f

    mul-float v0, v0, p1

    const/high16 v1, 0x43480000    # 200.0f

    mul-float p1, p1, v1

    invoke-virtual {p2, v0, p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    iget-object p2, p0, Lcom/prineside/tdi2/abilities/WindstormAbility;->s:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/prineside/tdi2/systems/ParticleSystem;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;Z)Z

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    iget p2, p0, Lcom/prineside/tdi2/abilities/WindstormAbility;->p:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p2, p2, v0

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/systems/WaveSystem;->freezeTimeToNextWave(F)V

    return-void
.end method

.method public update(F)V
    .locals 11

    iget v0, p0, Lcom/prineside/tdi2/abilities/WindstormAbility;->r:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/abilities/WindstormAbility;->r:F

    iget v1, p0, Lcom/prineside/tdi2/abilities/WindstormAbility;->q:F

    add-float/2addr v1, p1

    iput v1, p0, Lcom/prineside/tdi2/abilities/WindstormAbility;->q:F

    iget p1, p0, Lcom/prineside/tdi2/abilities/WindstormAbility;->p:F

    const/4 v2, 0x0

    cmpl-float p1, v1, p1

    if-ltz p1, :cond_3

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->buff:Lcom/prineside/tdi2/systems/BuffSystem;

    iget-object p1, p1, Lcom/prineside/tdi2/systems/BuffSystem;->P_THROW_BACK:Lcom/prineside/tdi2/buffs/processors/ThrowBackBuffProcessor;

    :goto_0
    iget-object v0, p0, Lcom/prineside/tdi2/abilities/WindstormAbility;->t:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v1, :cond_2

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/prineside/tdi2/enums/BuffType;->THROW_BACK:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/Enemy;->getBuffsByTypeOrNull(Lcom/prineside/tdi2/enums/BuffType;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v1

    iget v3, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v3, v3, -0x1

    :goto_1
    if-ltz v3, :cond_1

    iget-object v4, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    aget-object v4, v4, v3

    check-cast v4, Lcom/prineside/tdi2/buffs/ThrowBackBuff;

    iget v4, v4, Lcom/prineside/tdi2/buffs/ThrowBackBuff;->ownerId:I

    const/16 v5, -0xf1

    if-ne v4, v5, :cond_0

    sget-object v4, Lcom/prineside/tdi2/enums/BuffType;->THROW_BACK:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {p1, v0, v4, v3}, Lcom/prineside/tdi2/BuffProcessor;->removeBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/enums/BuffType;I)V

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object p1, p0, Lcom/prineside/tdi2/abilities/WindstormAbility;->s:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->allowCompletion()V

    goto/16 :goto_4

    :cond_3
    const/4 p1, 0x0

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_8

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, p1, Lcom/prineside/tdi2/GameSystemProvider;->buff:Lcom/prineside/tdi2/systems/BuffSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/BuffSystem;->P_THROW_BACK:Lcom/prineside/tdi2/buffs/processors/ThrowBackBuffProcessor;

    iget v1, p0, Lcom/prineside/tdi2/abilities/WindstormAbility;->k:F

    const/high16 v3, 0x43000000    # 128.0f

    mul-float v4, v1, v3

    mul-float v4, v4, v1

    mul-float v4, v4, v3

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object p1, p1, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    :goto_2
    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object p1, p1, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v1, :cond_7

    iget-object p1, p1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast p1, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object p1, p1, v2

    iget-object p1, p1, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    sget-object v1, Lcom/prineside/tdi2/enums/BuffType;->THROW_BACK:Lcom/prineside/tdi2/enums/BuffType;

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/Enemy;->getBuffsByTypeOrNull(Lcom/prineside/tdi2/enums/BuffType;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    move-result-object v1

    if-eqz v1, :cond_5

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    iget v1, p0, Lcom/prineside/tdi2/abilities/WindstormAbility;->b:I

    int-to-float v1, v1

    iget v3, p0, Lcom/prineside/tdi2/abilities/WindstormAbility;->d:I

    int-to-float v3, v3

    invoke-virtual {p1}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v5

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p1}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v6

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {v1, v3, v5, v6}, Lcom/prineside/tdi2/utils/PMath;->getSquareDistanceBetweenPoints(FFFF)F

    move-result v1

    cmpg-float v1, v1, v4

    if-gez v1, :cond_6

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->buffManager:Lcom/prineside/tdi2/managers/BuffManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/BuffManager;->F:Lcom/prineside/tdi2/managers/BuffManager$Factories;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/BuffManager$Factories;->THROW_BACK:Lcom/prineside/tdi2/buffs/ThrowBackBuff$BlastThrowBackBuffFactory;

    invoke-virtual {v1}, Lcom/prineside/tdi2/Buff$Factory;->obtain()Lcom/prineside/tdi2/Buff;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/buffs/ThrowBackBuff;

    const/16 v6, -0xf1

    const/high16 v7, 0x40200000    # 2.5f

    iget v3, p0, Lcom/prineside/tdi2/abilities/WindstormAbility;->p:F

    const v5, 0x3c23d70a    # 0.01f

    add-float v8, v3, v5

    const/high16 v5, 0x41200000    # 10.0f

    mul-float v9, v3, v5

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v5, v1

    invoke-virtual/range {v5 .. v10}, Lcom/prineside/tdi2/buffs/ThrowBackBuff;->setup(IFFFF)V

    invoke-virtual {v0, p1, v1}, Lcom/prineside/tdi2/buffs/processors/ThrowBackBuffProcessor;->addBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/buffs/ThrowBackBuff;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/prineside/tdi2/abilities/WindstormAbility;->t:Lcom/badlogic/gdx/utils/Array;

    iget-object v3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    invoke-virtual {v3, p1}, Lcom/prineside/tdi2/systems/EnemySystem;->getReference(Lcom/prineside/tdi2/Enemy;)Lcom/prineside/tdi2/Enemy$EnemyReference;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    const p1, 0x3e439581    # 0.191f

    iput p1, p0, Lcom/prineside/tdi2/abilities/WindstormAbility;->r:F

    :cond_8
    :goto_4
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Ability;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget v0, p0, Lcom/prineside/tdi2/abilities/WindstormAbility;->b:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(IZ)I

    iget v0, p0, Lcom/prineside/tdi2/abilities/WindstormAbility;->d:I

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(IZ)I

    iget v0, p0, Lcom/prineside/tdi2/abilities/WindstormAbility;->k:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/abilities/WindstormAbility;->p:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/abilities/WindstormAbility;->q:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/abilities/WindstormAbility;->r:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/abilities/WindstormAbility;->t:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
