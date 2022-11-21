.class Lcom/prineside/tdi2/ui/components/MainUi$1;
.super Lcom/prineside/tdi2/Game$ScreenResizeListener$ScreenResizeListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/MainUi;-><init>(Lcom/prineside/tdi2/GameSystemProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/MainUi;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/MainUi;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/MainUi$1;->a:Lcom/prineside/tdi2/ui/components/MainUi;

    invoke-direct {p0}, Lcom/prineside/tdi2/Game$ScreenResizeListener$ScreenResizeListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public resize(II)V
    .locals 1

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MainUi$1;->a:Lcom/prineside/tdi2/ui/components/MainUi;

    iget-object p1, p1, Lcom/prineside/tdi2/ui/components/MainUi;->particlesCanvas:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/UiManager;->viewport:Lcom/badlogic/gdx/utils/viewport/ScreenViewport;

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getWorldWidth()F

    move-result p2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->viewport:Lcom/badlogic/gdx/utils/viewport/ScreenViewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getWorldHeight()F

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MainUi$1;->a:Lcom/prineside/tdi2/ui/components/MainUi;

    iget-object p1, p1, Lcom/prineside/tdi2/ui/components/MainUi;->customElementsContainer:Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object p2, p2, Lcom/prineside/tdi2/managers/UiManager;->viewport:Lcom/badlogic/gdx/utils/viewport/ScreenViewport;

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getWorldWidth()F

    move-result p2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager;->viewport:Lcom/badlogic/gdx/utils/viewport/ScreenViewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getWorldHeight()F

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    :cond_0
    return-void
.end method
