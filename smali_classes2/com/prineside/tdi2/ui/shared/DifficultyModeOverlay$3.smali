.class Lcom/prineside/tdi2/ui/shared/DifficultyModeOverlay$3;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/DifficultyModeOverlay;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:Lcom/prineside/tdi2/ui/shared/DifficultyModeOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/DifficultyModeOverlay;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/DifficultyModeOverlay$3;->o:Lcom/prineside/tdi2/ui/shared/DifficultyModeOverlay;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 0

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    sget-object p2, Lcom/prineside/tdi2/enums/DifficultyMode;->ENDLESS_I:Lcom/prineside/tdi2/enums/DifficultyMode;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/managers/ProgressManager;->difficultyModeAvailable(Lcom/prineside/tdi2/enums/DifficultyMode;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/managers/ProgressManager;->setDifficultyMode(Lcom/prineside/tdi2/enums/DifficultyMode;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/DifficultyModeOverlay$3;->o:Lcom/prineside/tdi2/ui/shared/DifficultyModeOverlay;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/ui/shared/DifficultyModeOverlay;->setVisible(Z)V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->screenManager:Lcom/prineside/tdi2/managers/ScreenManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/ScreenManager;->goToMainMenu()V

    :cond_0
    return-void
.end method
