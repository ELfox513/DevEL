.class public Lcom/prineside/tdi2/abilities/LoicAbility;
.super Lcom/prineside/tdi2/Ability;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/abilities/LoicAbility$LoicAbilityFactory;
    }
.end annotation


# static fields
.field public static final u:[I

.field public static final v:[[I

.field public static final w:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field public b:F

.field public d:F

.field public k:I

.field public p:F
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public q:F

.field public r:Lcom/badlogic/gdx/math/Rectangle;

.field public s:Lcom/prineside/tdi2/shapes/MultiLine;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public t:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xb

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/prineside/tdi2/abilities/LoicAbility;->u:[I

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

    sput-object v1, Lcom/prineside/tdi2/abilities/LoicAbility;->v:[[I

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/abilities/LoicAbility;->w:Lcom/badlogic/gdx/graphics/Color;

    return-void

    :array_0
    .array-data 4
        0x64
        0x7d
        0xaa
        0xfa
        0x15e
        0x1db
        0x258
        0x2d5
        0x352
        0x3e8
        0x4b0
    .end array-data

    :array_1
    .array-data 4
        0x7
        0xf
        0x23
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x7
        0xf
        0x23
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
        0xc
        0x19
        0x2d
        0x0
        0x0
        0x0
        0xc8
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0xf
        0x2d
        0x3c
        0x0
        0x96
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
        0xf
        0x1e
        0x50
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/AbilityType;->LOIC:Lcom/prineside/tdi2/enums/AbilityType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Ability;-><init>(Lcom/prineside/tdi2/enums/AbilityType;)V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/prineside/tdi2/abilities/LoicAbility;->p:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/abilities/LoicAbility;->q:F

    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/abilities/LoicAbility;->r:Lcom/badlogic/gdx/math/Rectangle;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/abilities/LoicAbility$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/abilities/LoicAbility;-><init>()V

    return-void
.end method

.method public static synthetic b()[I
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/abilities/LoicAbility;->u:[I

    return-object v0
.end method

.method public static synthetic c()[[I
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/abilities/LoicAbility;->v:[[I

    return-object v0
.end method


# virtual methods
.method public final d()V
    .locals 12

    iget v0, p0, Lcom/prineside/tdi2/abilities/LoicAbility;->q:F

    const v1, 0x3e99999a    # 0.3f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    div-float/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/prineside/tdi2/abilities/LoicAbility;->d:F

    sub-float v3, v2, v0

    cmpg-float v3, v3, v1

    if-gez v3, :cond_1

    sub-float/2addr v2, v0

    div-float v0, v2, v1

    iget-object v1, p0, Lcom/prineside/tdi2/abilities/LoicAbility;->t:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->allowCompletion()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/prineside/tdi2/abilities/LoicAbility;->t:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    goto :goto_0

    :cond_1
    const v0, 0x3f19999a    # 0.6f

    sub-float/2addr v2, v0

    const/high16 v0, 0x3f000000    # 0.5f

    div-float v3, v2, v0

    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->floor(F)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lcom/prineside/tdi2/abilities/LoicAbility;->q:F

    sub-float/2addr v3, v1

    div-float/2addr v3, v2

    const v1, 0x40490fdb    # (float)Math.PI

    mul-float v3, v3, v1

    const-wide v1, 0x3fee666666000000L    # 0.9499999992549419

    invoke-static {v3}, Lcom/prineside/tdi2/utils/PMath;->sin(F)F

    move-result v3

    const v4, 0x3dcccccd    # 0.1f

    mul-float v3, v3, v4

    mul-float v3, v3, v0

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v1

    double-to-float v0, v3

    :cond_2
    :goto_0
    const/high16 v1, 0x43000000    # 128.0f

    mul-float v1, v1, v0

    iget v2, p0, Lcom/prineside/tdi2/abilities/LoicAbility;->p:F

    cmpl-float v2, v1, v2

    if-nez v2, :cond_3

    return-void

    :cond_3
    iput v1, p0, Lcom/prineside/tdi2/abilities/LoicAbility;->p:F

    sget-object v2, Lcom/prineside/tdi2/abilities/LoicAbility;->w:Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$CYAN;->P200:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    iget-object v3, p0, Lcom/prineside/tdi2/abilities/LoicAbility;->s:Lcom/prineside/tdi2/shapes/MultiLine;

    invoke-virtual {v3}, Lcom/prineside/tdi2/shapes/MultiLine;->reset()V

    iget-object v3, p0, Lcom/prineside/tdi2/abilities/LoicAbility;->s:Lcom/prineside/tdi2/shapes/MultiLine;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->abilityManager:Lcom/prineside/tdi2/managers/AbilityManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/AbilityManager;->F:Lcom/prineside/tdi2/managers/AbilityManager$Factories;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/AbilityManager$Factories;->LOIC:Lcom/prineside/tdi2/abilities/LoicAbility$LoicAbilityFactory;

    invoke-static {v4}, Lcom/prineside/tdi2/abilities/LoicAbility$LoicAbilityFactory;->b(Lcom/prineside/tdi2/abilities/LoicAbility$LoicAbilityFactory;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    const/4 v8, 0x0

    invoke-virtual {v3, v4, v8, v8}, Lcom/prineside/tdi2/shapes/MultiLine;->setTextureRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;ZZ)V

    iget-object v3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v3}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v3

    iget v3, v3, Lcom/prineside/tdi2/Map;->heightPixels:I

    int-to-float v3, v3

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->abilityManager:Lcom/prineside/tdi2/managers/AbilityManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/AbilityManager;->F:Lcom/prineside/tdi2/managers/AbilityManager$Factories;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/AbilityManager$Factories;->LOIC:Lcom/prineside/tdi2/abilities/LoicAbility$LoicAbilityFactory;

    invoke-static {v4}, Lcom/prineside/tdi2/abilities/LoicAbility$LoicAbilityFactory;->b(Lcom/prineside/tdi2/abilities/LoicAbility$LoicAbilityFactory;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    add-float/2addr v3, v4

    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->ceil(F)I

    move-result v9

    const/4 v10, 0x0

    iput v10, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget-object v3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v3}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v3

    iget v3, v3, Lcom/prineside/tdi2/Map;->heightPixels:I

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->abilityManager:Lcom/prineside/tdi2/managers/AbilityManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/AbilityManager;->F:Lcom/prineside/tdi2/managers/AbilityManager$Factories;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/AbilityManager$Factories;->LOIC:Lcom/prineside/tdi2/abilities/LoicAbility$LoicAbilityFactory;

    invoke-static {v4}, Lcom/prineside/tdi2/abilities/LoicAbility$LoicAbilityFactory;->b(Lcom/prineside/tdi2/abilities/LoicAbility$LoicAbilityFactory;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v11, v3

    iget-object v3, p0, Lcom/prineside/tdi2/abilities/LoicAbility;->s:Lcom/prineside/tdi2/shapes/MultiLine;

    iget v4, p0, Lcom/prineside/tdi2/abilities/LoicAbility;->k:I

    int-to-float v4, v4

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v6

    const/4 v7, 0x0

    move-object v2, v3

    move v3, v4

    move v4, v11

    move v5, v1

    invoke-virtual/range {v2 .. v7}, Lcom/prineside/tdi2/shapes/MultiLine;->appendNode(FFFFZ)V

    :goto_1
    if-ge v8, v9, :cond_5

    sget-object v2, Lcom/prineside/tdi2/abilities/LoicAbility;->w:Lcom/badlogic/gdx/graphics/Color;

    iput v0, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    add-int/lit8 v3, v9, -0x1

    if-ne v8, v3, :cond_4

    iput v10, v2, Lcom/badlogic/gdx/graphics/Color;->a:F

    :cond_4
    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->abilityManager:Lcom/prineside/tdi2/managers/AbilityManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/AbilityManager;->F:Lcom/prineside/tdi2/managers/AbilityManager$Factories;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/AbilityManager$Factories;->LOIC:Lcom/prineside/tdi2/abilities/LoicAbility$LoicAbilityFactory;

    invoke-static {v3}, Lcom/prineside/tdi2/abilities/LoicAbility$LoicAbilityFactory;->b(Lcom/prineside/tdi2/abilities/LoicAbility$LoicAbilityFactory;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v11, v3

    iget-object v3, p0, Lcom/prineside/tdi2/abilities/LoicAbility;->s:Lcom/prineside/tdi2/shapes/MultiLine;

    iget v4, p0, Lcom/prineside/tdi2/abilities/LoicAbility;->k:I

    int-to-float v4, v4

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v6

    const/4 v7, 0x0

    move-object v2, v3

    move v3, v4

    move v4, v11

    move v5, v1

    invoke-virtual/range {v2 .. v7}, Lcom/prineside/tdi2/shapes/MultiLine;->appendNode(FFFFZ)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/prineside/tdi2/abilities/LoicAbility;->s:Lcom/prineside/tdi2/shapes/MultiLine;

    invoke-virtual {v0}, Lcom/prineside/tdi2/shapes/MultiLine;->updateAllNodes()V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 0

    return-void
.end method

.method public drawBatchAdditive(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 0

    iget-object p2, p0, Lcom/prineside/tdi2/abilities/LoicAbility;->s:Lcom/prineside/tdi2/shapes/MultiLine;

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/abilities/LoicAbility;->d()V

    iget-object p2, p0, Lcom/prineside/tdi2/abilities/LoicAbility;->s:Lcom/prineside/tdi2/shapes/MultiLine;

    invoke-virtual {p2, p1}, Lcom/prineside/tdi2/shapes/MultiLine;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    return-void
.end method

.method public isDone()Z
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/abilities/LoicAbility;->q:F

    iget v1, p0, Lcom/prineside/tdi2/abilities/LoicAbility;->d:F

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
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Ability;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/abilities/LoicAbility;->b:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/abilities/LoicAbility;->d:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/abilities/LoicAbility;->k:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/abilities/LoicAbility;->q:F

    const-class v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/math/Rectangle;

    iput-object p1, p0, Lcom/prineside/tdi2/abilities/LoicAbility;->r:Lcom/badlogic/gdx/math/Rectangle;

    return-void
.end method

.method public setUnregistered()V
    .locals 2

    invoke-super {p0}, Lcom/prineside/tdi2/Registrable;->setUnregistered()V

    iget-object v0, p0, Lcom/prineside/tdi2/abilities/LoicAbility;->t:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->allowCompletion()V

    iput-object v1, p0, Lcom/prineside/tdi2/abilities/LoicAbility;->t:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    :cond_0
    iput-object v1, p0, Lcom/prineside/tdi2/abilities/LoicAbility;->s:Lcom/prineside/tdi2/shapes/MultiLine;

    return-void
.end method

.method public start(II)V
    .locals 6

    iget-object p2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p2, p2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v0, Lcom/prineside/tdi2/enums/GameValueType;->ABILITY_LOIC_COINS:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p2, v0}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v0

    double-to-float p2, v0

    iput p2, p0, Lcom/prineside/tdi2/Ability;->a:F

    const/4 p2, 0x0

    iput p2, p0, Lcom/prineside/tdi2/abilities/LoicAbility;->q:F

    iput p1, p0, Lcom/prineside/tdi2/abilities/LoicAbility;->k:I

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->ABILITY_LOIC_DAMAGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/EnemySystem;->getTowersMaxDps()D

    move-result-wide v2

    mul-double v0, v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/prineside/tdi2/abilities/LoicAbility;->b:F

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->ABILITY_LOIC_DURATION:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/abilities/LoicAbility;->d:F

    iget-object v0, p0, Lcom/prineside/tdi2/abilities/LoicAbility;->r:Lcom/badlogic/gdx/math/Rectangle;

    int-to-float p1, p1

    const/high16 v1, 0x42800000    # 64.0f

    sub-float v1, p1, v1

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v2

    iget v2, v2, Lcom/prineside/tdi2/Map;->heightPixels:I

    int-to-float v2, v2

    const/high16 v3, 0x43000000    # 128.0f

    invoke-virtual {v0, v1, p2, v3, v2}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->shapeManager:Lcom/prineside/tdi2/managers/ShapeManager;

    if-eqz p2, :cond_1

    sget-object v0, Lcom/prineside/tdi2/enums/ShapeType;->MULTI_LINE:Lcom/prineside/tdi2/enums/ShapeType;

    invoke-virtual {p2, v0}, Lcom/prineside/tdi2/managers/ShapeManager;->getFactory(Lcom/prineside/tdi2/enums/ShapeType;)Lcom/prineside/tdi2/Shape$Factory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/prineside/tdi2/Shape$Factory;->obtain()Lcom/prineside/tdi2/Shape;

    move-result-object p2

    check-cast p2, Lcom/prineside/tdi2/shapes/MultiLine;

    iput-object p2, p0, Lcom/prineside/tdi2/abilities/LoicAbility;->s:Lcom/prineside/tdi2/shapes/MultiLine;

    iget-object p2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p2, p2, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz p2, :cond_1

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {p2}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->abilityManager:Lcom/prineside/tdi2/managers/AbilityManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/AbilityManager;->F:Lcom/prineside/tdi2/managers/AbilityManager$Factories;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/AbilityManager$Factories;->LOIC:Lcom/prineside/tdi2/abilities/LoicAbility$LoicAbilityFactory;

    invoke-static {p2}, Lcom/prineside/tdi2/abilities/LoicAbility$LoicAbilityFactory;->a(Lcom/prineside/tdi2/abilities/LoicAbility$LoicAbilityFactory;)Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    iput-object p2, p0, Lcom/prineside/tdi2/abilities/LoicAbility;->t:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    iget v0, v0, Lcom/prineside/tdi2/Map;->heightPixels:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    invoke-virtual {p2, p1, v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object p1

    iget p1, p1, Lcom/prineside/tdi2/Map;->heightPixels:I

    int-to-float p1, p1

    div-float/2addr p1, v3

    iget-object p2, p0, Lcom/prineside/tdi2/abilities/LoicAbility;->t:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getSpawnHeight()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v4

    mul-float v5, p1, v3

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(F)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getYOffsetValue()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;

    move-result-object v4

    const/high16 v5, -0x3d800000    # -64.0f

    mul-float v5, v5, p1

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$RangedNumericValue;->setLow(F)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getEmission()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v2

    const/high16 v4, 0x41200000    # 10.0f

    mul-float v4, v4, p1

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    iget-object p2, p0, Lcom/prineside/tdi2/abilities/LoicAbility;->t:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {p1, p2, v0}, Lcom/prineside/tdi2/systems/ParticleSystem;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;Z)Z

    :cond_1
    return-void
.end method

.method public update(F)V
    .locals 10

    iget v0, p0, Lcom/prineside/tdi2/abilities/LoicAbility;->q:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/abilities/LoicAbility;->q:F

    iget v0, p0, Lcom/prineside/tdi2/abilities/LoicAbility;->b:F

    mul-float v0, v0, p1

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object p1, p1, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p1, v2, :cond_2

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v1, v1, p1

    iget-object v3, v1, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/prineside/tdi2/abilities/LoicAbility;->r:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v3}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Rectangle;->contains(Lcom/badlogic/gdx/math/Vector2;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v1, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    const/4 v4, 0x0

    sget-object v1, Lcom/prineside/tdi2/enums/AbilityType;->LOIC:Lcom/prineside/tdi2/enums/AbilityType;

    invoke-virtual {v3, v1}, Lcom/prineside/tdi2/Enemy;->getAbilityVulnerability(Lcom/prineside/tdi2/enums/AbilityType;)F

    move-result v1

    mul-float v5, v0, v1

    sget-object v6, Lcom/prineside/tdi2/enums/DamageType;->LASER:Lcom/prineside/tdi2/enums/DamageType;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, p0

    invoke-virtual/range {v2 .. v9}, Lcom/prineside/tdi2/systems/EnemySystem;->giveDamage(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;FLcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;ZLcom/prineside/tdi2/Projectile;)Z

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Ability;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget v0, p0, Lcom/prineside/tdi2/abilities/LoicAbility;->b:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/abilities/LoicAbility;->d:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/abilities/LoicAbility;->k:I

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget v0, p0, Lcom/prineside/tdi2/abilities/LoicAbility;->q:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/abilities/LoicAbility;->r:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
