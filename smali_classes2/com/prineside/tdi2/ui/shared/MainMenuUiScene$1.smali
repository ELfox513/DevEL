.class Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$1;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;->recreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/MainMenuUiScene$1;->o:Lcom/prineside/tdi2/ui/shared/MainMenuUiScene;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 0

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/UiManager;->trophiesListOverlay:Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/shared/TrophiesListOverlay;->show()V

    return-void
.end method
