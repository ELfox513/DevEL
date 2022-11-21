.class public Lcom/prineside/tdi2/abilities/BallLightningAbility;
.super Lcom/prineside/tdi2/Ability;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/abilities/BallLightningAbility$BallLightningAbilityFactory;
    }
.end annotation


# static fields
.field public static final DEFAULT_ATTACK_INTERVAL:F = 0.2f

.field public static final u:[I

.field public static final v:[[I

.field public static final w:Lcom/badlogic/gdx/math/Vector2;

.field public static final x:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field public attackInterval:F

.field public b:Lcom/badlogic/gdx/math/Vector2;

.field public d:Lcom/badlogic/gdx/math/Vector2;

.field public damage:F

.field public duration:F

.field public k:Lcom/prineside/tdi2/Enemy$EnemyReference;

.field public launchedByTower:Lcom/prineside/tdi2/Tower;

.field public p:F

.field public q:F

.field public r:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/Enemy$EnemyReference;",
            ">;"
        }
    .end annotation
.end field

.field public s:I

.field public final t:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/shapes/ChainLightning;",
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

    sput-object v1, Lcom/prineside/tdi2/abilities/BallLightningAbility;->u:[I

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

    sput-object v1, Lcom/prineside/tdi2/abilities/BallLightningAbility;->v:[[I

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->w:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->x:Lcom/badlogic/gdx/graphics/Color;

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
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x5
        0xf
        0x1e
        0x0
        0x0
        0x0
        0x0
        0x0
        0xfa
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0xa
        0x19
        0x28
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
        0x14
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
        0xa
        0x14
        0x4b
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    sget-object v0, Lcom/prineside/tdi2/enums/AbilityType;->BALL_LIGHTNING:Lcom/prineside/tdi2/enums/AbilityType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Ability;-><init>(Lcom/prineside/tdi2/enums/AbilityType;)V

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->b:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->d:Lcom/badlogic/gdx/math/Vector2;

    sget-object v0, Lcom/prineside/tdi2/Enemy$EnemyReference;->NULL:Lcom/prineside/tdi2/Enemy$EnemyReference;

    iput-object v0, p0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->k:Lcom/prineside/tdi2/Enemy$EnemyReference;

    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->attackInterval:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->q:F

    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v1, Lcom/prineside/tdi2/Enemy$EnemyReference;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->r:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iput v2, p0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->s:I

    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v1, Lcom/prineside/tdi2/shapes/ChainLightning;

    const/16 v3, 0x8

    invoke-direct {v0, v2, v3, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->t:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/abilities/BallLightningAbility$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/abilities/BallLightningAbility;-><init>()V

    return-void
.end method

.method public static synthetic b()[I
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->u:[I

    return-object v0
.end method

.method public static synthetic c()[[I
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->v:[[I

    return-object v0
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 0

    return-void
.end method

.method public drawBatchAdditive(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 9

    iget p2, p0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->p:F

    iget v0, p0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->duration:F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, p2, v0

    if-ltz v3, :cond_1

    sub-float/2addr p2, v0

    const/high16 v0, 0x3f000000    # 0.5f

    div-float/2addr p2, v0

    sub-float p2, v2, p2

    cmpg-float v0, p2, v1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, p2

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    sget-object p2, Lcom/prineside/tdi2/abilities/BallLightningAbility;->x:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P200:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    const v0, 0x3e23d70a    # 0.16f

    iget v3, p0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->p:F

    const/high16 v4, 0x40a00000    # 5.0f

    mul-float v3, v3, v4

    invoke-static {v3}, Lcom/prineside/tdi2/utils/PMath;->sin(F)F

    move-result v3

    const v4, 0x3d23d70a    # 0.04f

    mul-float v3, v3, v4

    add-float/2addr v3, v0

    mul-float v3, v3, v1

    iput v3, p2, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->abilityManager:Lcom/prineside/tdi2/managers/AbilityManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/AbilityManager;->F:Lcom/prineside/tdi2/managers/AbilityManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/AbilityManager$Factories;->BALL_LIGHTNING:Lcom/prineside/tdi2/abilities/BallLightningAbility$BallLightningAbilityFactory;

    invoke-static {v0}, Lcom/prineside/tdi2/abilities/BallLightningAbility$BallLightningAbilityFactory;->b(Lcom/prineside/tdi2/abilities/BallLightningAbility$BallLightningAbilityFactory;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v4

    iget-object v0, p0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v5, 0x43400000    # 192.0f

    sub-float v6, v3, v5

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v0, v5

    const/high16 v7, 0x43c00000    # 384.0f

    const/high16 v8, 0x43c00000    # 384.0f

    move-object v3, p1

    move v5, v6

    move v6, v0

    invoke-virtual/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    invoke-virtual {p2, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->abilityManager:Lcom/prineside/tdi2/managers/AbilityManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/AbilityManager;->F:Lcom/prineside/tdi2/managers/AbilityManager$Factories;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/AbilityManager$Factories;->BALL_LIGHTNING:Lcom/prineside/tdi2/abilities/BallLightningAbility$BallLightningAbilityFactory;

    invoke-static {p2}, Lcom/prineside/tdi2/abilities/BallLightningAbility$BallLightningAbilityFactory;->c(Lcom/prineside/tdi2/abilities/BallLightningAbility$BallLightningAbilityFactory;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    iget-object p2, p0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v2, 0x42000000    # 32.0f

    sub-float v3, v0, v2

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr p2, v2

    const/high16 v4, 0x42800000    # 64.0f

    const/high16 v5, 0x42800000    # 64.0f

    move-object v0, p1

    move v2, v3

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    sget-object p2, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/4 p2, 0x0

    :goto_1
    iget-object v0, p0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->t:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p2, v1, :cond_2

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/shapes/ChainLightning;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/shapes/ChainLightning;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public isDone()Z
    .locals 3

    iget v0, p0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->p:F

    iget v1, p0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->duration:F

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

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

    const-class v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    iput-object v0, p0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->b:Lcom/badlogic/gdx/math/Vector2;

    const-class v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Vector2;

    iput-object v0, p0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->d:Lcom/badlogic/gdx/math/Vector2;

    const-class v0, Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/Enemy$EnemyReference;

    iput-object v0, p0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->k:Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->duration:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->damage:F

    invoke-virtual {p1, p2}, Lcom/esotericsoftware/kryo/Kryo;->readClassAndObject(Lcom/esotericsoftware/kryo/io/Input;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/Tower;

    iput-object v0, p0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->launchedByTower:Lcom/prineside/tdi2/Tower;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->attackInterval:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->p:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->q:F

    const-class v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iput-object p1, p0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->r:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->s:I

    return-void
.end method

.method public start(II)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->ABILITY_BALL_LIGHTNING_DURATION:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->duration:F

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->ABILITY_BALL_LIGHTNING_DAMAGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v0

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/EnemySystem;->getTowersMaxDps()D

    move-result-wide v2

    mul-double v0, v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->damage:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->q:F

    iput v0, p0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->p:F

    iget-object v0, p0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->b:Lcom/badlogic/gdx/math/Vector2;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->launchedByTower:Lcom/prineside/tdi2/Tower;

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object p2, Lcom/prineside/tdi2/enums/GameValueType;->ABILITY_BALL_LIGHTNING_COINS:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lcom/prineside/tdi2/Ability;->a:F

    return-void
.end method

.method public update(F)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget v2, v0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->p:F

    add-float/2addr v2, v1

    iput v2, v0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->p:F

    iget-object v2, v0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->launchedByTower:Lcom/prineside/tdi2/Tower;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/prineside/tdi2/Registrable;->isRegistered()Z

    move-result v2

    if-nez v2, :cond_0

    iput-object v3, v0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->launchedByTower:Lcom/prineside/tdi2/Tower;

    iget v1, v0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->duration:F

    iput v1, v0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->p:F

    return-void

    :cond_0
    iget-object v2, v0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->k:Lcom/prineside/tdi2/Enemy$EnemyReference;

    iget-object v2, v2, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    const/4 v4, 0x0

    if-nez v2, :cond_6

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v5, 0x0

    :goto_0
    iget-object v6, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v7, v6, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v7, v7, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v8, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v8, :cond_5

    iget-object v6, v7, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v6, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v6, v6, v5

    iget-object v6, v6, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    sget-object v7, Lcom/prineside/tdi2/enums/DamageType;->ELECTRICITY:Lcom/prineside/tdi2/enums/DamageType;

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/Enemy;->isVulnerableTo(Lcom/prineside/tdi2/enums/DamageType;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    if-nez v3, :cond_3

    move-object v3, v6

    goto :goto_1

    :cond_3
    iget-object v7, v0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->b:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v6}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/math/Vector2;->dst2(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v7

    cmpg-float v8, v7, v2

    if-gez v8, :cond_4

    move-object v3, v6

    move v2, v7

    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_6

    iget-object v2, v6, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/EnemySystem;->getReference(Lcom/prineside/tdi2/Enemy;)Lcom/prineside/tdi2/Enemy$EnemyReference;

    move-result-object v2

    iput-object v2, v0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->k:Lcom/prineside/tdi2/Enemy$EnemyReference;

    :cond_6
    iget-object v2, v0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->k:Lcom/prineside/tdi2/Enemy$EnemyReference;

    iget-object v2, v2, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    const/high16 v3, 0x42c80000    # 100.0f

    if-eqz v2, :cond_7

    sget-object v5, Lcom/prineside/tdi2/abilities/BallLightningAbility;->w:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, v0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->b:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/math/Vector2;->sub(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v5}, Lcom/badlogic/gdx/math/Vector2;->nor()Lcom/badlogic/gdx/math/Vector2;

    const/high16 v2, 0x41200000    # 10.0f

    mul-float v2, v2, v1

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, v0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->d:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget-object v2, v0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->d:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/math/Vector2;->limit2(F)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_2

    :cond_7
    iget-object v2, v0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->d:Lcom/badlogic/gdx/math/Vector2;

    const v5, 0x3f666666    # 0.9f

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    :goto_2
    iget-object v2, v0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->b:Lcom/badlogic/gdx/math/Vector2;

    iget-object v5, v0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->d:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/math/Vector2;->add(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    iget v2, v0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->q:F

    add-float/2addr v2, v1

    iput v2, v0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->q:F

    iget v5, v0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->attackInterval:F

    const/4 v6, 0x3

    const/4 v7, 0x1

    cmpl-float v8, v2, v5

    if-ltz v8, :cond_15

    sub-float/2addr v2, v5

    iput v2, v0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->q:F

    iget-object v2, v0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->r:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v2, 0x0

    :goto_3
    iget-object v5, v0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->r:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v8, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v8, :cond_9

    iget-object v8, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v8, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v8, v8, v2

    iget-object v8, v8, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-nez v8, :cond_8

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeIndex(I)Ljava/lang/Object;

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    iget-object v2, v0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->r:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v6, :cond_13

    iget-object v5, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v5, v5, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v5, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v5, :cond_13

    invoke-static {}, Lcom/prineside/tdi2/utils/FloatSorter;->getInstance()Lcom/prineside/tdi2/utils/FloatSorter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/tdi2/utils/FloatSorter;->begin()V

    const/4 v5, 0x0

    :goto_4
    iget-object v8, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v8, v8, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v8, v8, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v9, v8, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v9, :cond_b

    iget-object v8, v8, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v8, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v8, v8, v5

    iget-object v9, v8, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-eqz v9, :cond_a

    iget-object v10, v0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->b:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v9}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v9

    invoke-virtual {v10, v9}, Lcom/badlogic/gdx/math/Vector2;->dst2(Lcom/badlogic/gdx/math/Vector2;)F

    move-result v9

    invoke-virtual {v2, v8, v9}, Lcom/prineside/tdi2/utils/FloatSorter;->add(Ljava/lang/Object;F)V

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_b
    invoke-virtual {v2}, Lcom/prineside/tdi2/utils/FloatSorter;->sort()Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    const/4 v8, 0x0

    :goto_5
    iget v9, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v8, v9, :cond_12

    iget-object v9, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v9, [Lcom/prineside/tdi2/utils/FloatSorter$Entity;

    aget-object v9, v9, v8

    iget-object v9, v9, Lcom/prineside/tdi2/utils/FloatSorter$Entity;->object:Ljava/lang/Object;

    check-cast v9, Lcom/prineside/tdi2/Enemy$EnemyReference;

    iget-object v10, v9, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    sget-object v11, Lcom/prineside/tdi2/enums/AbilityType;->BALL_LIGHTNING:Lcom/prineside/tdi2/enums/AbilityType;

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/Enemy;->getAbilityVulnerability(Lcom/prineside/tdi2/enums/AbilityType;)F

    move-result v11

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-nez v11, :cond_c

    goto :goto_8

    :cond_c
    sget-object v11, Lcom/prineside/tdi2/enums/DamageType;->ELECTRICITY:Lcom/prineside/tdi2/enums/DamageType;

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/Enemy;->isVulnerableTo(Lcom/prineside/tdi2/enums/DamageType;)Z

    move-result v11

    if-nez v11, :cond_d

    goto :goto_8

    :cond_d
    iget-object v11, v0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->launchedByTower:Lcom/prineside/tdi2/Tower;

    if-eqz v11, :cond_e

    invoke-virtual {v11, v10}, Lcom/prineside/tdi2/Tower;->canAttackEnemy(Lcom/prineside/tdi2/Enemy;)Z

    move-result v11

    if-nez v11, :cond_e

    goto :goto_8

    :cond_e
    const/4 v11, 0x0

    :goto_6
    iget-object v12, v0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->r:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v13, v12, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v11, v13, :cond_10

    iget-object v13, v12, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v13, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v13, v13, v11

    iget-object v13, v13, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-ne v13, v10, :cond_f

    const/4 v10, 0x1

    goto :goto_7

    :cond_f
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_10
    const/4 v10, 0x0

    :goto_7
    if-nez v10, :cond_11

    invoke-virtual {v12, v9}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v9, v0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->r:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v9, v9, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ne v9, v6, :cond_11

    goto :goto_9

    :cond_11
    :goto_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_12
    :goto_9
    invoke-virtual {v2}, Lcom/prineside/tdi2/utils/FloatSorter;->end()V

    :cond_13
    iget-object v2, v0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->r:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v5, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v5, :cond_15

    iget v8, v0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->s:I

    if-lt v8, v5, :cond_14

    iput v4, v0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->s:I

    :cond_14
    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    iget v5, v0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->s:I

    aget-object v2, v2, v5

    iget-object v10, v2, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->projectileManager:Lcom/prineside/tdi2/managers/ProjectileManager;

    sget-object v5, Lcom/prineside/tdi2/enums/ProjectileType;->CHAIN_LIGHTNING:Lcom/prineside/tdi2/enums/ProjectileType;

    invoke-virtual {v2, v5}, Lcom/prineside/tdi2/managers/ProjectileManager;->getFactory(Lcom/prineside/tdi2/enums/ProjectileType;)Lcom/prineside/tdi2/Projectile$Factory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/tdi2/Projectile$Factory;->obtain()Lcom/prineside/tdi2/Projectile;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;

    iget-object v2, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->projectile:Lcom/prineside/tdi2/systems/ProjectileSystem;

    invoke-virtual {v2, v8}, Lcom/prineside/tdi2/systems/ProjectileSystem;->register(Lcom/prineside/tdi2/Projectile;)V

    iget v2, v0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->damage:F

    sget-object v5, Lcom/prineside/tdi2/enums/AbilityType;->BALL_LIGHTNING:Lcom/prineside/tdi2/enums/AbilityType;

    invoke-virtual {v10, v5}, Lcom/prineside/tdi2/Enemy;->getAbilityVulnerability(Lcom/prineside/tdi2/enums/AbilityType;)F

    move-result v5

    mul-float v11, v2, v5

    const/4 v9, 0x0

    const v2, 0x3dcccccd    # 0.1f

    mul-float v12, v11, v2

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-object v15, v0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->b:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual/range {v8 .. v15}, Lcom/prineside/tdi2/projectiles/ChainLightningProjectile;->setup(Lcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/Enemy;FFFFLcom/badlogic/gdx/math/Vector2;)V

    iget v2, v0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->s:I

    add-int/2addr v2, v7

    iput v2, v0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->s:I

    :cond_15
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result v2

    if-eqz v2, :cond_19

    iget v2, v0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->p:F

    iget v5, v0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->duration:F

    cmpg-float v2, v2, v5

    if-gez v2, :cond_16

    invoke-static {v6}, Lcom/prineside/tdi2/utils/FastRandom;->getInt(I)I

    move-result v2

    add-int/2addr v2, v7

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v2, :cond_16

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->shapeManager:Lcom/prineside/tdi2/managers/ShapeManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/ShapeManager;->F:Lcom/prineside/tdi2/managers/ShapeManager$Factories;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/ShapeManager$Factories;->CHAIN_LIGHTNING:Lcom/prineside/tdi2/shapes/ChainLightning$ChainLightningFactory;

    invoke-virtual {v6}, Lcom/prineside/tdi2/Shape$Factory;->obtain()Lcom/prineside/tdi2/Shape;

    move-result-object v6

    check-cast v6, Lcom/prineside/tdi2/shapes/ChainLightning;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->abilityManager:Lcom/prineside/tdi2/managers/AbilityManager;

    iget-object v8, v8, Lcom/prineside/tdi2/managers/AbilityManager;->F:Lcom/prineside/tdi2/managers/AbilityManager$Factories;

    iget-object v8, v8, Lcom/prineside/tdi2/managers/AbilityManager$Factories;->BALL_LIGHTNING:Lcom/prineside/tdi2/abilities/BallLightningAbility$BallLightningAbilityFactory;

    invoke-static {v8}, Lcom/prineside/tdi2/abilities/BallLightningAbility$BallLightningAbilityFactory;->a(Lcom/prineside/tdi2/abilities/BallLightningAbility$BallLightningAbilityFactory;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v8

    invoke-virtual {v6, v8, v7, v7}, Lcom/prineside/tdi2/shapes/ChainLightning;->setTexture(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;ZZ)V

    sget-object v8, Lcom/prineside/tdi2/abilities/BallLightningAbility;->x:Lcom/badlogic/gdx/graphics/Color;

    sget-object v9, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P200:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    const v9, 0x3f0f5c29    # 0.56f

    iput v9, v8, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/shapes/ChainLightning;->setFadingToEnd(Z)V

    invoke-virtual {v6, v8}, Lcom/prineside/tdi2/shapes/ChainLightning;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v8, v0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v9, v8, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v10, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v8

    const/high16 v11, 0x3f000000    # 0.5f

    sub-float/2addr v8, v11

    const/high16 v12, 0x40000000    # 2.0f

    mul-float v8, v8, v12

    mul-float v8, v8, v3

    add-float v13, v9, v8

    iget-object v8, v0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->b:Lcom/badlogic/gdx/math/Vector2;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v14

    sub-float/2addr v14, v11

    mul-float v14, v14, v12

    mul-float v14, v14, v3

    add-float v12, v8, v14

    const/high16 v14, 0x40000000    # 2.0f

    const v15, 0x3dcccccd    # 0.1f

    const/16 v16, 0x0

    const v17, 0x40d70a3e    # 6.7200003f

    const v18, 0x42066666    # 33.6f

    const/high16 v19, 0x41000000    # 8.0f

    move-object v8, v6

    move v11, v13

    move v13, v14

    move v14, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    invoke-virtual/range {v8 .. v18}, Lcom/prineside/tdi2/shapes/ChainLightning;->setup(FFFFFFZFFF)V

    iget-object v8, v0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->t:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v8, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_16
    iget-object v2, v0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->t:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    :goto_b
    iget-object v2, v0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->t:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v3, :cond_18

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/shapes/ChainLightning;

    aget-object v2, v2, v4

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/shapes/ChainLightning;->update(F)V

    invoke-virtual {v2}, Lcom/prineside/tdi2/shapes/ChainLightning;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_17

    iget-object v3, v0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->t:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeIndex(I)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/prineside/tdi2/shapes/ChainLightning;->free()V

    :cond_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_18
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    :cond_19
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Ability;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-object v0, p0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->b:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->d:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->k:Lcom/prineside/tdi2/Enemy$EnemyReference;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->duration:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->damage:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->launchedByTower:Lcom/prineside/tdi2/Tower;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeClassAndObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->attackInterval:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->p:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->q:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->r:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget p1, p0, Lcom/prineside/tdi2/abilities/BallLightningAbility;->s:I

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    return-void
.end method
