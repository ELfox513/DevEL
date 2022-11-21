.class public Lcom/prineside/tdi2/enemies/GenericEnemy;
.super Lcom/prineside/tdi2/Enemy;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/enemies/GenericEnemy$GenericEnemyFactory;
    }
.end annotation


# instance fields
.field public abilityVulnerability:[F

.field public allowsDynamicPathfinding:Z

.field public baseDamage:I

.field public buffVulnerability:[F

.field public color:Lcom/badlogic/gdx/graphics/Color;

.field public damageVulnerability:[Z

.field public drawPriority:Z

.field public isFlying:Z

.field public mayHaveRandomSideShift:Z

.field public size:F

.field public specialDamageVulnerability:[Z

.field public texture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public towerDamageMultiplier:[F


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/enums/EnemyType;->GENERIC:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Enemy;-><init>(Lcom/prineside/tdi2/enums/EnemyType;)V

    const v0, 0x41cccccd    # 25.6f

    iput v0, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->size:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->mayHaveRandomSideShift:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->drawPriority:Z

    iput v0, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->baseDamage:I

    iput-boolean v1, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->isFlying:Z

    iput-boolean v0, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->allowsDynamicPathfinding:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/enemies/GenericEnemy$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/enemies/GenericEnemy;-><init>()V

    return-void
.end method


# virtual methods
.method public canBeAttackedBy(Lcom/prineside/tdi2/Tower;)Z
    .locals 2

    iget-object v0, p1, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/enemies/GenericEnemy;->getTowerDamageMultiplier(Lcom/prineside/tdi2/enums/TowerType;)F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/prineside/tdi2/Enemy;->canBeAttackedBy(Lcom/prineside/tdi2/Tower;)Z

    move-result p1

    return p1
.end method

.method public canHaveRandomSideShift()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->mayHaveRandomSideShift:Z

    return v0
.end method

.method public dynamicPathfindingAllowed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->allowsDynamicPathfinding:Z

    return v0
.end method

.method public getAbilityVulnerability(Lcom/prineside/tdi2/enums/AbilityType;)F
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->abilityVulnerability:[F

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Enemy;->getAbilityVulnerability(Lcom/prineside/tdi2/enums/AbilityType;)F

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :goto_0
    return p1
.end method

.method public getBaseDamage()F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->baseDamage:I

    int-to-float v0, v0

    return v0
.end method

.method public getBreakParticle()Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;
    .locals 5

    invoke-super {p0}, Lcom/prineside/tdi2/Enemy;->getBreakParticle()Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/prineside/tdi2/enemies/GenericEnemy;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getTint()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->getColors()[F

    move-result-object v2

    iget v3, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    const/4 v4, 0x1

    aput v3, v2, v4

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/4 v3, 0x2

    aput v1, v2, v3

    return-object v0
.end method

.method public getBuffVulnerability(Lcom/prineside/tdi2/enums/BuffType;)F
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->buffVulnerability:[F

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/EnemySystem;->enemyBuffVulnerability:[[F

    iget-object v1, p0, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :goto_0
    return p1
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->color:Lcom/badlogic/gdx/graphics/Color;

    if-nez v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P500:Lcom/badlogic/gdx/graphics/Color;

    :cond_0
    return-object v0
.end method

.method public getEmojiTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/enemies/GenericEnemy;->getTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public getHighlightTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/enemies/GenericEnemy;->getTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public getHitParticle()Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;
    .locals 5

    invoke-super {p0}, Lcom/prineside/tdi2/Enemy;->getHitParticle()Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/prineside/tdi2/enemies/GenericEnemy;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getTint()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->getColors()[F

    move-result-object v2

    iget v3, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    const/4 v4, 0x1

    aput v3, v2, v4

    iget v1, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    const/4 v3, 0x2

    aput v1, v2, v3

    return-object v0
.end method

.method public getSize()F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->size:F

    return v0
.end method

.method public getSquaredSize()F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->size:F

    mul-float v0, v0, v0

    return v0
.end method

.method public getTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->texture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-nez v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object v1, p0, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/EnemyManager;->getFactory(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/Enemy$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Enemy$Factory;->getTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTowerDamageMultiplier(Lcom/prineside/tdi2/enums/TowerType;)F
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->towerDamageMultiplier:[F

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/TowerSystem;->towerEnemyDamageMultiplier:[[F

    iget-object v1, p0, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    :goto_0
    return p1
.end method

.method public hasDrawPriority()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->drawPriority:Z

    return v0
.end method

.method public isAir()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->isFlying:Z

    return v0
.end method

.method public isVulnerableTo(Lcom/prineside/tdi2/enums/DamageType;)Z
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->damageVulnerability:[Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/EnemySystem;->enemyDamageVulnerability:[[Z

    iget-object v1, p0, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-boolean p1, v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-boolean p1, v0, p1

    :goto_0
    return p1
.end method

.method public isVulnerableToSpecial(Lcom/prineside/tdi2/enums/SpecialDamageType;)Z
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->specialDamageVulnerability:[Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/EnemySystem;->enemySpecialDamageVulnerability:[[Z

    iget-object v1, p0, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-boolean p1, v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-boolean p1, v0, p1

    :goto_0
    return p1
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 3

    const-class v0, [Z

    const-class v1, [F

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Enemy;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v2

    iput v2, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->size:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->mayHaveRandomSideShift:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->drawPriority:Z

    invoke-virtual {p1, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    iput-object v2, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->towerDamageMultiplier:[F

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v2

    iput v2, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->baseDamage:I

    invoke-virtual {p1, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    iput-object v2, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->buffVulnerability:[F

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Z

    iput-object v2, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->damageVulnerability:[Z

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    iput-object v0, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->specialDamageVulnerability:[Z

    invoke-virtual {p1, p2, v1}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->abilityVulnerability:[F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->isFlying:Z

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->allowsDynamicPathfinding:Z

    const-class v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/Color;

    iput-object p1, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->color:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public reset()V
    .locals 3

    invoke-super {p0}, Lcom/prineside/tdi2/Enemy;->reset()V

    const v0, 0x41cccccd    # 25.6f

    iput v0, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->size:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->mayHaveRandomSideShift:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->drawPriority:Z

    iput v0, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->baseDamage:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->towerDamageMultiplier:[F

    iput-object v2, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->buffVulnerability:[F

    iput-object v2, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->damageVulnerability:[Z

    iput-object v2, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->specialDamageVulnerability:[Z

    iput-object v2, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->abilityVulnerability:[F

    iput-boolean v1, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->isFlying:Z

    iput-boolean v0, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->allowsDynamicPathfinding:Z

    iput-object v2, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->color:Lcom/badlogic/gdx/graphics/Color;

    iput-object v2, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->texture:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-void
.end method

.method public setAbilityVulnerability(Lcom/prineside/tdi2/enums/AbilityType;F)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->abilityVulnerability:[F

    if-nez v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/enums/AbilityType;->values:[Lcom/prineside/tdi2/enums/AbilityType;

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->abilityVulnerability:[F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->abilityVulnerability:[F

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aput p2, v0, p1

    return-void
.end method

.method public setBuffVulnerability(Lcom/prineside/tdi2/enums/BuffType;F)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->buffVulnerability:[F

    if-nez v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/enums/BuffType;->values:[Lcom/prineside/tdi2/enums/BuffType;

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->buffVulnerability:[F

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/EnemySystem;->enemyBuffVulnerability:[[F

    iget-object v1, p0, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->buffVulnerability:[F

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->buffVulnerability:[F

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aput p2, v0, p1

    return-void
.end method

.method public setDamageVulnerability(Lcom/prineside/tdi2/enums/DamageType;Z)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->damageVulnerability:[Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/enums/DamageType;->values:[Lcom/prineside/tdi2/enums/DamageType;

    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->damageVulnerability:[Z

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/EnemySystem;->enemyDamageVulnerability:[[Z

    iget-object v1, p0, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->damageVulnerability:[Z

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->damageVulnerability:[Z

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aput-boolean p2, v0, p1

    return-void
.end method

.method public setSpecialDamageVulnerability(Lcom/prineside/tdi2/enums/SpecialDamageType;Z)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->specialDamageVulnerability:[Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/enums/SpecialDamageType;->values:[Lcom/prineside/tdi2/enums/SpecialDamageType;

    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->specialDamageVulnerability:[Z

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/EnemySystem;->enemySpecialDamageVulnerability:[[Z

    iget-object v1, p0, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->specialDamageVulnerability:[Z

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->specialDamageVulnerability:[Z

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aput-boolean p2, v0, p1

    return-void
.end method

.method public setTowerDamageMultiplier(Lcom/prineside/tdi2/enums/TowerType;F)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->towerDamageMultiplier:[F

    if-nez v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/enums/TowerType;->values:[Lcom/prineside/tdi2/enums/TowerType;

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->towerDamageMultiplier:[F

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/TowerSystem;->towerEnemyDamageMultiplier:[[F

    iget-object v1, p0, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->towerDamageMultiplier:[F

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->towerDamageMultiplier:[F

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aput p2, v0, p1

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 4

    const-class v0, [Z

    const-class v1, [F

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Enemy;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget v2, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->size:F

    invoke-virtual {p2, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-boolean v2, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->mayHaveRandomSideShift:Z

    invoke-virtual {p2, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-boolean v2, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->drawPriority:Z

    invoke-virtual {p2, v2}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-object v2, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->towerDamageMultiplier:[F

    invoke-virtual {p1, p2, v2, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget v2, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->baseDamage:I

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget-object v2, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->buffVulnerability:[F

    invoke-virtual {p1, p2, v2, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->damageVulnerability:[Z

    invoke-virtual {p1, p2, v2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->specialDamageVulnerability:[Z

    invoke-virtual {p1, p2, v2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->abilityVulnerability:[F

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->isFlying:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->allowsDynamicPathfinding:Z

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/enemies/GenericEnemy;->color:Lcom/badlogic/gdx/graphics/Color;

    const-class v1, Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    return-void
.end method
