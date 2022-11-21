.class public Lcom/prineside/tdi2/enemies/bosses/BrootEnemy;
.super Lcom/prineside/tdi2/Enemy;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/enemies/bosses/BrootEnemy$BrootEnemyFactory;
    }
.end annotation


# static fields
.field public static final RAGE_DURATION:F = 8.0f


# instance fields
.field public v:Z

.field public w:F

.field public x:F
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public y:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/EnemyType;->BROOT_BOSS:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Enemy;-><init>(Lcom/prineside/tdi2/enums/EnemyType;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/enemies/bosses/BrootEnemy$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/enemies/bosses/BrootEnemy;-><init>()V

    return-void
.end method


# virtual methods
.method public dynamicPathfindingAllowed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAbilityVulnerability(Lcom/prineside/tdi2/enums/AbilityType;)F
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/AbilityType;->BALL_LIGHTNING:Lcom/prineside/tdi2/enums/AbilityType;

    if-ne p1, v0, :cond_0

    const p1, 0x3dcccccd    # 0.1f

    return p1

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public getBaseDamage()F
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    return v0
.end method

.method public getBuffedSpeed()F
    .locals 2

    invoke-super {p0}, Lcom/prineside/tdi2/Enemy;->getBuffedSpeed()F

    move-result v0

    invoke-virtual {p0}, Lcom/prineside/tdi2/enemies/bosses/BrootEnemy;->isInRage()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3f333333    # 0.7f

    mul-float v0, v0, v1

    :cond_0
    return v0
.end method

.method public getSize()F
    .locals 1

    const v0, 0x424ccccd    # 51.2f

    return v0
.end method

.method public getSquaredSize()F
    .locals 1

    const v0, 0x4523d70b

    return v0
.end method

.method public hasDrawPriority()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public healthRestoredWithDamage()V
    .locals 3

    iget v0, p0, Lcom/prineside/tdi2/enemies/bosses/BrootEnemy;->x:F

    const v1, 0x3dcccccd    # 0.1f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/enemies/bosses/BrootEnemy;->x:F

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/EnemyManager;->F:Lcom/prineside/tdi2/managers/EnemyManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/EnemyManager$Factories;->BROOT_BOSS:Lcom/prineside/tdi2/enemies/bosses/BrootEnemy$BrootEnemyFactory;

    iget-object v0, v0, Lcom/prineside/tdi2/enemies/bosses/BrootEnemy$BrootEnemyFactory;->t:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {p0}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/prineside/tdi2/systems/ParticleSystem;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;Z)Z

    :cond_0
    return-void
.end method

.method public isInRage()Z
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/enemies/bosses/BrootEnemy;->v:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/prineside/tdi2/enemies/bosses/BrootEnemy;->w:F

    const/high16 v1, 0x41000000    # 8.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Enemy;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/prineside/tdi2/enemies/bosses/BrootEnemy;->v:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/enemies/bosses/BrootEnemy;->w:F

    return-void
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Lcom/prineside/tdi2/Enemy;->reset()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/enemies/bosses/BrootEnemy;->v:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/enemies/bosses/BrootEnemy;->w:F

    iput v0, p0, Lcom/prineside/tdi2/enemies/bosses/BrootEnemy;->x:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/enemies/bosses/BrootEnemy;->y:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    return-void
.end method

.method public setUnregistered()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/enemies/bosses/BrootEnemy;->y:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->allowCompletion()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/enemies/bosses/BrootEnemy;->y:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    :cond_0
    invoke-super {p0}, Lcom/prineside/tdi2/Enemy;->setUnregistered()V

    return-void
.end method

.method public startRage()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/enemies/bosses/BrootEnemy;->v:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/prineside/tdi2/enemies/bosses/BrootEnemy;->w:F

    iget-object v1, p0, Lcom/prineside/tdi2/enemies/bosses/BrootEnemy;->y:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->allowCompletion()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/prineside/tdi2/enemies/bosses/BrootEnemy;->y:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    :cond_0
    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/ParticleSystem;->willParticleBeSkipped()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/EnemyManager;->F:Lcom/prineside/tdi2/managers/EnemyManager$Factories;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/EnemyManager$Factories;->BROOT_BOSS:Lcom/prineside/tdi2/enemies/bosses/BrootEnemy$BrootEnemyFactory;

    iget-object v1, v1, Lcom/prineside/tdi2/enemies/bosses/BrootEnemy$BrootEnemyFactory;->s:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    iput-object v1, p0, Lcom/prineside/tdi2/enemies/bosses/BrootEnemy;->y:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    invoke-virtual {v2, v1, v0}, Lcom/prineside/tdi2/systems/ParticleSystem;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;Z)Z

    :cond_1
    return-void
.end method

.method public updateRageState(F)V
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/enemies/bosses/BrootEnemy;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/enemies/bosses/BrootEnemy;->x:F

    iget-boolean v0, p0, Lcom/prineside/tdi2/enemies/bosses/BrootEnemy;->v:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/prineside/tdi2/enemies/bosses/BrootEnemy;->w:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/enemies/bosses/BrootEnemy;->w:F

    const/high16 p1, 0x41000000    # 8.0f

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/enemies/bosses/BrootEnemy;->y:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->allowCompletion()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/prineside/tdi2/enemies/bosses/BrootEnemy;->y:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/enemies/bosses/BrootEnemy;->isInRage()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/prineside/tdi2/enemies/bosses/BrootEnemy;->y:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    :cond_1
    return-void
.end method

.method public wasInRage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/enemies/bosses/BrootEnemy;->v:Z

    return v0
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Enemy;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-boolean p1, p0, Lcom/prineside/tdi2/enemies/bosses/BrootEnemy;->v:Z

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget p1, p0, Lcom/prineside/tdi2/enemies/bosses/BrootEnemy;->w:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    return-void
.end method
