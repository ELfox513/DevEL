.class Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$9;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$9;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$9$1;->a:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    sget-object v1, Lcom/prineside/tdi2/enums/StaticSoundType;->BUTTON:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/SoundManager;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    iget-object v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$9$1;->a:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$9;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$9;->b:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;

    iget-object v0, v0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->k:Lcom/prineside/tdi2/screens/LevelSelectScreen;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/LevelSelectScreen;->c(Lcom/prineside/tdi2/screens/LevelSelectScreen;)Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->g(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;ZZ)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->abilitySelectionOverlay:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;

    new-instance v1, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$9$1$1;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$9$1$1;-><init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$9$1;)V

    new-instance v2, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$9$1$2;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$9$1$2;-><init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay$9$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay;->show(Ljava/lang/Runnable;Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    return-void
.end method
