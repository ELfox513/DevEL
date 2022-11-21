.class Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$_GameStateSystemListener;
.super Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener$GameStateSystemListenerAdapter;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/NAGS;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_GameStateSystemListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$_GameStateSystemListener;->a:Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/GameStateSystem$GameStateSystemListener$GameStateSystemListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$_GameStateSystemListener;-><init>(Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;)V

    return-void
.end method


# virtual methods
.method public issuedItemsAdded(Lcom/prineside/tdi2/IssuedItems;Lcom/prineside/tdi2/ItemStack;FFI)V
    .locals 8

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$_GameStateSystemListener;->a:Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;->c(Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;)Lcom/prineside/tdi2/GameSystemProvider;

    move-result-object p1

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/StateSystem;->isFastForwarding()Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v0, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->LOOT_ICONS_ENABLED:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Item;->getType()Lcom/prineside/tdi2/enums/ItemType;

    move-result-object p1

    sget-object v0, Lcom/prineside/tdi2/enums/ItemType;->GREEN_PAPER:Lcom/prineside/tdi2/enums/ItemType;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$_GameStateSystemListener;->a:Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;

    invoke-virtual {p2}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result p2

    invoke-virtual {p1, p3, p4, p2}, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;->addPapers(FFI)V

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/prineside/tdi2/ui/actors/ItemCell;

    invoke-direct {v3}, Lcom/prineside/tdi2/ui/actors/ItemCell;-><init>()V

    const/high16 p1, 0x42c00000    # 96.0f

    const/high16 v0, 0x42d20000    # 105.0f

    invoke-virtual {v3, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v3, p2}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setItem(Lcom/prineside/tdi2/ItemStack;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$_GameStateSystemListener;->a:Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;->d(Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {v3, p1, v0}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setColRow(II)V

    iget-boolean p1, p2, Lcom/prineside/tdi2/ItemStack;->covered:Z

    invoke-virtual {v3, p1}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setCovered(Z)V

    const/4 p1, 0x1

    invoke-virtual {v3, p1, p1}, Lcom/prineside/tdi2/ui/actors/ItemCell;->shine(ZZ)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$_GameStateSystemListener;->a:Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;->c(Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;)Lcom/prineside/tdi2/GameSystemProvider;

    move-result-object p1

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_sound:Lcom/prineside/tdi2/systems/SoundSystem;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    invoke-virtual {p2}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/Item;->getRarity()Lcom/prineside/tdi2/enums/RarityType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/SoundManager;->getRarity(Lcom/prineside/tdi2/enums/RarityType;)Lcom/prineside/tdi2/enums/StaticSoundType;

    move-result-object v0

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1, v4, v2}, Lcom/prineside/tdi2/systems/SoundSystem;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;FFF)V

    invoke-virtual {p2}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object p1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Item;->getRarity()Lcom/prineside/tdi2/enums/RarityType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p2}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Item;->getRarity()Lcom/prineside/tdi2/enums/RarityType;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    mul-int p1, p1, v0

    int-to-float p1, p1

    const v0, 0x3d4ccccd    # 0.05f

    mul-float p1, p1, v0

    add-float v7, p1, v4

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$_GameStateSystemListener;->a:Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;

    invoke-virtual {p2}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v4

    const v6, 0x3f4ccccd    # 0.8f

    move v1, p3

    move v2, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;->add(FFLcom/badlogic/gdx/scenes/scene2d/Actor;IIFF)V

    :cond_2
    :goto_0
    return-void
.end method
