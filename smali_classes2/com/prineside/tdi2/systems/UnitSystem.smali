.class public Lcom/prineside/tdi2/systems/UnitSystem;
.super Lcom/prineside/tdi2/GameSystem;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/systems/UnitSystem$UnitSystemListener;
    }
.end annotation


# static fields
.field public static final b:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/tiles/SpawnTile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public listeners:Lcom/prineside/tdi2/ListenerGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/prineside/tdi2/ListenerGroup<",
            "Lcom/prineside/tdi2/systems/UnitSystem$UnitSystemListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/systems/UnitSystem;->b:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/prineside/tdi2/GameSystem;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/prineside/tdi2/systems/UnitSystem;->a:I

    new-instance v0, Lcom/prineside/tdi2/ListenerGroup;

    const-class v1, Lcom/prineside/tdi2/systems/UnitSystem$UnitSystemListener;

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/UnitSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    return-void
.end method


# virtual methods
.method public final a(Lcom/prineside/tdi2/Unit;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    invoke-virtual {p1}, Lcom/prineside/tdi2/Registrable;->setUnregistered()V

    return-void
.end method

.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/UnitSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->clear()V

    sget-object v0, Lcom/prineside/tdi2/systems/UnitSystem;->b:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    invoke-super {p0}, Lcom/prineside/tdi2/GameSystem;->dispose()V

    return-void
.end method

.method public drawFlying(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V
    .locals 5

    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-gez v1, :cond_0

    const/4 p3, 0x0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p3, v0

    if-lez v1, :cond_1

    const/high16 p3, 0x3f800000    # 1.0f

    :cond_1
    sget-object v0, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/MapSystem;->spawnedUnits:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/MapSystem;->spawnedUnits:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v3, v3, Lcom/prineside/tdi2/systems/MapSystem;->spawnedUnits:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/Unit;

    aget-object v3, v3, v2

    iget-boolean v4, v3, Lcom/prineside/tdi2/Unit;->setUpByUnitSystem:Z

    if-eqz v4, :cond_3

    iget-boolean v4, v3, Lcom/prineside/tdi2/Unit;->drawOverEnemies:Z

    if-eqz v4, :cond_3

    iget-object v4, v3, Lcom/prineside/tdi2/Unit;->currentTile:Lcom/prineside/tdi2/Tile;

    if-eqz v4, :cond_2

    iget-boolean v4, v4, Lcom/prineside/tdi2/Tile;->visibleOnScreen:Z

    if-eqz v4, :cond_3

    :cond_2
    invoke-virtual {v3, p3}, Lcom/prineside/tdi2/Unit;->applyDrawInterpolation(F)V

    invoke-virtual {v3, p1, p2}, Lcom/prineside/tdi2/Unit;->drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget-object p2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p2, p2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object p2, p2, Lcom/prineside/tdi2/systems/MapSystem;->spawnedUnits:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object p3, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->DBG_DRAW_UNITS_BBOX:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {p2, p3}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide p2

    const-wide/16 v2, 0x0

    cmpl-double v0, p2, v2

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->renderingManager:Lcom/prineside/tdi2/managers/RenderingManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/RenderingManager;->shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->getProjectionMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->renderingManager:Lcom/prineside/tdi2/managers/RenderingManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/RenderingManager;->shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    sget-object p3, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->begin(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->renderingManager:Lcom/prineside/tdi2/managers/RenderingManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/RenderingManager;->shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    sget-object p3, Lcom/prineside/tdi2/utils/MaterialColor$CYAN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->renderingManager:Lcom/prineside/tdi2/managers/RenderingManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/RenderingManager;->shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object p2

    const/high16 p3, 0x3f000000    # 0.5f

    iput p3, p2, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget-object p2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p2, p2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object p2, p2, Lcom/prineside/tdi2/systems/MapSystem;->spawnedUnits:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget p2, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_1
    if-ge v1, p2, :cond_6

    iget-object p3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p3, p3, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object p3, p3, Lcom/prineside/tdi2/systems/MapSystem;->spawnedUnits:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object p3, p3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast p3, [Lcom/prineside/tdi2/Unit;

    aget-object p3, p3, v1

    iget-boolean v0, p3, Lcom/prineside/tdi2/Unit;->setUpByUnitSystem:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->renderingManager:Lcom/prineside/tdi2/managers/RenderingManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/RenderingManager;->shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    iget-object v2, p3, Lcom/prineside/tdi2/Unit;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p3}, Lcom/prineside/tdi2/Unit;->getSize()F

    move-result p3

    invoke-virtual {v0, v3, v2, p3}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->circle(FFF)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->renderingManager:Lcom/prineside/tdi2/managers/RenderingManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/RenderingManager;->shapeRenderer:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->end()V

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->begin()V

    :cond_7
    sget-object p2, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method

.method public drawGrounded(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V
    .locals 4

    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-gez v1, :cond_0

    const/4 p3, 0x0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p3, v0

    if-lez v1, :cond_1

    const/high16 p3, 0x3f800000    # 1.0f

    :cond_1
    sget-object v0, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/MapSystem;->spawnedUnits:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/MapSystem;->spawnedUnits:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_0
    if-ge v0, v1, :cond_4

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v2, v2, Lcom/prineside/tdi2/systems/MapSystem;->spawnedUnits:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/Unit;

    aget-object v2, v2, v0

    iget-boolean v3, v2, Lcom/prineside/tdi2/Unit;->setUpByUnitSystem:Z

    if-eqz v3, :cond_3

    iget-boolean v3, v2, Lcom/prineside/tdi2/Unit;->drawOverEnemies:Z

    if-nez v3, :cond_3

    iget-object v3, v2, Lcom/prineside/tdi2/Unit;->currentTile:Lcom/prineside/tdi2/Tile;

    if-eqz v3, :cond_2

    iget-boolean v3, v3, Lcom/prineside/tdi2/Tile;->visibleOnScreen:Z

    if-eqz v3, :cond_3

    :cond_2
    invoke-virtual {v2, p3}, Lcom/prineside/tdi2/Unit;->applyDrawInterpolation(F)V

    invoke-virtual {v2, p1, p2}, Lcom/prineside/tdi2/Unit;->drawBatch(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object p1, p1, Lcom/prineside/tdi2/systems/MapSystem;->spawnedUnits:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    return-void
.end method

.method public getSystemName()Ljava/lang/String;
    .locals 1

    const-string v0, "Unit"

    return-object v0
.end method

.method public killUnit(Lcom/prineside/tdi2/Unit;Lcom/prineside/tdi2/Enemy;)V
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->unitManager:Lcom/prineside/tdi2/managers/UnitManager;

    iget v1, p1, Lcom/prineside/tdi2/Unit;->type:I

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/UnitManager;->getFactory(I)Lcom/prineside/tdi2/Unit$Factory;

    move-result-object v0

    invoke-interface {v0}, Lcom/prineside/tdi2/Unit$Factory;->getBreakParticle()Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    move-result-object v0

    iget-object v1, p1, Lcom/prineside/tdi2/Unit;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/LimitedParticleType;->UNIT_DEAD:Lcom/prineside/tdi2/enums/LimitedParticleType;

    iget-object v3, p1, Lcom/prineside/tdi2/Unit;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v1, v0, v2, v4, v3}, Lcom/prineside/tdi2/systems/ParticleSystem;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;Lcom/prineside/tdi2/enums/LimitedParticleType;FF)V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/systems/UnitSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/prineside/tdi2/systems/UnitSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/prineside/tdi2/systems/UnitSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v2, v0}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/systems/UnitSystem$UnitSystemListener;

    invoke-interface {v2, p1, p2}, Lcom/prineside/tdi2/systems/UnitSystem$UnitSystemListener;->unitDie(Lcom/prineside/tdi2/Unit;Lcom/prineside/tdi2/Enemy;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/prineside/tdi2/systems/UnitSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p2}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/systems/UnitSystem;->a(Lcom/prineside/tdi2/Unit;)V

    return-void
.end method

.method public preparePathToRandomSpawn(Lcom/prineside/tdi2/Unit;Lcom/prineside/tdi2/Tile;)Z
    .locals 7

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    sget-object v0, Lcom/prineside/tdi2/systems/UnitSystem;->b:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v1

    iget-object v1, v1, Lcom/prineside/tdi2/Map;->spawnTiles:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/GameStateSystem;->randomInt(I)I

    move-result v2

    sget-object v3, Lcom/prineside/tdi2/systems/UnitSystem;->b:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/tiles/SpawnTile;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/prineside/tdi2/tiles/SpawnTile;

    invoke-virtual {v3, v0, v5}, Lcom/badlogic/gdx/utils/Array;->set(ILjava/lang/Object;)V

    invoke-virtual {v3, v2, v4}, Lcom/badlogic/gdx/utils/Array;->set(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_1
    sget-object v3, Lcom/prineside/tdi2/systems/UnitSystem;->b:Lcom/badlogic/gdx/utils/Array;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v4, :cond_2

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/Tile;

    iget-object v5, p1, Lcom/prineside/tdi2/Unit;->graphPath:Lcom/prineside/tdi2/Path;

    invoke-virtual {v5}, Lcom/prineside/tdi2/Path;->clear()V

    iget-object v5, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v5}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v5

    iget-object v6, p1, Lcom/prineside/tdi2/Unit;->graphPath:Lcom/prineside/tdi2/Path;

    invoke-virtual {v5, v6, p2, v4}, Lcom/prineside/tdi2/Map;->findPath(Lcom/prineside/tdi2/Path;Lcom/prineside/tdi2/Tile;Lcom/prineside/tdi2/Tile;)Z

    move-result v5

    if-eqz v5, :cond_1

    iput-object p2, p1, Lcom/prineside/tdi2/Unit;->startingTile:Lcom/prineside/tdi2/Tile;

    iput-object v4, p1, Lcom/prineside/tdi2/Unit;->targetTile:Lcom/prineside/tdi2/Tile;

    const/4 p2, 0x5

    iput p2, p1, Lcom/prineside/tdi2/Unit;->sideShiftIndex:I

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->clear()V

    iget-object p2, p1, Lcom/prineside/tdi2/Unit;->graphPath:Lcom/prineside/tdi2/Path;

    iget v0, p1, Lcom/prineside/tdi2/Unit;->passedTiles:F

    iget v2, p1, Lcom/prineside/tdi2/Unit;->sideShiftIndex:I

    invoke-virtual {p2, v0, v2}, Lcom/prineside/tdi2/Path;->getRotation(FI)F

    move-result p2

    iput p2, p1, Lcom/prineside/tdi2/Unit;->angle:F

    iget-object p2, p1, Lcom/prineside/tdi2/Unit;->position:Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, p1, Lcom/prineside/tdi2/Unit;->graphPath:Lcom/prineside/tdi2/Path;

    iget v2, p1, Lcom/prineside/tdi2/Unit;->passedTiles:F

    iget v3, p1, Lcom/prineside/tdi2/Unit;->sideShiftIndex:I

    invoke-virtual {v0, v2, v3}, Lcom/prineside/tdi2/Path;->getPosition(FI)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/Unit;->applyDrawInterpolation(F)V

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->clear()V

    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Registrable;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/systems/UnitSystem;->a:I

    const-class v0, Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/ListenerGroup;

    iput-object p1, p0, Lcom/prineside/tdi2/systems/UnitSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    return-void
.end method

.method public register(Lcom/prineside/tdi2/Unit;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    iget v0, p0, Lcom/prineside/tdi2/systems/UnitSystem;->a:I

    iput v0, p1, Lcom/prineside/tdi2/Unit;->id:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/prineside/tdi2/systems/UnitSystem;->a:I

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/Registrable;->setRegistered(Lcom/prineside/tdi2/GameSystemProvider;)V

    return-void
.end method

.method public setup()V
    .locals 0

    return-void
.end method

.method public update(F)V
    .locals 7

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/MapSystem;->spawnedUnits:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/MapSystem;->spawnedUnits:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v2, v2, Lcom/prineside/tdi2/systems/MapSystem;->spawnedUnits:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/Unit;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/prineside/tdi2/Unit;->setUpByUnitSystem:Z

    iget-boolean v3, v2, Lcom/prineside/tdi2/Unit;->staticPosition:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/systems/UnitSystem;->updateUnitCurrentTile(Lcom/prineside/tdi2/Unit;)V

    invoke-virtual {v2, p1}, Lcom/prineside/tdi2/Unit;->update(F)V

    goto :goto_1

    :cond_0
    iget v3, v2, Lcom/prineside/tdi2/Unit;->passedTiles:F

    invoke-virtual {v2, p1}, Lcom/prineside/tdi2/Unit;->getPassedTilesDelta(F)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Lcom/prineside/tdi2/Unit;->passedTiles:F

    iget-object v4, v2, Lcom/prineside/tdi2/Unit;->graphPath:Lcom/prineside/tdi2/Path;

    invoke-virtual {v4}, Lcom/prineside/tdi2/Path;->getLengthInTiles()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/prineside/tdi2/systems/UnitSystem;->killUnit(Lcom/prineside/tdi2/Unit;Lcom/prineside/tdi2/Enemy;)V

    goto :goto_1

    :cond_1
    iget v3, v2, Lcom/prineside/tdi2/Unit;->passedTiles:F

    const/high16 v4, -0x41000000    # -0.5f

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_2

    iget-object v4, v2, Lcom/prineside/tdi2/Unit;->graphPath:Lcom/prineside/tdi2/Path;

    iget v5, v2, Lcom/prineside/tdi2/Unit;->sideShiftIndex:I

    invoke-virtual {v4, v3, v5}, Lcom/prineside/tdi2/Path;->getRotation(FI)F

    move-result v3

    iput v3, v2, Lcom/prineside/tdi2/Unit;->angle:F

    iget-object v3, v2, Lcom/prineside/tdi2/Unit;->position:Lcom/badlogic/gdx/math/Vector2;

    iget-object v4, v2, Lcom/prineside/tdi2/Unit;->graphPath:Lcom/prineside/tdi2/Path;

    iget v5, v2, Lcom/prineside/tdi2/Unit;->passedTiles:F

    iget v6, v2, Lcom/prineside/tdi2/Unit;->sideShiftIndex:I

    invoke-virtual {v4, v5, v6}, Lcom/prineside/tdi2/Path;->getPosition(FI)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/systems/UnitSystem;->updateUnitCurrentTile(Lcom/prineside/tdi2/Unit;)V

    invoke-virtual {v2, p1}, Lcom/prineside/tdi2/Unit;->update(F)V

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v2, Lcom/prineside/tdi2/Unit;->passedTiles:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " passed tiles"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UnitSystem"

    invoke-static {v4, v3}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v3, v2}, Lcom/prineside/tdi2/systems/MapSystem;->h(Lcom/prineside/tdi2/Unit;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object p1, p1, Lcom/prineside/tdi2/systems/MapSystem;->spawnedUnits:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    return-void
.end method

.method public updateUnitCurrentTile(Lcom/prineside/tdi2/Unit;)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    iget-object v1, p1, Lcom/prineside/tdi2/Unit;->position:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v2, v1}, Lcom/prineside/tdi2/Map;->getTileByMapPos(FF)Lcom/prineside/tdi2/Tile;

    move-result-object v0

    iget-object v1, p1, Lcom/prineside/tdi2/Unit;->currentTile:Lcom/prineside/tdi2/Tile;

    if-eq v1, v0, :cond_2

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/Tile;->unregisterUnit(Lcom/prineside/tdi2/Unit;)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/Tile;->registerUnit(Lcom/prineside/tdi2/Unit;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/prineside/tdi2/Unit;->currentTile:Lcom/prineside/tdi2/Tile;

    :cond_2
    :goto_0
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Registrable;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget v0, p0, Lcom/prineside/tdi2/systems/UnitSystem;->a:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget-object v0, p0, Lcom/prineside/tdi2/systems/UnitSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
