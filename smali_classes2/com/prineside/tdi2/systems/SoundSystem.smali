.class public Lcom/prineside/tdi2/systems/SoundSystem;
.super Lcom/prineside/tdi2/GameSystem;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/NAGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/systems/SoundSystem$QueuedSound;,
        Lcom/prineside/tdi2/systems/SoundSystem$_GameStateSystemListener;,
        Lcom/prineside/tdi2/systems/SoundSystem$_WaveSystemListener;,
        Lcom/prineside/tdi2/systems/SoundSystem$_AbilitySystemListener;,
        Lcom/prineside/tdi2/systems/SoundSystem$_EnemySystemListener;,
        Lcom/prineside/tdi2/systems/SoundSystem$_MinerSystemListener;,
        Lcom/prineside/tdi2/systems/SoundSystem$_ModifierSystemListener;,
        Lcom/prineside/tdi2/systems/SoundSystem$_TowerSystemListener;,
        Lcom/prineside/tdi2/systems/SoundSystem$_MapSystemListener;
    }
.end annotation


# static fields
.field public static final A:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field public a:I

.field public final b:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/systems/SoundSystem$QueuedSound;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z

.field public final k:[Z

.field public final p:[F

.field public final q:[F

.field public final r:Lcom/prineside/tdi2/systems/SoundSystem$_GameStateSystemListener;

.field public final s:Lcom/prineside/tdi2/systems/SoundSystem$_WaveSystemListener;

.field public final t:Lcom/prineside/tdi2/systems/SoundSystem$_AbilitySystemListener;

.field public final u:Lcom/prineside/tdi2/systems/SoundSystem$_EnemySystemListener;

.field public final v:Lcom/prineside/tdi2/systems/SoundSystem$_MinerSystemListener;

.field public final w:Lcom/prineside/tdi2/systems/SoundSystem$_ModifierSystemListener;

.field public final x:Lcom/prineside/tdi2/systems/SoundSystem$_TowerSystemListener;

.field public final y:Lcom/prineside/tdi2/systems/SoundSystem$_MapSystemListener;

.field public final z:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/prineside/tdi2/systems/SoundSystem$QueuedSound;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/systems/SoundSystem;->A:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Lcom/prineside/tdi2/GameSystem;-><init>()V

    const/16 v0, 0x2c

    iput v0, p0, Lcom/prineside/tdi2/systems/SoundSystem;->a:I

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v1, Lcom/prineside/tdi2/systems/SoundSystem$QueuedSound;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/SoundSystem;->b:Lcom/badlogic/gdx/utils/Array;

    sget-object v0, Lcom/prineside/tdi2/enums/StaticSoundType;->values:[Lcom/prineside/tdi2/enums/StaticSoundType;

    array-length v1, v0

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/prineside/tdi2/systems/SoundSystem;->k:[Z

    sget-object v2, Lcom/prineside/tdi2/enums/StaticSoundType;->SHOT_GAUSS:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    sget-object v2, Lcom/prineside/tdi2/enums/StaticSoundType;->BUTTON:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput-boolean v3, v1, v2

    sget-object v2, Lcom/prineside/tdi2/enums/StaticSoundType;->UPGRADE:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput-boolean v3, v1, v2

    sget-object v2, Lcom/prineside/tdi2/enums/StaticSoundType;->ENEMY_REACHED:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput-boolean v3, v1, v2

    sget-object v2, Lcom/prineside/tdi2/enums/StaticSoundType;->FAIL:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput-boolean v3, v1, v2

    sget-object v2, Lcom/prineside/tdi2/enums/StaticSoundType;->GAME_OVER:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput-boolean v3, v1, v2

    sget-object v2, Lcom/prineside/tdi2/enums/StaticSoundType;->NOTIFICATION:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput-boolean v3, v1, v2

    sget-object v2, Lcom/prineside/tdi2/enums/StaticSoundType;->SUCCESS:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput-boolean v3, v1, v2

    sget-object v2, Lcom/prineside/tdi2/enums/StaticSoundType;->LOOT_EPIC:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput-boolean v3, v1, v4

    sget-object v4, Lcom/prineside/tdi2/enums/StaticSoundType;->LOOT_LEGENDARY:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput-boolean v3, v1, v5

    sget-object v5, Lcom/prineside/tdi2/enums/StaticSoundType;->BUILDING_BUILT:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput-boolean v3, v1, v5

    sget-object v5, Lcom/prineside/tdi2/enums/StaticSoundType;->AUTO_FORCE_WAVE:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput-boolean v3, v1, v5

    sget-object v5, Lcom/prineside/tdi2/enums/StaticSoundType;->WARNING:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput-boolean v3, v1, v5

    sget-object v5, Lcom/prineside/tdi2/enums/StaticSoundType;->ABILITY_NUKE:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput-boolean v3, v1, v5

    sget-object v5, Lcom/prineside/tdi2/enums/StaticSoundType;->ABILITY_BLIZZARD:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput-boolean v3, v1, v5

    sget-object v5, Lcom/prineside/tdi2/enums/StaticSoundType;->ABILITY_FIREBALL:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput-boolean v3, v1, v5

    sget-object v5, Lcom/prineside/tdi2/enums/StaticSoundType;->ABILITY_WINDSTORM:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput-boolean v3, v1, v5

    sget-object v5, Lcom/prineside/tdi2/enums/StaticSoundType;->ABILITY_THUNDER:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput-boolean v3, v1, v5

    sget-object v5, Lcom/prineside/tdi2/enums/StaticSoundType;->ABILITY_SMOKE_BOMB:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput-boolean v3, v1, v5

    sget-object v5, Lcom/prineside/tdi2/enums/StaticSoundType;->ABILITY_FIRESTORM:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput-boolean v3, v1, v5

    sget-object v5, Lcom/prineside/tdi2/enums/StaticSoundType;->ABILITY_MAGNET:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput-boolean v3, v1, v5

    sget-object v5, Lcom/prineside/tdi2/enums/StaticSoundType;->ABILITY_BULLET_WALL:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput-boolean v3, v1, v5

    sget-object v5, Lcom/prineside/tdi2/enums/StaticSoundType;->ABILITY_BALL_LIGHTNING:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput-boolean v3, v1, v5

    sget-object v5, Lcom/prineside/tdi2/enums/StaticSoundType;->ABILITY_LOIC:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput-boolean v3, v1, v5

    sget-object v5, Lcom/prineside/tdi2/enums/StaticSoundType;->ABILITY_OVERLOAD:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput-boolean v3, v1, v5

    array-length v1, v0

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/prineside/tdi2/systems/SoundSystem;->p:[F

    const v3, 0x3da3d70a    # 0.08f

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([FF)V

    sget-object v3, Lcom/prineside/tdi2/enums/StaticSoundType;->EXPLOSION:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const v5, 0x3e23d70a    # 0.16f

    aput v5, v1, v3

    sget-object v3, Lcom/prineside/tdi2/enums/StaticSoundType;->LOOT_COMMON:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const v5, 0x3e99999a    # 0.3f

    aput v5, v1, v3

    sget-object v3, Lcom/prineside/tdi2/enums/StaticSoundType;->LOOT_RARE:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/high16 v5, 0x3e800000    # 0.25f

    aput v5, v1, v3

    sget-object v3, Lcom/prineside/tdi2/enums/StaticSoundType;->LOOT_VERY_RARE:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const v5, 0x3e4ccccd    # 0.2f

    aput v5, v1, v3

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const v3, 0x3e19999a    # 0.15f

    aput v3, v1, v2

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const v4, 0x3df5c28f    # 0.12f

    aput v4, v1, v2

    sget-object v2, Lcom/prineside/tdi2/enums/StaticSoundType;->SHOT_BLAST:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v3, v1, v2

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/prineside/tdi2/systems/SoundSystem;->q:[F

    new-instance v0, Lcom/prineside/tdi2/systems/SoundSystem$_GameStateSystemListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/prineside/tdi2/systems/SoundSystem$_GameStateSystemListener;-><init>(Lcom/prineside/tdi2/systems/SoundSystem;Lcom/prineside/tdi2/systems/SoundSystem$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/SoundSystem;->r:Lcom/prineside/tdi2/systems/SoundSystem$_GameStateSystemListener;

    new-instance v0, Lcom/prineside/tdi2/systems/SoundSystem$_WaveSystemListener;

    invoke-direct {v0, p0, v1}, Lcom/prineside/tdi2/systems/SoundSystem$_WaveSystemListener;-><init>(Lcom/prineside/tdi2/systems/SoundSystem;Lcom/prineside/tdi2/systems/SoundSystem$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/SoundSystem;->s:Lcom/prineside/tdi2/systems/SoundSystem$_WaveSystemListener;

    new-instance v0, Lcom/prineside/tdi2/systems/SoundSystem$_AbilitySystemListener;

    invoke-direct {v0, p0, v1}, Lcom/prineside/tdi2/systems/SoundSystem$_AbilitySystemListener;-><init>(Lcom/prineside/tdi2/systems/SoundSystem;Lcom/prineside/tdi2/systems/SoundSystem$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/SoundSystem;->t:Lcom/prineside/tdi2/systems/SoundSystem$_AbilitySystemListener;

    new-instance v0, Lcom/prineside/tdi2/systems/SoundSystem$_EnemySystemListener;

    invoke-direct {v0, p0, v1}, Lcom/prineside/tdi2/systems/SoundSystem$_EnemySystemListener;-><init>(Lcom/prineside/tdi2/systems/SoundSystem;Lcom/prineside/tdi2/systems/SoundSystem$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/SoundSystem;->u:Lcom/prineside/tdi2/systems/SoundSystem$_EnemySystemListener;

    new-instance v0, Lcom/prineside/tdi2/systems/SoundSystem$_MinerSystemListener;

    invoke-direct {v0, p0, v1}, Lcom/prineside/tdi2/systems/SoundSystem$_MinerSystemListener;-><init>(Lcom/prineside/tdi2/systems/SoundSystem;Lcom/prineside/tdi2/systems/SoundSystem$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/SoundSystem;->v:Lcom/prineside/tdi2/systems/SoundSystem$_MinerSystemListener;

    new-instance v0, Lcom/prineside/tdi2/systems/SoundSystem$_ModifierSystemListener;

    invoke-direct {v0, p0, v1}, Lcom/prineside/tdi2/systems/SoundSystem$_ModifierSystemListener;-><init>(Lcom/prineside/tdi2/systems/SoundSystem;Lcom/prineside/tdi2/systems/SoundSystem$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/SoundSystem;->w:Lcom/prineside/tdi2/systems/SoundSystem$_ModifierSystemListener;

    new-instance v0, Lcom/prineside/tdi2/systems/SoundSystem$_TowerSystemListener;

    invoke-direct {v0, p0, v1}, Lcom/prineside/tdi2/systems/SoundSystem$_TowerSystemListener;-><init>(Lcom/prineside/tdi2/systems/SoundSystem;Lcom/prineside/tdi2/systems/SoundSystem$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/SoundSystem;->x:Lcom/prineside/tdi2/systems/SoundSystem$_TowerSystemListener;

    new-instance v0, Lcom/prineside/tdi2/systems/SoundSystem$_MapSystemListener;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/systems/SoundSystem$_MapSystemListener;-><init>(Lcom/prineside/tdi2/systems/SoundSystem;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/SoundSystem;->y:Lcom/prineside/tdi2/systems/SoundSystem$_MapSystemListener;

    new-instance v0, Lcom/prineside/tdi2/systems/SoundSystem$1;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/systems/SoundSystem$1;-><init>(Lcom/prineside/tdi2/systems/SoundSystem;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/SoundSystem;->z:Lcom/badlogic/gdx/utils/Pool;

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v1, :cond_0

    const/16 v0, 0x1d

    iput v0, p0, Lcom/prineside/tdi2/systems/SoundSystem;->a:I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/systems/SoundSystem;->p:[F

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget v2, v1, v0

    const v3, 0x3fd9999a    # 1.7f

    mul-float v2, v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/systems/SoundSystem;F)F
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/systems/SoundSystem;->c(F)F

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/prineside/tdi2/systems/SoundSystem;F)F
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/systems/SoundSystem;->d(F)F

    move-result p0

    return p0
.end method


# virtual methods
.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final c(F)F
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/systems/SoundSystem;->A:Lcom/badlogic/gdx/math/Vector2;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_input:Lcom/prineside/tdi2/systems/InputSystem;

    iget-object p1, p1, Lcom/prineside/tdi2/systems/InputSystem;->cameraController:Lcom/prineside/tdi2/CameraController;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/CameraController;->mapToViewport(Lcom/badlogic/gdx/math/Vector2;)V

    iget p1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_input:Lcom/prineside/tdi2/systems/InputSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/InputSystem;->cameraController:Lcom/prineside/tdi2/CameraController;

    iget-object v0, v0, Lcom/prineside/tdi2/CameraController;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget v0, v0, Lcom/badlogic/gdx/graphics/Camera;->viewportWidth:F

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float p1, p1, v0

    const/high16 v0, -0x41000000    # -0.5f

    add-float/2addr p1, v0

    return p1
.end method

.method public final d(F)F
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_input:Lcom/prineside/tdi2/systems/InputSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/InputSystem;->cameraController:Lcom/prineside/tdi2/CameraController;

    iget-wide v0, v0, Lcom/prineside/tdi2/CameraController;->zoom:D

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v0, v2

    double-to-float v0, v0

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float v0, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, -0x41000000    # -0.5f

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    add-float/2addr p1, v3

    mul-float p1, p1, v2

    add-float/2addr p1, v1

    mul-float v0, v0, p1

    goto :goto_0

    :cond_0
    cmpl-float v4, p1, v3

    if-lez v4, :cond_1

    sub-float/2addr p1, v3

    mul-float p1, p1, v2

    sub-float/2addr v1, p1

    mul-float v0, v0, v1

    :cond_1
    :goto_0
    return v0
.end method

.method public draw(F)V
    .locals 9

    iget-object v0, p0, Lcom/prineside/tdi2/systems/SoundSystem;->b:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/prineside/tdi2/systems/SoundSystem;->b:Lcom/badlogic/gdx/utils/Array;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/systems/SoundSystem$QueuedSound;

    aget-object v1, v1, v0

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v2, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    iget-object v4, v1, Lcom/prineside/tdi2/systems/SoundSystem$QueuedSound;->a:Lcom/prineside/tdi2/enums/StaticSoundType;

    iget v5, v1, Lcom/prineside/tdi2/systems/SoundSystem$QueuedSound;->d:F

    iget v6, v1, Lcom/prineside/tdi2/systems/SoundSystem$QueuedSound;->b:F

    iget v7, v1, Lcom/prineside/tdi2/systems/SoundSystem$QueuedSound;->k:F

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/prineside/tdi2/managers/SoundManager;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;FFFZ)V

    iget-object v2, p0, Lcom/prineside/tdi2/systems/SoundSystem;->z:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/systems/SoundSystem;->b:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/prineside/tdi2/systems/SoundSystem;->q:[F

    array-length v2, v1

    if-ge v0, v2, :cond_3

    aget v2, v1, v0

    sub-float/2addr v2, p1

    aput v2, v1, v0

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    aput v3, v1, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public getSystemName()Ljava/lang/String;
    .locals 1

    const-string v0, "Sound"

    return-object v0
.end method

.method public playExplosionSound(F)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/systems/SoundSystem;->c(F)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/systems/SoundSystem;->d(F)F

    move-result v0

    float-to-double v0, v0

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v3, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->SHOOTING_SOUNDS_VOLUME:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float v0, v0

    const v1, 0x3d4ccccd    # 0.05f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/prineside/tdi2/enums/StaticSoundType;->EXPLOSION:Lcom/prineside/tdi2/enums/StaticSoundType;

    const v2, 0x3f19999a    # 0.6f

    mul-float v0, v0, v2

    const v2, 0x3f666666    # 0.9f

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v3

    const v4, 0x3e4ccccd    # 0.2f

    mul-float v3, v3, v4

    add-float/2addr v3, v2

    invoke-virtual {p0, v1, v0, v3, p1}, Lcom/prineside/tdi2/systems/SoundSystem;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;FFF)V

    :cond_0
    return-void
.end method

.method public playShotSound(Lcom/prineside/tdi2/enums/StaticSoundType;Lcom/prineside/tdi2/Tower;)V
    .locals 4

    invoke-virtual {p2}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object p2

    iget-object p2, p2, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget p2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p0, p2}, Lcom/prineside/tdi2/systems/SoundSystem;->c(F)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/prineside/tdi2/systems/SoundSystem;->d(F)F

    move-result v0

    float-to-double v0, v0

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v3, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->SHOOTING_SOUNDS_VOLUME:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float v0, v0

    const v1, 0x3d4ccccd    # 0.05f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const v1, 0x3f666666    # 0.9f

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v2

    const v3, 0x3e4ccccd    # 0.2f

    mul-float v2, v2, v3

    add-float/2addr v2, v1

    const v1, 0x3f19999a    # 0.6f

    mul-float v0, v0, v1

    invoke-virtual {p0, p1, v0, v2, p2}, Lcom/prineside/tdi2/systems/SoundSystem;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;FFF)V

    :cond_0
    return-void
.end method

.method public playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v0, v1}, Lcom/prineside/tdi2/systems/SoundSystem;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;FFF)V

    return-void
.end method

.method public playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;FFF)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v0, Lcom/prineside/tdi2/GameSystemProvider;->CFG:Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;

    iget-boolean v1, v1, Lcom/prineside/tdi2/GameSystemProvider$SystemsConfig;->headless:Z

    if-nez v1, :cond_7

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->isFastForwarding()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/prineside/tdi2/systems/SoundSystem;->q:[F

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    iget-object v1, v0, Lcom/prineside/tdi2/managers/SoundManager;->playingSoundStats:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    iget-object v0, v0, Lcom/prineside/tdi2/managers/SoundManager;->soundsToPlay:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/2addr v1, v0

    iget v0, p0, Lcom/prineside/tdi2/systems/SoundSystem;->a:I

    if-lt v1, v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/SoundSystem;->k:[Z

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-boolean v0, v0, v1

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/systems/SoundSystem;->b:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_3

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/systems/SoundSystem$QueuedSound;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/prineside/tdi2/systems/SoundSystem$QueuedSound;->a:Lcom/prineside/tdi2/enums/StaticSoundType;

    if-ne v1, p1, :cond_2

    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/prineside/tdi2/systems/SoundSystem;->z:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/systems/SoundSystem$QueuedSound;

    iput-object p1, v0, Lcom/prineside/tdi2/systems/SoundSystem$QueuedSound;->a:Lcom/prineside/tdi2/enums/StaticSoundType;

    iput p4, v0, Lcom/prineside/tdi2/systems/SoundSystem$QueuedSound;->k:F

    iput p2, v0, Lcom/prineside/tdi2/systems/SoundSystem$QueuedSound;->d:F

    iput p3, v0, Lcom/prineside/tdi2/systems/SoundSystem$QueuedSound;->b:F

    iget-object p2, p0, Lcom/prineside/tdi2/systems/SoundSystem;->b:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/prineside/tdi2/systems/SoundSystem;->p:[F

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p2, p2, p3

    sget-object p3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p3, p3, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    iget-object p4, p3, Lcom/prineside/tdi2/managers/SoundManager;->playingSoundStats:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget p4, p4, Lcom/badlogic/gdx/utils/Array;->size:I

    iget-object p3, p3, Lcom/prineside/tdi2/managers/SoundManager;->soundsToPlay:Lcom/badlogic/gdx/utils/Array;

    iget p3, p3, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/2addr p4, p3

    int-to-float p3, p4

    iget p4, p0, Lcom/prineside/tdi2/systems/SoundSystem;->a:I

    int-to-float v0, p4

    const v1, 0x3f666666    # 0.9f

    mul-float v0, v0, v1

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_4

    const/high16 p3, 0x40000000    # 2.0f

    :goto_1
    mul-float p2, p2, p3

    goto :goto_2

    :cond_4
    int-to-float v0, p4

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float v0, v0, v1

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_5

    const/high16 p3, 0x3fc00000    # 1.5f

    goto :goto_1

    :cond_5
    int-to-float p4, p4

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float p4, p4, v0

    cmpl-float p3, p3, p4

    if-ltz p3, :cond_6

    const/high16 p3, 0x3fa00000    # 1.25f

    goto :goto_1

    :cond_6
    :goto_2
    iget-object p3, p0, Lcom/prineside/tdi2/systems/SoundSystem;->q:[F

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aput p2, p3, p1

    :cond_7
    return-void
.end method

.method public postSetup()V
    .locals 0

    invoke-super {p0}, Lcom/prineside/tdi2/GameSystem;->postSetup()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/SoundSystem;->updateMusicPlayback()V

    return-void
.end method

.method public profileUpdate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setup()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/SoundSystem;->r:Lcom/prineside/tdi2/systems/SoundSystem$_GameStateSystemListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/WaveSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/SoundSystem;->s:Lcom/prineside/tdi2/systems/SoundSystem$_WaveSystemListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->ability:Lcom/prineside/tdi2/systems/AbilitySystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/AbilitySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/SoundSystem;->t:Lcom/prineside/tdi2/systems/SoundSystem$_AbilitySystemListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/EnemySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/SoundSystem;->u:Lcom/prineside/tdi2/systems/SoundSystem$_EnemySystemListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->miner:Lcom/prineside/tdi2/systems/MinerSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/MinerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/SoundSystem;->v:Lcom/prineside/tdi2/systems/SoundSystem$_MinerSystemListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->modifier:Lcom/prineside/tdi2/systems/ModifierSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/ModifierSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/SoundSystem;->w:Lcom/prineside/tdi2/systems/SoundSystem$_ModifierSystemListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/SoundSystem;->x:Lcom/prineside/tdi2/systems/SoundSystem$_TowerSystemListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/SoundSystem;->y:Lcom/prineside/tdi2/systems/SoundSystem$_MapSystemListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    return-void
.end method

.method public updateMusicPlayback()V
    .locals 6

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/WaveSystem;->status:Lcom/prineside/tdi2/systems/WaveSystem$Status;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    sget-object v2, Lcom/prineside/tdi2/systems/WaveSystem$Status;->NOT_STARTED:Lcom/prineside/tdi2/systems/WaveSystem$Status;

    if-eq v0, v2, :cond_8

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isMusicEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->IGNORE_MAP_MUSIC:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v2, v4

    if-nez v0, :cond_1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->musicManager:Lcom/prineside/tdi2/managers/MusicManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/MusicManager;->continuePlayingMenuMusicTrack()V

    iput-boolean v1, p0, Lcom/prineside/tdi2/systems/SoundSystem;->d:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v3, v2, Lcom/prineside/tdi2/systems/GameStateSystem;->basicLevelName:Ljava/lang/String;

    if-eqz v3, :cond_2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    invoke-virtual {v0, v3}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/BasicLevel;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v2, v2, Lcom/prineside/tdi2/systems/GameStateSystem;->userMapId:Ljava/lang/String;

    if-eqz v2, :cond_3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->userMapManager:Lcom/prineside/tdi2/managers/UserMapManager;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/managers/UserMapManager;->getUserMap(Ljava/lang/String;)Lcom/prineside/tdi2/UserMap;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/UserMap;->map:Lcom/prineside/tdi2/Map;

    :cond_3
    :goto_0
    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_5

    iget-object v4, v0, Lcom/prineside/tdi2/Map;->xmMusicTrackTile:Lcom/prineside/tdi2/tiles/XmMusicTrackTile;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->getModule()Lcom/prineside/tdi2/ibxm/Module;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/prineside/tdi2/systems/SoundSystem;->d:Z

    if-nez v4, :cond_6

    iget-object v4, v0, Lcom/prineside/tdi2/Map;->xmMusicTrackTile:Lcom/prineside/tdi2/tiles/XmMusicTrackTile;

    invoke-virtual {v4}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->getModule()Lcom/prineside/tdi2/ibxm/Module;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->musicManager:Lcom/prineside/tdi2/managers/MusicManager;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/MusicManager;->getPlayingMusic()Lcom/prineside/tdi2/ibxm/Module;

    move-result-object v5

    if-eq v4, v5, :cond_4

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->musicManager:Lcom/prineside/tdi2/managers/MusicManager;

    iget-object v0, v0, Lcom/prineside/tdi2/Map;->xmMusicTrackTile:Lcom/prineside/tdi2/tiles/XmMusicTrackTile;

    invoke-virtual {v0}, Lcom/prineside/tdi2/tiles/XmMusicTrackTile;->getModule()Lcom/prineside/tdi2/ibxm/Module;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/prineside/tdi2/managers/MusicManager;->playMusic(Lcom/prineside/tdi2/ibxm/Module;F)V

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->musicManager:Lcom/prineside/tdi2/managers/MusicManager;

    invoke-virtual {v0, v3, v2, v1}, Lcom/prineside/tdi2/managers/MusicManager;->setVolume(FFZ)V

    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/systems/SoundSystem;->d:Z

    goto :goto_2

    :cond_5
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->musicManager:Lcom/prineside/tdi2/managers/MusicManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/MusicManager;->continuePlayingMenuMusicTrack()V

    iput-boolean v1, p0, Lcom/prineside/tdi2/systems/SoundSystem;->d:Z

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/GameStateSystem;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->musicManager:Lcom/prineside/tdi2/managers/MusicManager;

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-virtual {v0, v3, v2, v1}, Lcom/prineside/tdi2/managers/MusicManager;->setVolume(FFZ)V

    goto :goto_4

    :cond_7
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->musicManager:Lcom/prineside/tdi2/managers/MusicManager;

    invoke-virtual {v0, v3, v2, v1}, Lcom/prineside/tdi2/managers/MusicManager;->setVolume(FFZ)V

    goto :goto_4

    :cond_8
    :goto_3
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->musicManager:Lcom/prineside/tdi2/managers/MusicManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/MusicManager;->stopMusic()V

    iput-boolean v1, p0, Lcom/prineside/tdi2/systems/SoundSystem;->d:Z

    :goto_4
    return-void
.end method
