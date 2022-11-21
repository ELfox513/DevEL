.class public Lcom/prineside/tdi2/abilities/OverloadAbility;
.super Lcom/prineside/tdi2/Ability;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/abilities/OverloadAbility$OverloadAbilityFactory;
    }
.end annotation


# static fields
.field public static final w:[I

.field public static final x:[[I

.field public static final y:Lcom/badlogic/gdx/utils/StringBuilder;


# instance fields
.field public b:F

.field public d:I

.field public enemiesSpeedGV:Lcom/prineside/tdi2/GameValueConfig;

.field public k:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas$ParticleConfig;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public p:Lcom/badlogic/gdx/scenes/scene2d/Group;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public r:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public s:Lcom/prineside/tdi2/GameValueConfig;

.field public t:Lcom/prineside/tdi2/GameValueConfig;

.field public u:Lcom/prineside/tdi2/GameValueConfig;

.field public v:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xb

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/prineside/tdi2/abilities/OverloadAbility;->w:[I

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

    sput-object v1, Lcom/prineside/tdi2/abilities/OverloadAbility;->x:[[I

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/abilities/OverloadAbility;->y:Lcom/badlogic/gdx/utils/StringBuilder;

    return-void

    :array_0
    .array-data 4
        0x96
        0xfa
        0x15e
        0x1f4
        0x2ee
        0x4b0
        0x640
        0x898
        0xd48
        0x1388
        0x2710
    .end array-data

    :array_1
    .array-data 4
        0xf
        0x28
        0x64
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0xc8
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x14
        0x32
        0x78
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
        0x1e
        0x50
        0x96
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
        0x14
        0x3c
        0x82
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
        0x28
        0x6e
        0xc8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 13

    sget-object v0, Lcom/prineside/tdi2/enums/AbilityType;->OVERLOAD:Lcom/prineside/tdi2/enums/AbilityType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Ability;-><init>(Lcom/prineside/tdi2/enums/AbilityType;)V

    new-instance v0, Lcom/prineside/tdi2/GameValueConfig;

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->ENEMIES_VULNERABILITY:Lcom/prineside/tdi2/enums/GameValueType;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/prineside/tdi2/GameValueConfig;-><init>(Lcom/prineside/tdi2/enums/GameValueType;DZZ)V

    iput-object v0, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->s:Lcom/prineside/tdi2/GameValueConfig;

    new-instance v0, Lcom/prineside/tdi2/GameValueConfig;

    sget-object v8, Lcom/prineside/tdi2/enums/GameValueType;->ENEMIES_SPEED:Lcom/prineside/tdi2/enums/GameValueType;

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/prineside/tdi2/GameValueConfig;-><init>(Lcom/prineside/tdi2/enums/GameValueType;DZZ)V

    iput-object v0, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->enemiesSpeedGV:Lcom/prineside/tdi2/GameValueConfig;

    new-instance v0, Lcom/prineside/tdi2/GameValueConfig;

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->MINERS_SPEED:Lcom/prineside/tdi2/enums/GameValueType;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/prineside/tdi2/GameValueConfig;-><init>(Lcom/prineside/tdi2/enums/GameValueType;DZZ)V

    iput-object v0, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->t:Lcom/prineside/tdi2/GameValueConfig;

    new-instance v0, Lcom/prineside/tdi2/GameValueConfig;

    sget-object v8, Lcom/prineside/tdi2/enums/GameValueType;->SCORE:Lcom/prineside/tdi2/enums/GameValueType;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/prineside/tdi2/GameValueConfig;-><init>(Lcom/prineside/tdi2/enums/GameValueType;DZZ)V

    iput-object v0, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->u:Lcom/prineside/tdi2/GameValueConfig;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/abilities/OverloadAbility$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/abilities/OverloadAbility;-><init>()V

    return-void
.end method

.method public static synthetic b()[I
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/abilities/OverloadAbility;->w:[I

    return-object v0
.end method

.method public static synthetic c()[[I
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/abilities/OverloadAbility;->x:[[I

    return-object v0
.end method


# virtual methods
.method public final d()V
    .locals 6

    invoke-virtual {p0}, Lcom/prineside/tdi2/abilities/OverloadAbility;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->k:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas$ParticleConfig;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->abilityManager:Lcom/prineside/tdi2/managers/AbilityManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/AbilityManager;->F:Lcom/prineside/tdi2/managers/AbilityManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/AbilityManager$Factories;->OVERLOAD:Lcom/prineside/tdi2/abilities/OverloadAbility$OverloadAbilityFactory;

    invoke-static {v0}, Lcom/prineside/tdi2/abilities/OverloadAbility$OverloadAbilityFactory;->a(Lcom/prineside/tdi2/abilities/OverloadAbility$OverloadAbilityFactory;)Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getEmission()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v2

    const/high16 v3, 0x41900000    # 18.0f

    iget v4, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->d:I

    int-to-float v5, v4

    mul-float v5, v5, v3

    const/high16 v3, 0x41c80000    # 25.0f

    int-to-float v4, v4

    mul-float v4, v4, v3

    invoke-virtual {v2, v5, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(FF)V

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f400000    # 0.75f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->scaleEffect(F)V

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/GraphicsSystem;->mainUi:Lcom/prineside/tdi2/ui/components/MainUi;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/components/MainUi;->particlesCanvas:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/UiManager;->viewport:Lcom/badlogic/gdx/utils/viewport/ScreenViewport;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getWorldWidth()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float v2, v2, v3

    const/high16 v3, -0x3d800000    # -64.0f

    invoke-virtual {v1, v0, v2, v3}, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;FF)Lcom/prineside/tdi2/ui/actors/ParticlesCanvas$ParticleConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->k:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas$ParticleConfig;

    const-string v0, "OverloadAbility"

    const-string v1, "initSparks"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 2

    iget-object p1, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/abilities/OverloadAbility;->f()V

    :cond_0
    sget-object p1, Lcom/prineside/tdi2/abilities/OverloadAbility;->y:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    iget p2, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->b:F

    invoke-static {p2}, Lcom/badlogic/gdx/math/MathUtils;->ceil(F)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v1, "TIME_CHAR_SECOND"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object p2, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final e()V
    .locals 11

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->ABILITY_OVERLOAD_BONUS:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result v0

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->ABILITY_OVERLOAD_DIFFICULTY:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result v1

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->ABILITY_OVERLOAD_MINING_SPEED:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v2

    double-to-float v2, v2

    iget v3, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->d:I

    const/high16 v4, 0x42c80000    # 100.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    if-le v3, v6, :cond_0

    const v6, 0x3c23d70a    # 0.01f

    mul-float v0, v0, v6

    add-float/2addr v0, v5

    float-to-double v7, v0

    int-to-double v9, v3

    invoke-static {v7, v8, v9, v10}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v7

    double-to-float v0, v7

    sub-float/2addr v0, v5

    mul-float v0, v0, v4

    mul-float v1, v1, v6

    add-float/2addr v1, v5

    float-to-double v6, v1

    iget v1, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->d:I

    int-to-double v8, v1

    invoke-static {v6, v7, v8, v9}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v6

    double-to-float v1, v6

    sub-float/2addr v1, v5

    mul-float v1, v1, v4

    float-to-double v2, v2

    iget v6, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->d:I

    int-to-double v6, v6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/StrictMath;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    :cond_0
    iget-object v3, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->t:Lcom/prineside/tdi2/GameValueConfig;

    sub-float/2addr v2, v5

    mul-float v2, v2, v4

    float-to-double v6, v2

    iput-wide v6, v3, Lcom/prineside/tdi2/GameValueConfig;->value:D

    iget-object v2, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->u:Lcom/prineside/tdi2/GameValueConfig;

    float-to-double v6, v0

    iput-wide v6, v2, Lcom/prineside/tdi2/GameValueConfig;->value:D

    iget-object v0, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->enemiesSpeedGV:Lcom/prineside/tdi2/GameValueConfig;

    float-to-double v2, v1

    iput-wide v2, v0, Lcom/prineside/tdi2/GameValueConfig;->value:D

    iget-object v0, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->s:Lcom/prineside/tdi2/GameValueConfig;

    add-float/2addr v1, v4

    div-float v1, v4, v1

    sub-float/2addr v1, v5

    mul-float v1, v1, v4

    float-to-double v1, v1

    iput-wide v1, v0, Lcom/prineside/tdi2/GameValueConfig;->value:D

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/GameValueSystem;->recalculate()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/abilities/OverloadAbility;->f()V

    return-void
.end method

.method public final f()V
    .locals 8

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->k:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas$ParticleConfig;

    if-nez v0, :cond_1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->canSkipMediaUpdate()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/prineside/tdi2/abilities/OverloadAbility;->d()V

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->k:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas$ParticleConfig;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas$ParticleConfig;->effect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getEmission()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v2

    const/high16 v3, 0x41900000    # 18.0f

    iget v4, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->d:I

    int-to-float v5, v4

    mul-float v5, v5, v3

    const/high16 v3, 0x41c80000    # 25.0f

    int-to-float v4, v4

    mul-float v4, v4, v3

    invoke-virtual {v2, v5, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(FF)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getLife()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v1

    const/high16 v2, 0x43fa0000    # 500.0f

    const/high16 v3, 0x42c80000    # 100.0f

    iget v4, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->d:I

    int-to-float v5, v4

    mul-float v5, v5, v3

    add-float/2addr v5, v2

    const v2, 0x453b8000    # 3000.0f

    const/high16 v3, 0x43960000    # 300.0f

    int-to-float v4, v4

    mul-float v4, v4, v3

    add-float/2addr v4, v2

    invoke-virtual {v1, v5, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(FF)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const-string v1, "x"

    if-nez v0, :cond_3

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v2, 0x43000000    # 128.0f

    const/high16 v3, 0x42800000    # 64.0f

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/UiManager;->viewport:Lcom/badlogic/gdx/utils/viewport/ScreenViewport;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getWorldWidth()F

    move-result v2

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v2, v2, v4

    sub-float/2addr v2, v3

    const/high16 v4, 0x42200000    # 40.0f

    invoke-virtual {v0, v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/GraphicsSystem;->mainUi:Lcom/prineside/tdi2/ui/components/MainUi;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/components/MainUi;->customElementsContainer:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v2, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "icon-overload"

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v0, v3, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v2, 0x41000000    # 8.0f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$DEEP_ORANGE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v3, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v4, 0x15

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v3

    const-string v4, "asd"

    invoke-direct {v0, v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v0, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v3, 0x41800000    # 16.0f

    const/high16 v4, 0x42480000    # 50.0f

    invoke-virtual {v0, v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v3, 0x40a00000    # 5.0f

    const/high16 v5, 0x42a40000    # 82.0f

    invoke-virtual {v0, v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v3, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->d:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v7, 0x18

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    invoke-direct {v0, v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v0, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-virtual {v0, v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v3, 0x41f80000    # 31.0f

    invoke-virtual {v0, v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v2, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_3
    iget-object v0, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->d:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public isDone()Z
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->v:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->b:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onDone()V
    .locals 3

    const-string v0, "OverloadAbility"

    const-string v1, "onDone"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    iget-object v2, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->s:Lcom/prineside/tdi2/GameValueConfig;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->removeCustomGameValue(Lcom/prineside/tdi2/GameValueConfig;)V

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    iget-object v2, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->enemiesSpeedGV:Lcom/prineside/tdi2/GameValueConfig;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->removeCustomGameValue(Lcom/prineside/tdi2/GameValueConfig;)V

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    iget-object v2, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->t:Lcom/prineside/tdi2/GameValueConfig;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->removeCustomGameValue(Lcom/prineside/tdi2/GameValueConfig;)V

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    iget-object v2, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->u:Lcom/prineside/tdi2/GameValueConfig;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->removeCustomGameValue(Lcom/prineside/tdi2/GameValueConfig;)V

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->recalculate()V

    iget-object v1, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->k:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas$ParticleConfig;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "onDone - remove particles"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->k:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas$ParticleConfig;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas$ParticleConfig;->effect:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->allowCompletion()V

    iput-object v2, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->k:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas$ParticleConfig;

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()Z

    iput-object v2, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    :cond_1
    iput-object v2, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 2

    const-class v0, Lcom/prineside/tdi2/GameValueConfig;

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Ability;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->b:F

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v1

    iput v1, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->d:I

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/GameValueConfig;

    iput-object v1, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->s:Lcom/prineside/tdi2/GameValueConfig;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/GameValueConfig;

    iput-object v1, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->enemiesSpeedGV:Lcom/prineside/tdi2/GameValueConfig;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/GameValueConfig;

    iput-object v1, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->t:Lcom/prineside/tdi2/GameValueConfig;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/GameValueConfig;

    iput-object p1, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->u:Lcom/prineside/tdi2/GameValueConfig;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->v:Z

    return-void
.end method

.method public start(II)V
    .locals 4

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object p2, Lcom/prineside/tdi2/enums/GameValueType;->ABILITY_OVERLOAD_DURATION:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result p1

    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v0, Lcom/prineside/tdi2/GameSystemProvider;->ability:Lcom/prineside/tdi2/systems/AbilitySystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/AbilitySystem;->activeAbilities:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v3, 0x1

    if-ge p2, v2, :cond_1

    iget-object v0, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/Ability;

    aget-object v0, v0, p2

    iget-object v1, v0, Lcom/prineside/tdi2/Ability;->type:Lcom/prineside/tdi2/enums/AbilityType;

    sget-object v2, Lcom/prineside/tdi2/enums/AbilityType;->OVERLOAD:Lcom/prineside/tdi2/enums/AbilityType;

    if-ne v1, v2, :cond_0

    check-cast v0, Lcom/prineside/tdi2/abilities/OverloadAbility;

    iget p2, v0, Lcom/prineside/tdi2/abilities/OverloadAbility;->b:F

    add-float/2addr p2, p1

    iput p2, v0, Lcom/prineside/tdi2/abilities/OverloadAbility;->b:F

    iget p1, v0, Lcom/prineside/tdi2/abilities/OverloadAbility;->d:I

    add-int/2addr p1, v3

    iput p1, v0, Lcom/prineside/tdi2/abilities/OverloadAbility;->d:I

    invoke-virtual {v0}, Lcom/prineside/tdi2/abilities/OverloadAbility;->e()V

    iput-boolean v3, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->v:Z

    return-void

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->b:F

    iput v3, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->d:I

    iget-object p1, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    iget-object p2, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->s:Lcom/prineside/tdi2/GameValueConfig;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/systems/GameValueSystem;->addCustomGameValue(Lcom/prineside/tdi2/GameValueConfig;)V

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    iget-object p2, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->enemiesSpeedGV:Lcom/prineside/tdi2/GameValueConfig;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/systems/GameValueSystem;->addCustomGameValue(Lcom/prineside/tdi2/GameValueConfig;)V

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    iget-object p2, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->t:Lcom/prineside/tdi2/GameValueConfig;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/systems/GameValueSystem;->addCustomGameValue(Lcom/prineside/tdi2/GameValueConfig;)V

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    iget-object p2, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->u:Lcom/prineside/tdi2/GameValueConfig;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/systems/GameValueSystem;->addCustomGameValue(Lcom/prineside/tdi2/GameValueConfig;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/abilities/OverloadAbility;->e()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/abilities/OverloadAbility;->f()V

    return-void
.end method

.method public startEffects()V
    .locals 1

    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Ability;->a(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

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

    invoke-virtual {p0}, Lcom/prineside/tdi2/abilities/OverloadAbility;->d()V

    :cond_0
    return-void
.end method

.method public update(F)V
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->b:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->b:F

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Ability;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget v0, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->b:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget v0, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->d:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget-object v0, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->s:Lcom/prineside/tdi2/GameValueConfig;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->enemiesSpeedGV:Lcom/prineside/tdi2/GameValueConfig;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->t:Lcom/prineside/tdi2/GameValueConfig;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->u:Lcom/prineside/tdi2/GameValueConfig;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/prineside/tdi2/abilities/OverloadAbility;->v:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    return-void
.end method
