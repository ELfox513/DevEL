.class Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$1;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine;-><init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;Lcom/prineside/tdi2/BasicLevel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;

.field public final synthetic p:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$WaveMilestoneConfig;

.field public final synthetic q:Lcom/prineside/tdi2/ItemStack;

.field public final synthetic r:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine;Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$WaveMilestoneConfig;Lcom/prineside/tdi2/ItemStack;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$1;->r:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine;

    iput-object p2, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$1;->o:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;

    iput-object p3, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$1;->p:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$WaveMilestoneConfig;

    iput-object p4, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$1;->q:Lcom/prineside/tdi2/ItemStack;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$1;->p:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$WaveMilestoneConfig;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$WaveMilestoneConfig;->b:Lcom/prineside/tdi2/BasicLevel$WaveQuest;

    invoke-virtual {p1}, Lcom/prineside/tdi2/BasicLevel$WaveQuest;->isCompleted()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/UiManager;->itemDescriptionDialog:Lcom/prineside/tdi2/ui/shared/ItemDescriptionDialog;

    iget-object p2, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$1;->q:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {p2}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/ui/shared/ItemDescriptionDialog;->show(Lcom/prineside/tdi2/Item;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/UiManager;->itemDescriptionDialog:Lcom/prineside/tdi2/ui/shared/ItemDescriptionDialog;

    iget-object p2, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$1;->q:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {p2}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object p2

    iget-object p3, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$WaveQuestsLine$1;->q:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {p3}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/prineside/tdi2/ui/shared/ItemDescriptionDialog;->show(Lcom/prineside/tdi2/Item;I)V

    :goto_0
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    sget-object p2, Lcom/prineside/tdi2/enums/StaticSoundType;->BUTTON:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/managers/SoundManager;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    return-void
.end method
