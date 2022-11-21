.class public Lcom/prineside/tdi2/modifiers/PowerModifier;
.super Lcom/prineside/tdi2/Modifier;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/modifiers/PowerModifier$PowerModifierFactory;
    }
.end annotation


# static fields
.field public static final q:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/prineside/tdi2/Tower;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public p:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/prineside/tdi2/modifiers/PowerModifier$1;

    invoke-direct {v0}, Lcom/prineside/tdi2/modifiers/PowerModifier$1;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/modifiers/PowerModifier;->q:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/ModifierType;->POWER:Lcom/prineside/tdi2/enums/ModifierType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Modifier;-><init>(Lcom/prineside/tdi2/enums/ModifierType;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/modifiers/PowerModifier$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/modifiers/PowerModifier;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Modifier;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/modifiers/PowerModifier;->p:F

    return-void
.end method

.method public update(F)V
    .locals 14

    invoke-super {p0, p1}, Lcom/prineside/tdi2/Modifier;->update(F)V

    iget v0, p0, Lcom/prineside/tdi2/modifiers/PowerModifier;->p:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/modifiers/PowerModifier;->p:F

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, p1

    if-ltz v1, :cond_2

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/modifiers/PowerModifier;->p:F

    iget-object p1, p0, Lcom/prineside/tdi2/Modifier;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v0, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    int-to-float v0, v0

    sget-object v1, Lcom/prineside/tdi2/modifiers/PowerModifier;->q:Ljava/util/Comparator;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->sort(Ljava/util/Comparator;)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/Modifier;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_2

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/Tower;

    iget v3, v2, Lcom/prineside/tdi2/Tower;->currentLevelExperience:F

    invoke-static {v0, v3}, Ljava/lang/StrictMath;->min(FF)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    if-eqz v5, :cond_1

    sub-float/2addr v0, v3

    iget-object v5, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    invoke-virtual {v5, v2, v3}, Lcom/prineside/tdi2/systems/TowerSystem;->removeExperienceRaw(Lcom/prineside/tdi2/Tower;F)F

    iget-object v5, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    :goto_1
    int-to-float v6, v5

    cmpg-float v6, v6, v3

    if-gez v6, :cond_0

    iget-object v6, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v7, v6, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->modifierManager:Lcom/prineside/tdi2/managers/ModifierManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/ModifierManager;->F:Lcom/prineside/tdi2/managers/ModifierManager$Factories;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/ModifierManager$Factories;->POWER:Lcom/prineside/tdi2/modifiers/PowerModifier$PowerModifierFactory;

    invoke-static {v6}, Lcom/prineside/tdi2/modifiers/PowerModifier$PowerModifierFactory;->b(Lcom/prineside/tdi2/modifiers/PowerModifier$PowerModifierFactory;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v8

    const/high16 v9, 0x41400000    # 12.0f

    invoke-virtual {v2}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v10

    invoke-virtual {v2}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v11

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/prineside/tdi2/Tile;->getX()I

    move-result v12

    invoke-virtual {p0}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/prineside/tdi2/Tile;->getY()I

    move-result v13

    invoke-virtual/range {v7 .. v13}, Lcom/prineside/tdi2/systems/ParticleSystem;->addOrbParticle(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FIIII)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    cmpl-float v2, v0, v4

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Modifier;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget p1, p0, Lcom/prineside/tdi2/modifiers/PowerModifier;->p:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    return-void
.end method
