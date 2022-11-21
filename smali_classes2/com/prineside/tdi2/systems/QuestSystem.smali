.class public Lcom/prineside/tdi2/systems/QuestSystem;
.super Lcom/prineside/tdi2/GameSystem;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/NAGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;,
        Lcom/prineside/tdi2/systems/QuestSystem$DelayedQuestRemoveEntry;,
        Lcom/prineside/tdi2/systems/QuestSystem$Quest;,
        Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelQuest;,
        Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelWaveQuest;,
        Lcom/prineside/tdi2/systems/QuestSystem$RegularQuest;
    }
.end annotation


# instance fields
.field public final a:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/systems/QuestSystem$DelayedQuestRemoveEntry;",
            ">;"
        }
    .end annotation
.end field

.field public d:F

.field public k:Z

.field public p:I

.field public q:Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelWaveQuest;

.field public r:I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/prineside/tdi2/GameSystem;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v1, Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v2, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/QuestSystem;->a:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v1, Lcom/prineside/tdi2/systems/QuestSystem$DelayedQuestRemoveEntry;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/QuestSystem;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iput v3, p0, Lcom/prineside/tdi2/systems/QuestSystem;->p:I

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/systems/QuestSystem;I)I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/systems/QuestSystem;->r:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/systems/QuestSystem;->r:I

    return v0
.end method

.method public static synthetic b(Lcom/prineside/tdi2/systems/QuestSystem;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/QuestSystem;->c()V

    return-void
.end method


# virtual methods
.method public addQuest(Lcom/prineside/tdi2/systems/QuestSystem$Quest;)Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;
    .locals 7

    if-eqz p1, :cond_6

    new-instance v0, Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;-><init>(Lcom/prineside/tdi2/systems/QuestSystem;Lcom/prineside/tdi2/systems/QuestSystem$1;)V

    invoke-static {v0, p1}, Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;->b(Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;Lcom/prineside/tdi2/systems/QuestSystem$Quest;)Lcom/prineside/tdi2/systems/QuestSystem$Quest;

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lcom/prineside/tdi2/systems/GraphicsSystem;->questList:Lcom/prineside/tdi2/ui/components/QuestList;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ui/components/QuestList;->addQuestListItem()Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;

    move-result-object v1

    instance-of v2, p1, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelQuest;

    const-string v3, "[#FFC107]<@icon-star>[] "

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    move-object v2, p1

    check-cast v2, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelQuest;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->dailyQuestManager:Lcom/prineside/tdi2/managers/DailyQuestManager;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/DailyQuestManager;->getDailyLootCurrentQuest()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelQuest;->j:Lcom/prineside/tdi2/BasicLevelQuestConfig;

    iget-object v6, v6, Lcom/prineside/tdi2/BasicLevelQuestConfig;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v3, "[#03A9F4]<@icon-calendar>[] "

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->replaceRegionAliasesWithChars(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;->setTitlePrefix(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v5, v2, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelQuest;->j:Lcom/prineside/tdi2/BasicLevelQuestConfig;

    iget-object v5, v5, Lcom/prineside/tdi2/BasicLevelQuestConfig;->prizes:Lcom/badlogic/gdx/utils/Array;

    iget v6, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v6, :cond_4

    iget-object v5, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/tdi2/ItemStack;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v5

    sget-object v6, Lcom/prineside/tdi2/Item$D;->STAR:Lcom/prineside/tdi2/items/StarItem;

    if-ne v5, v6, :cond_1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->replaceRegionAliasesWithChars(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;->setTitlePrefix(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    instance-of v2, p1, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelWaveQuest;

    if-eqz v2, :cond_4

    move-object v2, p1

    check-cast v2, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelWaveQuest;

    :goto_1
    invoke-static {v2}, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelWaveQuest;->a(Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelWaveQuest;)Lcom/prineside/tdi2/BasicLevel$WaveQuest;

    move-result-object v5

    iget-object v5, v5, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->prizes:Lcom/badlogic/gdx/utils/Array;

    iget v5, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v5, :cond_4

    invoke-static {v2}, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelWaveQuest;->a(Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelWaveQuest;)Lcom/prineside/tdi2/BasicLevel$WaveQuest;

    move-result-object v5

    iget-object v5, v5, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->prizes:Lcom/badlogic/gdx/utils/Array;

    iget-object v5, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/tdi2/ItemStack;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v5

    sget-object v6, Lcom/prineside/tdi2/Item$D;->STAR:Lcom/prineside/tdi2/items/StarItem;

    if-ne v5, v6, :cond_3

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->replaceRegionAliasesWithChars(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;->setTitlePrefix(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    invoke-interface {p1}, Lcom/prineside/tdi2/systems/QuestSystem$Quest;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0, v1}, Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;->d(Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;)Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;

    :cond_5
    iget-object p1, p0, Lcom/prineside/tdi2/systems/QuestSystem;->a:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-object v0

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Quest is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v0, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    sget-object v2, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->BASIC_LEVELS:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    if-ne v0, v2, :cond_1

    iget-object v0, v1, Lcom/prineside/tdi2/systems/GraphicsSystem;->mainUi:Lcom/prineside/tdi2/ui/components/MainUi;

    iget v1, p0, Lcom/prineside/tdi2/systems/QuestSystem;->r:I

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/components/MainUi;->setLevelStarsIcon(I)V

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lcom/prineside/tdi2/systems/GraphicsSystem;->mainUi:Lcom/prineside/tdi2/ui/components/MainUi;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/components/MainUi;->setLevelStarsIcon(I)V

    :goto_0
    return-void
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/QuestSystem;->a:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/QuestSystem;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/systems/QuestSystem;->q:Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelWaveQuest;

    invoke-super {p0}, Lcom/prineside/tdi2/GameSystem;->dispose()V

    return-void
.end method

.method public draw(FF)V
    .locals 4

    const/high16 p1, 0x3fa00000    # 1.25f

    mul-float p2, p2, p1

    iget-object p1, p0, Lcom/prineside/tdi2/systems/QuestSystem;->a:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/systems/QuestSystem;->a:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_2

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;->a(Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;)Lcom/prineside/tdi2/systems/QuestSystem$Quest;

    move-result-object v2

    invoke-interface {v2}, Lcom/prineside/tdi2/systems/QuestSystem$Quest;->update()V

    invoke-static {v1}, Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;->e(Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;->a(Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;)Lcom/prineside/tdi2/systems/QuestSystem$Quest;

    move-result-object v2

    invoke-interface {v2}, Lcom/prineside/tdi2/systems/QuestSystem$Quest;->isCompleted()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;->a(Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;)Lcom/prineside/tdi2/systems/QuestSystem$Quest;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/systems/QuestSystem;->getListItem(Lcom/prineside/tdi2/systems/QuestSystem$Quest;)Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;->setCompleted(Z)V

    :cond_0
    invoke-static {v1}, Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;->a(Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;)Lcom/prineside/tdi2/systems/QuestSystem$Quest;

    move-result-object v2

    invoke-interface {v2}, Lcom/prineside/tdi2/systems/QuestSystem$Quest;->onCompletion()V

    invoke-static {v1, v3}, Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;->f(Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;Z)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/QuestSystem;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/prineside/tdi2/systems/QuestSystem;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v3, 0x0

    if-ge v0, v2, :cond_4

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/systems/QuestSystem$DelayedQuestRemoveEntry;

    invoke-static {v1, p2}, Lcom/prineside/tdi2/systems/QuestSystem$DelayedQuestRemoveEntry;->e(Lcom/prineside/tdi2/systems/QuestSystem$DelayedQuestRemoveEntry;F)F

    invoke-static {v1}, Lcom/prineside/tdi2/systems/QuestSystem$DelayedQuestRemoveEntry;->c(Lcom/prineside/tdi2/systems/QuestSystem$DelayedQuestRemoveEntry;)F

    move-result v2

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_3

    invoke-static {v1}, Lcom/prineside/tdi2/systems/QuestSystem$DelayedQuestRemoveEntry;->a(Lcom/prineside/tdi2/systems/QuestSystem$DelayedQuestRemoveEntry;)Lcom/prineside/tdi2/systems/QuestSystem$Quest;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/systems/QuestSystem;->removeQuest(Lcom/prineside/tdi2/systems/QuestSystem$Quest;)V

    iget-object v1, p0, Lcom/prineside/tdi2/systems/QuestSystem;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeIndex(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    iget v0, p0, Lcom/prineside/tdi2/systems/QuestSystem;->d:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/prineside/tdi2/systems/QuestSystem;->d:F

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p2, v0, p2

    if-lez p2, :cond_9

    iput v3, p0, Lcom/prineside/tdi2/systems/QuestSystem;->d:F

    iget-object p2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p2, p2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object p2, p2, Lcom/prineside/tdi2/systems/GameStateSystem;->gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    sget-object v0, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->BASIC_LEVELS:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    if-ne p2, v0, :cond_9

    iget-object p2, p0, Lcom/prineside/tdi2/systems/QuestSystem;->q:Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelWaveQuest;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/prineside/tdi2/systems/QuestSystem$RegularQuest;->isCompleted()Z

    move-result p2

    if-eqz p2, :cond_9

    :cond_5
    const/4 p2, 0x0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/GameStateSystem;->basicLevelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v0

    :goto_2
    iget-object v1, v0, Lcom/prineside/tdi2/BasicLevel;->waveQuests:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p1, v2, :cond_7

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/BasicLevel$WaveQuest;

    iget v2, v1, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->waves:I

    iget v3, p0, Lcom/prineside/tdi2/systems/QuestSystem;->p:I

    if-le v2, v3, :cond_6

    invoke-virtual {v1}, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->isCompleted()Z

    move-result v2

    if-nez v2, :cond_6

    move-object p2, v1

    goto :goto_3

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    if-eqz p2, :cond_9

    iget-object p1, p0, Lcom/prineside/tdi2/systems/QuestSystem;->q:Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelWaveQuest;

    if-eqz p1, :cond_8

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0, p1, v0}, Lcom/prineside/tdi2/systems/QuestSystem;->removeQuest(Lcom/prineside/tdi2/systems/QuestSystem$Quest;F)V

    :cond_8
    iget-object p1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {p2, p1}, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->createIngameQuest(Lcom/prineside/tdi2/GameSystemProvider;)Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelWaveQuest;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/systems/QuestSystem;->addQuest(Lcom/prineside/tdi2/systems/QuestSystem$Quest;)Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;

    iput-object p1, p0, Lcom/prineside/tdi2/systems/QuestSystem;->q:Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelWaveQuest;

    iget p1, p2, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->waves:I

    iput p1, p0, Lcom/prineside/tdi2/systems/QuestSystem;->p:I

    :cond_9
    return-void
.end method

.method public getBasicLevelStars()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/systems/QuestSystem;->r:I

    return v0
.end method

.method public getListItem(Lcom/prineside/tdi2/systems/QuestSystem$Quest;)Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;
    .locals 3

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/systems/QuestSystem;->a:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_1

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;->a(Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;)Lcom/prineside/tdi2/systems/QuestSystem$Quest;

    move-result-object v1

    if-ne v1, p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/systems/QuestSystem;->a:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast p1, [Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;

    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;->c(Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;)Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Quest is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public getSystemName()Ljava/lang/String;
    .locals 1

    const-string v0, "Quest"

    return-object v0
.end method

.method public postSetup()V
    .locals 6

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    invoke-static {v0}, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->isBasicLevel(Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->REGULAR_QUESTS_SLOTS:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v2, v2, Lcom/prineside/tdi2/systems/GameStateSystem;->basicLevelName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, v1, Lcom/prineside/tdi2/BasicLevel;->waveQuests:Lcom/badlogic/gdx/utils/Array;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v5, :cond_1

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/BasicLevel$WaveQuest;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->isCompleted()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_2

    const-string v3, "QuestSystem"

    const-string v4, "all WQ are completed, +1 quest slot"

    invoke-static {v3, v4}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    :cond_2
    const/4 v3, 0x0

    :goto_2
    iget-object v4, v1, Lcom/prineside/tdi2/BasicLevel;->quests:Lcom/badlogic/gdx/utils/Array;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v5, :cond_4

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/BasicLevelQuestConfig;

    invoke-virtual {v4}, Lcom/prineside/tdi2/BasicLevelQuestConfig;->isCompleted()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/BasicLevelQuestConfig;->createIngameQuest(Lcom/prineside/tdi2/GameSystemProvider;)Lcom/prineside/tdi2/systems/QuestSystem$Quest;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->_quest:Lcom/prineside/tdi2/systems/QuestSystem;

    invoke-virtual {v5, v4}, Lcom/prineside/tdi2/systems/QuestSystem;->addQuest(Lcom/prineside/tdi2/systems/QuestSystem$Quest;)Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;

    add-int/lit8 v3, v3, 0x1

    if-lt v3, v0, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method public postStateRestore()V
    .locals 0

    return-void
.end method

.method public removeQuest(Lcom/prineside/tdi2/systems/QuestSystem$Quest;)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/systems/QuestSystem;->a:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/systems/QuestSystem;->a:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_2

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;->a(Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;)Lcom/prineside/tdi2/systems/QuestSystem$Quest;

    move-result-object v1

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/prineside/tdi2/systems/GraphicsSystem;->questList:Lcom/prineside/tdi2/ui/components/QuestList;

    iget-object v2, p0, Lcom/prineside/tdi2/systems/QuestSystem;->a:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;->c(Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;)Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ui/components/QuestList;->removeQuestListItem(Lcom/prineside/tdi2/ui/components/QuestList$QuestListItem;)V

    :cond_0
    iget-object v1, p0, Lcom/prineside/tdi2/systems/QuestSystem;->a:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeIndex(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    return-void
.end method

.method public removeQuest(Lcom/prineside/tdi2/systems/QuestSystem$Quest;F)V
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/systems/QuestSystem$DelayedQuestRemoveEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/prineside/tdi2/systems/QuestSystem$DelayedQuestRemoveEntry;-><init>(Lcom/prineside/tdi2/systems/QuestSystem;Lcom/prineside/tdi2/systems/QuestSystem$1;)V

    invoke-static {v0, p1}, Lcom/prineside/tdi2/systems/QuestSystem$DelayedQuestRemoveEntry;->b(Lcom/prineside/tdi2/systems/QuestSystem$DelayedQuestRemoveEntry;Lcom/prineside/tdi2/systems/QuestSystem$Quest;)Lcom/prineside/tdi2/systems/QuestSystem$Quest;

    invoke-static {v0, p2}, Lcom/prineside/tdi2/systems/QuestSystem$DelayedQuestRemoveEntry;->d(Lcom/prineside/tdi2/systems/QuestSystem$DelayedQuestRemoveEntry;F)F

    iget-object p1, p0, Lcom/prineside/tdi2/systems/QuestSystem;->b:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public saveBasicLevelQuestValues()V
    .locals 7

    iget-boolean v0, p0, Lcom/prineside/tdi2/systems/QuestSystem;->k:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "saveBasicLevelQuestValues() already called"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-string v1, "QuestSystem"

    const-string v2, "failed to save quests progress"

    invoke-static {v1, v2, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/systems/QuestSystem;->k:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/systems/QuestSystem;->a:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_3

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;->a(Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;)Lcom/prineside/tdi2/systems/QuestSystem$Quest;

    move-result-object v2

    instance-of v2, v2, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelQuest;

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;->a(Lcom/prineside/tdi2/systems/QuestSystem$QuestEntry;)Lcom/prineside/tdi2/systems/QuestSystem$Quest;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelQuest;

    iget-object v2, v1, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelQuest;->j:Lcom/prineside/tdi2/BasicLevelQuestConfig;

    invoke-virtual {v2}, Lcom/prineside/tdi2/BasicLevelQuestConfig;->isDuringGame()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelQuest;->j:Lcom/prineside/tdi2/BasicLevelQuestConfig;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelQuest;->getValue()D

    move-result-wide v3

    iput-wide v3, v2, Lcom/prineside/tdi2/BasicLevelQuestConfig;->savedValue:D

    goto :goto_1

    :cond_1
    iget-object v2, v1, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelQuest;->j:Lcom/prineside/tdi2/BasicLevelQuestConfig;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelQuest;->getValue()D

    move-result-wide v3

    iget-object v1, v1, Lcom/prineside/tdi2/systems/QuestSystem$BasicLevelQuest;->j:Lcom/prineside/tdi2/BasicLevelQuestConfig;

    iget-wide v5, v1, Lcom/prineside/tdi2/BasicLevelQuestConfig;->savedValue:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/StrictMath;->max(DD)D

    move-result-wide v3

    iput-wide v3, v2, Lcom/prineside/tdi2/BasicLevelQuestConfig;->savedValue:D

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setup()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v1, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    sget-object v2, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->BASIC_LEVELS:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->basicLevelManager:Lcom/prineside/tdi2/managers/BasicLevelManager;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->basicLevelName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getLevel(Ljava/lang/String;)Lcom/prineside/tdi2/BasicLevel;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/managers/BasicLevelManager;->getGainedStars(Lcom/prineside/tdi2/BasicLevel;)I

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/systems/QuestSystem;->r:I

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/QuestSystem;->c()V

    return-void
.end method

.method public update(F)V
    .locals 0

    return-void
.end method
