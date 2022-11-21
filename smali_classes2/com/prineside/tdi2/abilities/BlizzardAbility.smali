.class public Lcom/prineside/tdi2/abilities/BlizzardAbility;
.super Lcom/prineside/tdi2/Ability;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/abilities/BlizzardAbility$_MapSystemListener;,
        Lcom/prineside/tdi2/abilities/BlizzardAbility$BlizzardAbilityFactory;
    }
.end annotation


# static fields
.field public static final r:[I

.field public static final s:[[I


# instance fields
.field public b:Lcom/prineside/tdi2/abilities/BlizzardAbility$_MapSystemListener;

.field public d:F

.field public k:Lcom/badlogic/gdx/scenes/scene2d/Group;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public p:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public q:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xb

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/prineside/tdi2/abilities/BlizzardAbility;->r:[I

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

    sput-object v1, Lcom/prineside/tdi2/abilities/BlizzardAbility;->s:[[I

    return-void

    nop

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
        0x5
        0xa
        0x19
        0x0
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
        0x5
        0xa
        0x1e
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
        0xa
        0x14
        0x32
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
        0xa
        0x19
        0x2d
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
        0x19
        0x4b
        0x64
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/enums/AbilityType;->BLIZZARD:Lcom/prineside/tdi2/enums/AbilityType;

    invoke-direct {p0, v0}, Lcom/prineside/tdi2/Ability;-><init>(Lcom/prineside/tdi2/enums/AbilityType;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/abilities/BlizzardAbility$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/abilities/BlizzardAbility;-><init>()V

    return-void
.end method

.method public static synthetic b()[I
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/abilities/BlizzardAbility;->r:[I

    return-object v0
.end method

.method public static synthetic c()[[I
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/abilities/BlizzardAbility;->s:[[I

    return-object v0
.end method

.method public static synthetic d(Lcom/prineside/tdi2/abilities/BlizzardAbility;)F
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/abilities/BlizzardAbility;->d:F

    return p0
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 0

    return-void
.end method

.method public isDone()Z
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/abilities/BlizzardAbility;->d:F

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

.method public onDone()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/abilities/BlizzardAbility;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/abilities/BlizzardAbility;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const v1, 0x3e99999a    # 0.3f

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeOut(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v1

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->removeActor()Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/abilities/BlizzardAbility;->p:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->allowCompletion()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/abilities/BlizzardAbility;->p:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    iget-object v1, p0, Lcom/prineside/tdi2/abilities/BlizzardAbility;->q:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->allowCompletion()V

    iput-object v0, p0, Lcom/prineside/tdi2/abilities/BlizzardAbility;->q:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    :cond_1
    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Ability;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    const-class v0, Lcom/prineside/tdi2/abilities/BlizzardAbility$_MapSystemListener;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/abilities/BlizzardAbility$_MapSystemListener;

    iput-object p1, p0, Lcom/prineside/tdi2/abilities/BlizzardAbility;->b:Lcom/prineside/tdi2/abilities/BlizzardAbility$_MapSystemListener;

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/abilities/BlizzardAbility;->d:F

    return-void
.end method

.method public start(II)V
    .locals 5

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object p2, Lcom/prineside/tdi2/enums/GameValueType;->ABILITY_BLIZZARD_DURATION:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result p1

    iget-object p2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p2, p2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v0, Lcom/prineside/tdi2/enums/GameValueType;->ABILITY_BLIZZARD_BONUS_DAMAGE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {p2, v0}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v0

    double-to-float p2, v0

    iput p1, p0, Lcom/prineside/tdi2/abilities/BlizzardAbility;->d:F

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v2, v2, Lcom/prineside/tdi2/systems/MapSystem;->spawnedEnemies:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_1

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/Enemy$EnemyReference;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/prineside/tdi2/Enemy$EnemyReference;->enemy:Lcom/prineside/tdi2/Enemy;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->buffManager:Lcom/prineside/tdi2/managers/BuffManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/BuffManager;->F:Lcom/prineside/tdi2/managers/BuffManager$Factories;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/BuffManager$Factories;->BLIZZARD:Lcom/prineside/tdi2/buffs/BlizzardBuff$BlizzardBuffFactory;

    invoke-virtual {v3}, Lcom/prineside/tdi2/Buff$Factory;->obtain()Lcom/prineside/tdi2/Buff;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/buffs/BlizzardBuff;

    const/high16 v4, 0x41200000    # 10.0f

    mul-float v4, v4, p1

    invoke-virtual {v3, p1, v4, p2}, Lcom/prineside/tdi2/buffs/BlizzardBuff;->setup(FFF)V

    iget-object v4, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->buff:Lcom/prineside/tdi2/systems/BuffSystem;

    iget-object v4, v4, Lcom/prineside/tdi2/systems/BuffSystem;->P_BLIZZARD:Lcom/prineside/tdi2/buffs/processors/BlizzardBuffProcessor;

    invoke-virtual {v4, v2, v3}, Lcom/prineside/tdi2/buffs/processors/BlizzardBuffProcessor;->addBuff(Lcom/prineside/tdi2/Enemy;Lcom/prineside/tdi2/buffs/BlizzardBuff;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    new-instance p1, Lcom/prineside/tdi2/abilities/BlizzardAbility$_MapSystemListener;

    iget-object p2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    const/4 v1, 0x0

    invoke-direct {p1, p2, p0, v1}, Lcom/prineside/tdi2/abilities/BlizzardAbility$_MapSystemListener;-><init>(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/abilities/BlizzardAbility;Lcom/prineside/tdi2/abilities/BlizzardAbility$1;)V

    iput-object p1, p0, Lcom/prineside/tdi2/abilities/BlizzardAbility;->b:Lcom/prineside/tdi2/abilities/BlizzardAbility$_MapSystemListener;

    iget-object p2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p2, p2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object p2, p2, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p2, p1}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    new-instance p1, Lcom/prineside/tdi2/abilities/BlizzardAbility$1;

    invoke-direct {p1, p0}, Lcom/prineside/tdi2/abilities/BlizzardAbility$1;-><init>(Lcom/prineside/tdi2/abilities/BlizzardAbility;)V

    iput-object p1, p0, Lcom/prineside/tdi2/abilities/BlizzardAbility;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object p1, p0, Lcom/prineside/tdi2/abilities/BlizzardAbility;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object p1, p0, Lcom/prineside/tdi2/abilities/BlizzardAbility;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->viewport:Lcom/badlogic/gdx/utils/viewport/ScreenViewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getWorldWidth()F

    move-result v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->viewport:Lcom/badlogic/gdx/utils/viewport/ScreenViewport;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getWorldHeight()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    iget-object p1, p1, Lcom/prineside/tdi2/systems/GraphicsSystem;->mainUi:Lcom/prineside/tdi2/ui/components/MainUi;

    iget-object p1, p1, Lcom/prineside/tdi2/ui/components/MainUi;->customElementsContainer:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v0, p0, Lcom/prineside/tdi2/abilities/BlizzardAbility;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance p1, Lcom/prineside/tdi2/ui/actors/ImageWithParentColor;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "blizzard-screen-border@flip-x"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/prineside/tdi2/ui/actors/ImageWithParentColor;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v0, 0x43430000    # 195.0f

    const v1, 0x43e28000    # 453.0f

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P100:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v3, p0, Lcom/prineside/tdi2/abilities/BlizzardAbility;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance p1, Lcom/prineside/tdi2/ui/actors/ImageWithParentColor;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "blizzard-screen-border"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    invoke-direct {p1, v3}, Lcom/prineside/tdi2/ui/actors/ImageWithParentColor;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->viewport:Lcom/badlogic/gdx/utils/viewport/ScreenViewport;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getWorldWidth()F

    move-result v1

    sub-float/2addr v1, v0

    invoke-virtual {p1, v1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/abilities/BlizzardAbility;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object p1, p0, Lcom/prineside/tdi2/abilities/BlizzardAbility;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-static {p2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v0

    const v1, 0x3dcccccd    # 0.1f

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeIn(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    :cond_2
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, p1, Lcom/prineside/tdi2/GameSystemProvider;->_particle:Lcom/prineside/tdi2/systems/ParticleSystem;

    if-eqz v0, :cond_3

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    if-eqz p1, :cond_3

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->abilityManager:Lcom/prineside/tdi2/managers/AbilityManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/AbilityManager;->F:Lcom/prineside/tdi2/managers/AbilityManager$Factories;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/AbilityManager$Factories;->BLIZZARD:Lcom/prineside/tdi2/abilities/BlizzardAbility$BlizzardAbilityFactory;

    invoke-static {p1}, Lcom/prineside/tdi2/abilities/BlizzardAbility$BlizzardAbilityFactory;->a(Lcom/prineside/tdi2/abilities/BlizzardAbility$BlizzardAbilityFactory;)Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    iput-object p1, p0, Lcom/prineside/tdi2/abilities/BlizzardAbility;->p:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->abilityManager:Lcom/prineside/tdi2/managers/AbilityManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/AbilityManager;->F:Lcom/prineside/tdi2/managers/AbilityManager$Factories;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/AbilityManager$Factories;->BLIZZARD:Lcom/prineside/tdi2/abilities/BlizzardAbility$BlizzardAbilityFactory;

    invoke-static {p1}, Lcom/prineside/tdi2/abilities/BlizzardAbility$BlizzardAbilityFactory;->a(Lcom/prineside/tdi2/abilities/BlizzardAbility$BlizzardAbilityFactory;)Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    iput-object p1, p0, Lcom/prineside/tdi2/abilities/BlizzardAbility;->q:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    iget-object p1, p1, Lcom/prineside/tdi2/systems/GraphicsSystem;->mainUi:Lcom/prineside/tdi2/ui/components/MainUi;

    iget-object p1, p1, Lcom/prineside/tdi2/ui/components/MainUi;->particlesCanvas:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    iget-object v0, p0, Lcom/prineside/tdi2/abilities/BlizzardAbility;->p:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {p1, v0, p2, p2}, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;FF)Lcom/prineside/tdi2/ui/actors/ParticlesCanvas$ParticleConfig;

    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    iget-object p1, p1, Lcom/prineside/tdi2/systems/GraphicsSystem;->mainUi:Lcom/prineside/tdi2/ui/components/MainUi;

    iget-object p1, p1, Lcom/prineside/tdi2/ui/components/MainUi;->particlesCanvas:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    iget-object v0, p0, Lcom/prineside/tdi2/abilities/BlizzardAbility;->q:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->viewport:Lcom/badlogic/gdx/utils/viewport/ScreenViewport;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getWorldWidth()F

    move-result v1

    invoke-virtual {p1, v0, v1, p2}, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;FF)Lcom/prineside/tdi2/ui/actors/ParticlesCanvas$ParticleConfig;

    :cond_3
    return-void
.end method

.method public update(F)V
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/abilities/BlizzardAbility;->d:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/abilities/BlizzardAbility;->d:F

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Ability;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-object v0, p0, Lcom/prineside/tdi2/abilities/BlizzardAbility;->b:Lcom/prineside/tdi2/abilities/BlizzardAbility$_MapSystemListener;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget p1, p0, Lcom/prineside/tdi2/abilities/BlizzardAbility;->d:F

    invoke-virtual {p2, p1}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    return-void
.end method
