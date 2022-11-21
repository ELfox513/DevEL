.class public Lcom/prineside/tdi2/abilities/SmokeBombAbility;
.super Lcom/prineside/tdi2/Ability;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/abilities/SmokeBombAbility$SmokeBombAbilityFactory;
    }
.end annotation


# static fields
.field public static final s:[I

.field public static final t:[[I

.field public static final u:Lcom/badlogic/gdx/utils/StringBuilder;


# instance fields
.field public b:F

.field public d:F

.field public k:I

.field public p:I

.field public q:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public r:Lcom/prineside/tdi2/shapes/Circle;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xb

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/prineside/tdi2/abilities/SmokeBombAbility;->s:[I

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

    sput-object v1, Lcom/prineside/tdi2/abilities/SmokeBombAbility;->t:[[I

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/abilities/SmokeBombAbility;->u:Lcom/badlogic/gdx/utils/StringBuilder;

    return-void

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
        0x4
        0x8
        0x14
        0x19
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x12c
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x4
        0x8
        0x14
        0x23
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
        0x8
        0x14
        0x2d
        0x0
        0x0
        0x0
        0xc8
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
        0x37
        0x50
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
        0x19
        0x3c
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/AbilityType;->SMOKE_BOMB:Lcom/prineside/tdi2/enums/AbilityType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Ability;-><init>(Lcom/prineside/tdi2/enums/AbilityType;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/abilities/SmokeBombAbility$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/abilities/SmokeBombAbility;-><init>()V

    return-void
.end method

.method public static synthetic b()[I
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/abilities/SmokeBombAbility;->s:[I

    return-object v0
.end method

.method public static synthetic c()[[I
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/abilities/SmokeBombAbility;->t:[[I

    return-object v0
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 13

    iget-object p2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p2, p2, Lcom/prineside/tdi2/GameSystemProvider;->_mapRendering:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-virtual {p2}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->getDrawMode()Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    move-result-object p2

    sget-object v0, Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;->DETAILED:Lcom/prineside/tdi2/systems/MapRenderingSystem$DrawMode;

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/prineside/tdi2/abilities/SmokeBombAbility;->r:Lcom/prineside/tdi2/shapes/Circle;

    if-nez p2, :cond_0

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->shapeManager:Lcom/prineside/tdi2/managers/ShapeManager;

    if-eqz p2, :cond_0

    sget-object v0, Lcom/prineside/tdi2/enums/ShapeType;->CIRCLE:Lcom/prineside/tdi2/enums/ShapeType;

    invoke-virtual {p2, v0}, Lcom/prineside/tdi2/managers/ShapeManager;->getFactory(Lcom/prineside/tdi2/enums/ShapeType;)Lcom/prineside/tdi2/Shape$Factory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/prineside/tdi2/Shape$Factory;->obtain()Lcom/prineside/tdi2/Shape;

    move-result-object p2

    check-cast p2, Lcom/prineside/tdi2/shapes/Circle;

    iput-object p2, p0, Lcom/prineside/tdi2/abilities/SmokeBombAbility;->r:Lcom/prineside/tdi2/shapes/Circle;

    sget-object p2, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P300:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    const v1, 0x3d8f5c29    # 0.07f

    iput v1, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object p2

    const v1, 0x3e570a3d    # 0.21f

    iput v1, p2, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget-object v2, p0, Lcom/prineside/tdi2/abilities/SmokeBombAbility;->r:Lcom/prineside/tdi2/shapes/Circle;

    iget v1, p0, Lcom/prineside/tdi2/abilities/SmokeBombAbility;->k:I

    int-to-float v3, v1

    iget v1, p0, Lcom/prineside/tdi2/abilities/SmokeBombAbility;->p:I

    int-to-float v4, v1

    const/4 v5, 0x0

    const/high16 v6, 0x43800000    # 256.0f

    const/16 v7, 0x20

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v8

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v9

    invoke-virtual/range {v2 .. v9}, Lcom/prineside/tdi2/shapes/Circle;->setup(FFFFIFF)V

    :cond_0
    iget-object p2, p0, Lcom/prineside/tdi2/abilities/SmokeBombAbility;->r:Lcom/prineside/tdi2/shapes/Circle;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lcom/prineside/tdi2/shapes/Circle;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    const/4 p2, 0x0

    const v0, 0x3f0f5c29    # 0.56f

    invoke-virtual {p1, p2, p2, p2, v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/AssetManager;->TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    iget-object v3, v1, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->iconSmokeBomb:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    iget v1, p0, Lcom/prineside/tdi2/abilities/SmokeBombAbility;->k:I

    add-int/lit8 v1, v1, -0x20

    add-int/lit8 v1, v1, 0x3

    int-to-float v4, v1

    iget v1, p0, Lcom/prineside/tdi2/abilities/SmokeBombAbility;->p:I

    add-int/lit8 v1, v1, -0x20

    add-int/lit8 v1, v1, -0x3

    int-to-float v5, v1

    const/high16 v6, 0x42800000    # 64.0f

    const/high16 v7, 0x42800000    # 64.0f

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P300:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/AssetManager;->TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    iget-object v4, v2, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->iconSmokeBomb:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    iget v2, p0, Lcom/prineside/tdi2/abilities/SmokeBombAbility;->k:I

    add-int/lit8 v2, v2, -0x20

    int-to-float v5, v2

    iget v2, p0, Lcom/prineside/tdi2/abilities/SmokeBombAbility;->p:I

    add-int/lit8 v2, v2, -0x20

    int-to-float v6, v2

    const/high16 v8, 0x42800000    # 64.0f

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    sget-object v2, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v11, Lcom/prineside/tdi2/abilities/SmokeBombAbility;->u:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    iget v3, p0, Lcom/prineside/tdi2/abilities/SmokeBombAbility;->b:F

    float-to-int v3, v3

    invoke-virtual {v11, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v3, 0x2e

    invoke-virtual {v11, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    iget v3, p0, Lcom/prineside/tdi2/abilities/SmokeBombAbility;->b:F

    const/high16 v4, 0x3f800000    # 1.0f

    rem-float/2addr v3, v4

    const/high16 v4, 0x41200000    # 10.0f

    mul-float v3, v3, v4

    float-to-int v3, v3

    invoke-virtual {v11, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v12

    invoke-virtual {v12, p2, p2, p2, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(FFFF)V

    iget p2, p0, Lcom/prineside/tdi2/abilities/SmokeBombAbility;->k:I

    add-int/lit8 p2, p2, -0x1

    int-to-float p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    add-float v6, p2, v0

    iget p2, p0, Lcom/prineside/tdi2/abilities/SmokeBombAbility;->p:I

    add-int/lit8 p2, p2, 0x40

    int-to-float p2, p2

    sub-float v7, p2, v0

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v3, v12

    move-object v4, p1

    move-object v5, v11

    invoke-virtual/range {v3 .. v10}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FFFIZ)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    invoke-virtual {v12, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget p2, p0, Lcom/prineside/tdi2/abilities/SmokeBombAbility;->k:I

    add-int/lit8 p2, p2, -0x1

    int-to-float v6, p2

    iget p2, p0, Lcom/prineside/tdi2/abilities/SmokeBombAbility;->p:I

    add-int/lit8 p2, p2, 0x40

    int-to-float v7, p2

    invoke-virtual/range {v3 .. v10}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FFFIZ)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    invoke-virtual {v12, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_1
    return-void
.end method

.method public isDone()Z
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/abilities/SmokeBombAbility;->b:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Ability;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/abilities/SmokeBombAbility;->b:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/abilities/SmokeBombAbility;->d:F

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/abilities/SmokeBombAbility;->k:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readInt()I

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/abilities/SmokeBombAbility;->p:I

    return-void
.end method

.method public setUnregistered()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/abilities/SmokeBombAbility;->q:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->allowCompletion()V

    iput-object v1, p0, Lcom/prineside/tdi2/abilities/SmokeBombAbility;->q:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/abilities/SmokeBombAbility;->r:Lcom/prineside/tdi2/shapes/Circle;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/prineside/tdi2/shapes/Circle;->free()V

    iput-object v1, p0, Lcom/prineside/tdi2/abilities/SmokeBombAbility;->r:Lcom/prineside/tdi2/shapes/Circle;

    :cond_1
    invoke-super {p0}, Lcom/prineside/tdi2/Registrable;->setUnregistered()V

    return-void
.end method

.method public start(II)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->ABILITY_SMOKE_BOMB_COINS:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/prineside/tdi2/Ability;->a:F

    iput p1, p0, Lcom/prineside/tdi2/abilities/SmokeBombAbility;->k:I

    iput p2, p0, Lcom/prineside/tdi2/abilities/SmokeBombAbility;->p:I

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->ABILITY_SMOKE_BOMB_DURATION:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result v0

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->ABILITY_SMOKE_BOMB_DAMAGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, p0, Lcom/prineside/tdi2/abilities/SmokeBombAbility;->d:F

    iput v0, p0, Lcom/prineside/tdi2/abilities/SmokeBombAbility;->b:F

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->abilityManager:Lcom/prineside/tdi2/managers/AbilityManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/AbilityManager;->F:Lcom/prineside/tdi2/managers/AbilityManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/AbilityManager$Factories;->SMOKE_BOMB:Lcom/prineside/tdi2/abilities/SmokeBombAbility$SmokeBombAbilityFactory;

    iget-object v0, v0, Lcom/prineside/tdi2/abilities/SmokeBombAbility$SmokeBombAbilityFactory;->c:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    iput-object v0, p0, Lcom/prineside/tdi2/abilities/SmokeBombAbility;->q:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/prineside/tdi2/systems/ParticleSystem;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;Z)Z

    iget-object v0, p0, Lcom/prineside/tdi2/abilities/SmokeBombAbility;->q:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setPosition(FF)V

    :cond_0
    return-void
.end method

.method public update(F)V
    .locals 9

    iget v0, p0, Lcom/prineside/tdi2/abilities/SmokeBombAbility;->b:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/abilities/SmokeBombAbility;->b:F

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/EnemySystem;->getTowersMaxDps()D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lcom/prineside/tdi2/abilities/SmokeBombAbility;->d:F

    mul-float v0, v0, v1

    mul-float v0, v0, p1

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object p1, p1, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p1, v2, :cond_2

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v1, v1, p1

    iget-object v2, v1, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v2}, Lcom/prineside/tdi2/Enemy;->getPosition()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, p0, Lcom/prineside/tdi2/abilities/SmokeBombAbility;->k:I

    int-to-float v4, v4

    iget v5, p0, Lcom/prineside/tdi2/abilities/SmokeBombAbility;->p:I

    int-to-float v5, v5

    invoke-static {v1, v3, v4, v5}, Lcom/prineside/tdi2/utils/PMath;->getSquareDistanceBetweenPoints(FFFF)F

    move-result v1

    const/high16 v3, 0x47800000    # 65536.0f

    cmpg-float v1, v1, v3

    if-gez v1, :cond_1

    sget-object v5, Lcom/prineside/tdi2/enums/DamageType;->POISON:Lcom/prineside/tdi2/enums/DamageType;

    invoke-virtual {v2, v5}, Lcom/prineside/tdi2/Enemy;->isVulnerableTo(Lcom/prineside/tdi2/enums/DamageType;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move v4, v0

    move-object v6, p0

    invoke-virtual/range {v1 .. v8}, Lcom/prineside/tdi2/systems/EnemySystem;->giveDamage(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/Tower;FLcom/prineside/tdi2/enums/DamageType;Lcom/prineside/tdi2/Ability;ZLcom/prineside/tdi2/Projectile;)Z

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Ability;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget p1, p0, Lcom/prineside/tdi2/abilities/SmokeBombAbility;->b:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/abilities/SmokeBombAbility;->d:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget p1, p0, Lcom/prineside/tdi2/abilities/SmokeBombAbility;->k:I

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    iget p1, p0, Lcom/prineside/tdi2/abilities/SmokeBombAbility;->p:I

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeInt(I)V

    return-void
.end method
