.class public Lcom/prineside/tdi2/abilities/NukeAbility;
.super Lcom/prineside/tdi2/Ability;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/abilities/NukeAbility$NukeAbilityFactory;
    }
.end annotation


# static fields
.field public static final k:[I

.field public static final p:[[I


# instance fields
.field public b:F
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public d:F
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xb

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/prineside/tdi2/abilities/NukeAbility;->k:[I

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

    sput-object v1, Lcom/prineside/tdi2/abilities/NukeAbility;->p:[[I

    return-void

    nop

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
        0xa
        0x14
        0x2d
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
        0xf
        0x19
        0x3c
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
        0xf
        0x23
        0x46
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
        0xf
        0x23
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
        0x23
        0x50
        0x64
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/AbilityType;->NUKE:Lcom/prineside/tdi2/enums/AbilityType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Ability;-><init>(Lcom/prineside/tdi2/enums/AbilityType;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/abilities/NukeAbility$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/abilities/NukeAbility;-><init>()V

    return-void
.end method

.method public static synthetic b()[I
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/abilities/NukeAbility;->k:[I

    return-object v0
.end method

.method public static synthetic c()[[I
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/abilities/NukeAbility;->p:[[I

    return-object v0
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 0

    return-void
.end method

.method public isDone()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public start(II)V
    .locals 9

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->ABILITY_NUKE_COINS:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/prineside/tdi2/Ability;->a:F

    int-to-float p1, p1

    iput p1, p0, Lcom/prineside/tdi2/abilities/NukeAbility;->b:F

    int-to-float p1, p2

    iput p1, p0, Lcom/prineside/tdi2/abilities/NukeAbility;->d:F

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/EnemySystem;->getTowersMaxDps()D

    move-result-wide p1

    double-to-float p1, p1

    iget-object p2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p2, p2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v0, Lcom/prineside/tdi2/enums/GameValueType;->ABILITY_NUKE_DAMAGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p2, v0}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result p2

    int-to-float p2, p2

    mul-float p1, p1, p2

    const p2, 0x3c23d70a    # 0.01f

    mul-float p1, p1, p2

    iget-object p2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p2, p2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object p2, p2, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 p2, 0x0

    const/4 v8, 0x0

    :goto_0
    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p2, v2, :cond_2

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v1, v1, p2

    iget-object v1, v1, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    const/4 v2, 0x0

    sget-object v4, Lcom/prineside/tdi2/enums/DamageType;->EXPLOSION:Lcom/prineside/tdi2/enums/DamageType;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v3, p1

    move-object v5, p0

    invoke-virtual/range {v0 .. v7}, Lcom/prineside/tdi2/systems/EnemySystem;->giveDamage(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;FLcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;ZLcom/prineside/tdi2/Projectile;)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v8, v8, 0x1

    :cond_1
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->achievement:Lcom/prineside/tdi2/systems/AchievementSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/AchievementSystem;->isActive()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->achievementManager:Lcom/prineside/tdi2/managers/AchievementManager;

    sget-object p2, Lcom/prineside/tdi2/enums/AchievementType;->HUNDRED_KILLS_NUKE:Lcom/prineside/tdi2/enums/AchievementType;

    invoke-virtual {p1, p2, v8}, Lcom/prineside/tdi2/managers/AchievementManager;->setProgress(Lcom/prineside/tdi2/enums/AchievementType;I)V

    :cond_3
    return-void
.end method

.method public startEffects()V
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/Ability;->a(F)V

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->abilityManager:Lcom/prineside/tdi2/managers/AbilityManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/AbilityManager;->F:Lcom/prineside/tdi2/managers/AbilityManager$Factories;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/AbilityManager$Factories;->NUKE:Lcom/prineside/tdi2/abilities/NukeAbility$NukeAbilityFactory;

    invoke-static {v1}, Lcom/prineside/tdi2/abilities/NukeAbility$NukeAbilityFactory;->a(Lcom/prineside/tdi2/abilities/NukeAbility$NukeAbilityFactory;)Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    iget v2, p0, Lcom/prineside/tdi2/abilities/NukeAbility;->b:F

    iget v3, p0, Lcom/prineside/tdi2/abilities/NukeAbility;->d:F

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/prineside/tdi2/systems/ParticleSystem;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;Z)Z

    :cond_0
    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_input:Lcom/prineside/tdi2/systems/InputSystem;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->CAMERA_SHAKE_ENABLED:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v1, v3

    if-nez v5, :cond_1

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_input:Lcom/prineside/tdi2/systems/InputSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/InputSystem;->cameraController:Lcom/prineside/tdi2/CameraController;

    new-instance v2, Lcom/prineside/tdi2/CameraController$ShakeAnimation;

    const/high16 v3, 0x420c0000    # 35.0f

    const/high16 v4, 0x40200000    # 2.5f

    invoke-direct {v2, v3, v4}, Lcom/prineside/tdi2/CameraController$ShakeAnimation;-><init>(FF)V

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/CameraController;->animate(Lcom/prineside/tdi2/CameraController$CameraControllerAnimation;)V

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/GraphicsSystem;->screenBorderGradient:Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;

    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    const v3, 0x3f47ae14    # 0.78f

    invoke-virtual {v2, v0, v0, v0, v3}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    const/high16 v2, 0x40000000    # 2.0f

    sget-object v3, Lcom/badlogic/gdx/math/Interpolation;->pow2In:Lcom/badlogic/gdx/math/Interpolation$PowIn;

    invoke-virtual {v1, v0, v2, v3}, Lcom/prineside/tdi2/ui/actors/ScreenBorderGradient;->fullscreenFlash(Lcom/badlogic/gdx/graphics/Color;FLcom/badlogic/gdx/math/Interpolation;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    const v1, 0x3eb33333    # 0.35f

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/systems/GameStateSystem;->animateSpeed(FF)V

    :cond_1
    return-void
.end method

.method public update(F)V
    .locals 0

    return-void
.end method
