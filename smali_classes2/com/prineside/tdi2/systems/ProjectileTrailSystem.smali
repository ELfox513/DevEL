.class public Lcom/prineside/tdi2/systems/ProjectileTrailSystem;
.super Lcom/prineside/tdi2/GameSystem;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/NAGS;
.end annotation


# instance fields
.field public final a:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/ProjectileTrail;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/prineside/tdi2/GameSystem;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v1, Lcom/prineside/tdi2/ProjectileTrail;

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-direct {v0, v2, v3, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/ProjectileTrailSystem;->a:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    return-void
.end method


# virtual methods
.method public addTrail(Lcom/prineside/tdi2/ProjectileTrail;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->canSkipMediaUpdate()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isProjectileTrailsDrawing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/prineside/tdi2/ProjectileTrail;->free()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/systems/ProjectileTrailSystem;->a:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no trails now!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dispose()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    const-string v1, "Particles count"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/DebugManager;->unregisterValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ProjectileTrailSystem;->a:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->clear()V

    invoke-super {p0}, Lcom/prineside/tdi2/GameSystem;->dispose()V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V
    .locals 3

    iget-object p3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p3, p3, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {p3}, Lcom/prineside/tdi2/systems/GameStateSystem;->isGameOver()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p2, p2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    invoke-virtual {p2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getTickRateDeltaTime()F

    move-result p2

    :cond_0
    sget-object p3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p3, p3, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {p3}, Lcom/prineside/tdi2/managers/SettingsManager;->isProjectilesDrawing()Z

    move-result p3

    if-eqz p3, :cond_3

    sget-object p3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p3, p3, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {p3}, Lcom/prineside/tdi2/managers/SettingsManager;->isProjectileTrailsDrawing()Z

    move-result p3

    if-eqz p3, :cond_3

    sget-object p3, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object p3, p0, Lcom/prineside/tdi2/systems/ProjectileTrailSystem;->a:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 p3, 0x0

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ProjectileTrailSystem;->a:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_0
    if-ge p3, v0, :cond_2

    iget-object v1, p0, Lcom/prineside/tdi2/systems/ProjectileTrailSystem;->a:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/ProjectileTrail;

    aget-object v1, v1, p3

    invoke-interface {v1, p2}, Lcom/prineside/tdi2/ProjectileTrail;->update(F)V

    invoke-interface {v1}, Lcom/prineside/tdi2/ProjectileTrail;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/prineside/tdi2/systems/ProjectileTrailSystem;->a:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v2, p3}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeIndex(I)Ljava/lang/Object;

    invoke-interface {v1}, Lcom/prineside/tdi2/ProjectileTrail;->free()V

    goto :goto_1

    :cond_1
    invoke-interface {v1, p1}, Lcom/prineside/tdi2/ProjectileTrail;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/prineside/tdi2/systems/ProjectileTrailSystem;->a:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    :cond_3
    return-void
.end method

.method public getSystemName()Ljava/lang/String;
    .locals 1

    const-string v0, "ProjectileTrail"

    return-object v0
.end method
