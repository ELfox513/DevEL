.class public Lcom/prineside/tdi2/systems/ProjectileSystem;
.super Lcom/prineside/tdi2/GameSystem;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/systems/ProjectileSystem$ProjectileSystemListener;
    }
.end annotation


# instance fields
.field public listeners:Lcom/prineside/tdi2/ListenerGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/prineside/tdi2/ListenerGroup<",
            "Lcom/prineside/tdi2/systems/ProjectileSystem$ProjectileSystemListener;",
            ">;"
        }
    .end annotation
.end field

.field public nextProjectileId:I

.field public projectiles:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/Projectile;",
            ">;"
        }
    .end annotation
.end field

.field public scheduledUpdater:Lcom/prineside/tdi2/ScheduledUpdater;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/prineside/tdi2/GameSystem;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v1, Lcom/prineside/tdi2/Projectile;

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-direct {v0, v2, v3, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/ProjectileSystem;->projectiles:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v0, 0x1

    iput v0, p0, Lcom/prineside/tdi2/systems/ProjectileSystem;->nextProjectileId:I

    new-instance v0, Lcom/prineside/tdi2/ScheduledUpdater;

    invoke-direct {v0}, Lcom/prineside/tdi2/ScheduledUpdater;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/ProjectileSystem;->scheduledUpdater:Lcom/prineside/tdi2/ScheduledUpdater;

    new-instance v0, Lcom/prineside/tdi2/ListenerGroup;

    const-class v1, Lcom/prineside/tdi2/systems/ProjectileSystem$ProjectileSystemListener;

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/ProjectileSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ProjectileSystem;->projectiles:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/Projectile;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/prineside/tdi2/systems/ProjectileSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    iget-object v1, p0, Lcom/prineside/tdi2/systems/ProjectileSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/prineside/tdi2/systems/ProjectileSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v3, v2}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/systems/ProjectileSystem$ProjectileSystemListener;

    invoke-interface {v3, v0}, Lcom/prineside/tdi2/systems/ProjectileSystem$ProjectileSystemListener;->projectileUnregistered(Lcom/prineside/tdi2/Projectile;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/prineside/tdi2/systems/ProjectileSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->projectileManager:Lcom/prineside/tdi2/managers/ProjectileManager;

    iget-object v2, v0, Lcom/prineside/tdi2/Projectile;->type:Lcom/prineside/tdi2/enums/ProjectileType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/ProjectileManager;->getFactory(Lcom/prineside/tdi2/enums/ProjectileType;)Lcom/prineside/tdi2/Projectile$Factory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/Projectile$Factory;->free(Lcom/prineside/tdi2/Projectile;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/Registrable;->setUnregistered()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ProjectileSystem;->projectiles:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeIndex(I)Ljava/lang/Object;

    return-void
.end method

.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public dispose()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ProjectileSystem;->projectiles:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->clear()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    const-string v1, "Projectiles count"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/DebugManager;->unregisterValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ProjectileSystem;->scheduledUpdater:Lcom/prineside/tdi2/ScheduledUpdater;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ScheduledUpdater;->clear()V

    invoke-super {p0}, Lcom/prineside/tdi2/GameSystem;->dispose()V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isProjectilesDrawing()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-gez v1, :cond_1

    const/4 p3, 0x0

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p3, v0

    if-lez v1, :cond_2

    const/high16 p3, 0x3f800000    # 1.0f

    :cond_2
    sget-object v0, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ProjectileSystem;->projectiles:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/prineside/tdi2/systems/ProjectileSystem;->projectiles:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/Projectile;

    aget-object v1, v1, v0

    invoke-virtual {v1, p3}, Lcom/prineside/tdi2/Projectile;->applyDrawInterpolation(F)V

    iget-object v1, p0, Lcom/prineside/tdi2/systems/ProjectileSystem;->projectiles:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/Projectile;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/prineside/tdi2/Projectile;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public getSystemName()Ljava/lang/String;
    .locals 1

    const-string v0, "Projectile"

    return-object v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Registrable;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    const-class v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/ProjectileSystem;->projectiles:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/systems/ProjectileSystem;->nextProjectileId:I

    const-class v0, Lcom/prineside/tdi2/ScheduledUpdater;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/ScheduledUpdater;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/ProjectileSystem;->scheduledUpdater:Lcom/prineside/tdi2/ScheduledUpdater;

    const-class v0, Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/ListenerGroup;

    iput-object p1, p0, Lcom/prineside/tdi2/systems/ProjectileSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    return-void
.end method

.method public register(Lcom/prineside/tdi2/Projectile;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->checkGameplayUpdateAllowed()V

    invoke-virtual {p1}, Lcom/prineside/tdi2/Registrable;->isRegistered()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/prineside/tdi2/systems/ProjectileSystem;->nextProjectileId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/prineside/tdi2/systems/ProjectileSystem;->nextProjectileId:I

    iput v0, p1, Lcom/prineside/tdi2/Projectile;->id:I

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/Registrable;->setRegistered(Lcom/prineside/tdi2/GameSystemProvider;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ProjectileSystem;->projectiles:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/DebugManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    const-string v0, "Projectiles count"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/managers/DebugManager;->registerValue(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ProjectileSystem;->projectiles:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Already registered"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setup()V
    .locals 0

    return-void
.end method

.method public update(F)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ProjectileSystem;->projectiles:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ProjectileSystem;->projectiles:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/prineside/tdi2/systems/ProjectileSystem;->projectiles:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/Projectile;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Lcom/prineside/tdi2/Projectile;->update(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/systems/ProjectileSystem;->projectiles:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ProjectileSystem;->projectiles:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ProjectileSystem;->projectiles:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/prineside/tdi2/systems/ProjectileSystem;->projectiles:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/Projectile;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/prineside/tdi2/Projectile;->isDone()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/systems/ProjectileSystem;->a(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/prineside/tdi2/systems/ProjectileSystem;->projectiles:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/DebugManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->debugManager:Lcom/prineside/tdi2/managers/DebugManager;

    const-string v1, "Projectiles count"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/DebugManager;->registerValue(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/systems/ProjectileSystem;->projectiles:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_3
    iget-object v0, p0, Lcom/prineside/tdi2/systems/ProjectileSystem;->scheduledUpdater:Lcom/prineside/tdi2/ScheduledUpdater;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ScheduledUpdater;->process(F)V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Registrable;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ProjectileSystem;->projectiles:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget v0, p0, Lcom/prineside/tdi2/systems/ProjectileSystem;->nextProjectileId:I

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ProjectileSystem;->scheduledUpdater:Lcom/prineside/tdi2/ScheduledUpdater;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/ProjectileSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
