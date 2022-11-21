.class public Lcom/prineside/tdi2/systems/AbilitySystem;
.super Lcom/prineside/tdi2/GameSystem;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/REGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/systems/AbilitySystem$AbilitySystemListener;
    }
.end annotation


# static fields
.field public static final p:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field public a:I

.field public abilitiesConfiguration:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;

.field public abilitiesUsed:[I

.field public activeAbilities:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/Ability;",
            ">;"
        }
    .end annotation
.end field

.field public b:F

.field public final d:Lcom/badlogic/gdx/InputProcessor;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public k:Lcom/prineside/tdi2/enums/AbilityType;
    .annotation runtime Lcom/prineside/tdi2/utils/NAGS;
    .end annotation
.end field

.field public listeners:Lcom/prineside/tdi2/ListenerGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/prineside/tdi2/ListenerGroup<",
            "Lcom/prineside/tdi2/systems/AbilitySystem$AbilitySystemListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/systems/AbilitySystem;->p:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/prineside/tdi2/GameSystem;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v1, Lcom/prineside/tdi2/Ability;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->activeAbilities:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iput v2, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->a:I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->abilitiesUsed:[I

    new-instance v0, Lcom/prineside/tdi2/ListenerGroup;

    const-class v1, Lcom/prineside/tdi2/systems/AbilitySystem$AbilitySystemListener;

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    new-instance v0, Lcom/prineside/tdi2/systems/AbilitySystem$1;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/systems/AbilitySystem$1;-><init>(Lcom/prineside/tdi2/systems/AbilitySystem;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->d:Lcom/badlogic/gdx/InputProcessor;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static synthetic a()Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/systems/AbilitySystem;->p:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method public static synthetic b(Lcom/prineside/tdi2/systems/AbilitySystem;)Lcom/prineside/tdi2/enums/AbilityType;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->k:Lcom/prineside/tdi2/enums/AbilityType;

    return-object p0
.end method

.method public static synthetic c(Lcom/prineside/tdi2/systems/AbilitySystem;Lcom/prineside/tdi2/enums/AbilityType;II)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/prineside/tdi2/systems/AbilitySystem;->e(Lcom/prineside/tdi2/enums/AbilityType;II)V

    return-void
.end method


# virtual methods
.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public cancelUsingAbility()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->k:Lcom/prineside/tdi2/enums/AbilityType;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->k:Lcom/prineside/tdi2/enums/AbilityType;

    iget-object v0, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v2, v0}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/systems/AbilitySystem$AbilitySystemListener;

    invoke-interface {v2}, Lcom/prineside/tdi2/systems/AbilitySystem$AbilitySystemListener;->stoppedUsingAbility()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_input:Lcom/prineside/tdi2/systems/InputSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/InputSystem;->enableAllInput()V

    return-void
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/systems/AbilitySystem$AbilitySystemListener;

    invoke-interface {v2}, Lcom/prineside/tdi2/systems/AbilitySystem$AbilitySystemListener;->abilitiesConfigurationChanged()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    return-void
.end method

.method public dispose()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->activeAbilities:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_0

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/Ability;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/prineside/tdi2/Registrable;->setUnregistered()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->clear()V

    invoke-super {p0}, Lcom/prineside/tdi2/GameSystem;->dispose()V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->activeAbilities:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->activeAbilities:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_0

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/Ability;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/prineside/tdi2/Ability;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    return-void
.end method

.method public drawBatchAdditive(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->activeAbilities:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->activeAbilities:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_0

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/Ability;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/prineside/tdi2/Ability;->drawBatchAdditive(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    return-void
.end method

.method public final e(Lcom/prineside/tdi2/enums/AbilityType;II)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    new-instance v1, Lcom/prineside/tdi2/actions/UseAbilityAction;

    invoke-direct {v1, p1, p2, p3}, Lcom/prineside/tdi2/actions/UseAbilityAction;-><init>(Lcom/prineside/tdi2/enums/AbilityType;II)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/StateSystem;->pushAction(Lcom/prineside/tdi2/Action;)V

    return-void
.end method

.method public getAvailableAbilities(I)I
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    iget-object v0, v0, Lcom/prineside/tdi2/Map;->targetTile:Lcom/prineside/tdi2/tiles/TargetTile;

    invoke-virtual {v0}, Lcom/prineside/tdi2/tiles/TargetTile;->isDisableAbilities()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->abilitiesConfiguration:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;->slots:[Lcom/prineside/tdi2/enums/AbilityType;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->abilityManager:Lcom/prineside/tdi2/managers/AbilityManager;

    invoke-virtual {v3, v0}, Lcom/prineside/tdi2/managers/AbilityManager;->getMaxPerGameGameValueType(Lcom/prineside/tdi2/enums/AbilityType;)Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result v0

    iget-object v2, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->abilitiesUsed:[I

    aget p1, v2, p1

    sub-int/2addr v0, p1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v0, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->abilitiesConfiguration:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;->counts:[I

    aget p1, v0, p1

    return p1
.end method

.method public getEnergy()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->a:I

    return v0
.end method

.method public getEnergyCost(Lcom/prineside/tdi2/enums/AbilityType;)I
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->abilityManager:Lcom/prineside/tdi2/managers/AbilityManager;

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/managers/AbilityManager;->getEnergyCostGameValueType(Lcom/prineside/tdi2/enums/AbilityType;)Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result p1

    return p1
.end method

.method public getEnergyRegenerationTime()F
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->ABILITIES_ENERGY_GENERATION_INTERVAL:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getFloatValue(Lcom/prineside/tdi2/enums/GameValueType;)F

    move-result v0

    return v0
.end method

.method public getMaxEnergy()I
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->ABILITIES_MAX_ENERGY:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result v0

    return v0
.end method

.method public getNextEnergyGenerationTime()F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->b:F

    return v0
.end method

.method public getSystemName()Ljava/lang/String;
    .locals 1

    const-string v0, "Ability"

    return-object v0
.end method

.method public getUiCurrentlyUsingAbility()Lcom/prineside/tdi2/enums/AbilityType;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->k:Lcom/prineside/tdi2/enums/AbilityType;

    return-object v0
.end method

.method public postSetup()V
    .locals 4

    invoke-super {p0}, Lcom/prineside/tdi2/GameSystem;->postSetup()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->abilitiesConfiguration:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;->slots:[Lcom/prineside/tdi2/enums/AbilityType;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->abilityManager:Lcom/prineside/tdi2/managers/AbilityManager;

    invoke-virtual {v3, v1}, Lcom/prineside/tdi2/managers/AbilityManager;->getMaxPerGameGameValueType(Lcom/prineside/tdi2/enums/AbilityType;)Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result v1

    iget-object v2, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->abilitiesConfiguration:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;

    iget-object v2, v2, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;->counts:[I

    aget v3, v2, v0

    if-le v3, v1, :cond_0

    aput v1, v2, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/AbilitySystem;->d()V

    return-void
.end method

.method public read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Registrable;->read(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Input;)V

    const-class v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->activeAbilities:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObjectOrNull(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->abilitiesConfiguration:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Input;->readVarInt(Z)I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->a:I

    invoke-virtual {p2}, Lcom/esotericsoftware/kryo/io/Input;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->b:F

    const-class v0, [I

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->abilitiesUsed:[I

    const-class v0, Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->readObject(Lcom/esotericsoftware/kryo/io/Input;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/prineside/tdi2/ListenerGroup;

    iput-object p1, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    return-void
.end method

.method public setup()V
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/GameStateSystem;->startingAbilitiesConfiguration:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;-><init>(Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->abilitiesConfiguration:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;

    return-void
.end method

.method public startAbility(Lcom/prineside/tdi2/enums/AbilityType;II)Lcom/prineside/tdi2/Ability;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->abilityManager:Lcom/prineside/tdi2/managers/AbilityManager;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/managers/AbilityManager;->getFactory(Lcom/prineside/tdi2/enums/AbilityType;)Lcom/prineside/tdi2/Ability$Factory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Ability$Factory;->create()Lcom/prineside/tdi2/Ability;

    move-result-object p1

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/Registrable;->setRegistered(Lcom/prineside/tdi2/GameSystemProvider;)V

    invoke-virtual {p1, p2, p3}, Lcom/prineside/tdi2/Ability;->start(II)V

    iget-object p2, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->activeAbilities:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-object p1
.end method

.method public startUsingAbility(Lcom/prineside/tdi2/enums/AbilityType;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->k:Lcom/prineside/tdi2/enums/AbilityType;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/AbilitySystem;->cancelUsingAbility()V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->abilitiesConfiguration:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;->getSlot(Lcom/prineside/tdi2/enums/AbilityType;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/systems/AbilitySystem;->getAvailableAbilities(I)I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_input:Lcom/prineside/tdi2/systems/InputSystem;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->d:Lcom/badlogic/gdx/InputProcessor;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/InputSystem;->setCustomMapInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    iput-object p1, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->k:Lcom/prineside/tdi2/enums/AbilityType;

    iget-object p1, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v0

    :goto_0
    if-ge p1, v0, :cond_2

    iget-object v1, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/systems/AbilitySystem$AbilitySystemListener;

    invoke-interface {v1}, Lcom/prineside/tdi2/systems/AbilitySystem$AbilitySystemListener;->startedUsingAbility()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    :cond_3
    :goto_1
    return-void
.end method

.method public update(F)V
    .locals 9

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/StateSystem;->getCurrentUpdateActions()Lcom/prineside/tdi2/systems/StateSystem$ActionsArray;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    :goto_0
    iget v3, v0, Lcom/prineside/tdi2/systems/StateSystem$ActionsArray;->size:I

    if-ge v2, v3, :cond_5

    iget-object v3, v0, Lcom/prineside/tdi2/systems/StateSystem$ActionsArray;->actions:[Lcom/prineside/tdi2/Action;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/prineside/tdi2/Action;->getType()Lcom/prineside/tdi2/enums/ActionType;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/enums/ActionType;->UA:Lcom/prineside/tdi2/enums/ActionType;

    if-ne v4, v5, :cond_4

    check-cast v3, Lcom/prineside/tdi2/actions/UseAbilityAction;

    iget-object v4, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->abilitiesConfiguration:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;

    iget-object v5, v3, Lcom/prineside/tdi2/actions/UseAbilityAction;->abilityType:Lcom/prineside/tdi2/enums/AbilityType;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;->getSlot(Lcom/prineside/tdi2/enums/AbilityType;)I

    move-result v4

    const/4 v5, -0x1

    const-string v6, "AbilitySystem"

    if-eq v4, v5, :cond_3

    invoke-virtual {p0, v4}, Lcom/prineside/tdi2/systems/AbilitySystem;->getAvailableAbilities(I)I

    move-result v5

    if-lez v5, :cond_2

    iget-object v5, v3, Lcom/prineside/tdi2/actions/UseAbilityAction;->abilityType:Lcom/prineside/tdi2/enums/AbilityType;

    invoke-virtual {p0, v5}, Lcom/prineside/tdi2/systems/AbilitySystem;->getEnergyCost(Lcom/prineside/tdi2/enums/AbilityType;)I

    move-result v5

    iget v7, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->a:I

    if-lt v7, v5, :cond_1

    iget-object v6, v3, Lcom/prineside/tdi2/actions/UseAbilityAction;->abilityType:Lcom/prineside/tdi2/enums/AbilityType;

    iget v7, v3, Lcom/prineside/tdi2/actions/UseAbilityAction;->x:I

    iget v8, v3, Lcom/prineside/tdi2/actions/UseAbilityAction;->y:I

    invoke-virtual {p0, v6, v7, v8}, Lcom/prineside/tdi2/systems/AbilitySystem;->startAbility(Lcom/prineside/tdi2/enums/AbilityType;II)Lcom/prineside/tdi2/Ability;

    move-result-object v6

    invoke-virtual {v6}, Lcom/prineside/tdi2/Ability;->startEffects()V

    iget v7, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->a:I

    sub-int/2addr v7, v5

    iput v7, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->a:I

    iget-object v5, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->abilitiesConfiguration:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;

    iget-object v5, v5, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;->counts:[I

    aget v7, v5, v4

    add-int/lit8 v7, v7, -0x1

    aput v7, v5, v4

    iget-object v5, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->abilitiesUsed:[I

    aget v7, v5, v4

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v4

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/AbilitySystem;->d()V

    iget-object v4, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v4}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v5}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    iget-object v5, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v5, v4}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v5

    check-cast v5, Lcom/prineside/tdi2/systems/AbilitySystem$AbilitySystemListener;

    iget v7, v3, Lcom/prineside/tdi2/actions/UseAbilityAction;->x:I

    iget v8, v3, Lcom/prineside/tdi2/actions/UseAbilityAction;->y:I

    invoke-interface {v5, v6, v7, v8}, Lcom/prineside/tdi2/systems/AbilitySystem$AbilitySystemListener;->abilityApplied(Lcom/prineside/tdi2/Ability;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v3}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    iget-object v3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v3}, Lcom/prineside/tdi2/systems/GameStateSystem;->registerPlayerActivity()V

    goto :goto_2

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "useAbility - ability requires "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " energy though only "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " available"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "useAbility - no abilities of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/prineside/tdi2/actions/UseAbilityAction;->abilityType:Lcom/prineside/tdi2/enums/AbilityType;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " left"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "useAbility - ability type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/prineside/tdi2/actions/UseAbilityAction;->abilityType:Lcom/prineside/tdi2/enums/AbilityType;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not exists in configuration"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/GameStateSystem;->isGameRealTimePasses()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->a:I

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/AbilitySystem;->getMaxEnergy()I

    move-result v2

    if-ge v0, v2, :cond_6

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/AbilitySystem;->getEnergyRegenerationTime()F

    move-result v0

    iget v2, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->b:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->b:F

    cmpl-float v3, v2, v0

    if-ltz v3, :cond_6

    sub-float/2addr v2, v0

    iput v2, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->b:F

    iget v0, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->a:I

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/AbilitySystem;->getMaxEnergy()I

    move-result v2

    if-ne v0, v2, :cond_6

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->b:F

    :cond_6
    iget-object v0, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->activeAbilities:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    :goto_3
    iget-object v0, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->activeAbilities:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_8

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/Ability;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/Ability;->update(F)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/Ability;->isDone()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Lcom/prineside/tdi2/Ability;->onDone()V

    invoke-virtual {v0}, Lcom/prineside/tdi2/Registrable;->setUnregistered()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->activeAbilities:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeIndex(I)Ljava/lang/Object;

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    return-void
.end method

.method public write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/prineside/tdi2/Registrable;->write(Lcom/esotericsoftware/kryo/Kryo;Lcom/esotericsoftware/kryo/io/Output;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->activeAbilities:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->abilitiesConfiguration:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;

    const-class v1, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;

    invoke-virtual {p1, p2, v0, v1}, Lcom/esotericsoftware/kryo/Kryo;->writeObjectOrNull(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;Ljava/lang/Class;)V

    iget v0, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->a:I

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lcom/esotericsoftware/kryo/io/Output;->writeVarInt(IZ)I

    iget v0, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->b:F

    invoke-virtual {p2, v0}, Lcom/esotericsoftware/kryo/io/Output;->writeFloat(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->abilitiesUsed:[I

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/AbilitySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1, p2, v0}, Lcom/esotericsoftware/kryo/Kryo;->writeObject(Lcom/esotericsoftware/kryo/io/Output;Ljava/lang/Object;)V

    return-void
.end method
