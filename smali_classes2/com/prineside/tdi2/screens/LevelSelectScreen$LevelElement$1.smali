.class Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement$1;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;-><init>(Lcom/prineside/tdi2/screens/LevelSelectScreen;Lcom/prineside/tdi2/BasicLevel;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:Lcom/prineside/tdi2/screens/LevelSelectScreen;

.field public final synthetic p:Lcom/prineside/tdi2/BasicLevel;

.field public final synthetic q:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;Lcom/prineside/tdi2/screens/LevelSelectScreen;Lcom/prineside/tdi2/BasicLevel;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement$1;->q:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;

    iput-object p2, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement$1;->o:Lcom/prineside/tdi2/screens/LevelSelectScreen;

    iput-object p3, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement$1;->p:Lcom/prineside/tdi2/BasicLevel;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 0

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    sget-object p2, Lcom/prineside/tdi2/enums/StaticSoundType;->BUTTON:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/managers/SoundManager;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement$1;->q:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->S:Lcom/prineside/tdi2/screens/LevelSelectScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/LevelSelectScreen;->c(Lcom/prineside/tdi2/screens/LevelSelectScreen;)Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;

    move-result-object p1

    iget-object p2, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement$1;->p:Lcom/prineside/tdi2/BasicLevel;

    invoke-static {p1, p2}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->f(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;Lcom/prineside/tdi2/BasicLevel;)V

    iget-object p1, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement$1;->q:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;

    iget-object p1, p1, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->S:Lcom/prineside/tdi2/screens/LevelSelectScreen;

    invoke-static {p1}, Lcom/prineside/tdi2/screens/LevelSelectScreen;->c(Lcom/prineside/tdi2/screens/LevelSelectScreen;)Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;

    move-result-object p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;->g(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelMenuOverlay;ZZ)V

    return-void
.end method

.method public enter(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2

    const/4 v0, -0x1

    if-ne p4, v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement$1;->q:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->r(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;Z)Z

    iget-object v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement$1;->q:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->q(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;)V

    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->enter(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-void
.end method

.method public exit(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2

    const/4 v0, -0x1

    if-ne p4, v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement$1;->q:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->r(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;Z)Z

    iget-object v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement$1;->q:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->q(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;)V

    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->exit(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-void
.end method

.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement$1;->q:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->p(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;Z)Z

    iget-object v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement$1;->q:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->q(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;)V

    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z

    move-result p1

    return p1
.end method

.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement$1;->q:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->p(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;Z)Z

    iget-object v0, p0, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement$1;->q:Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;

    invoke-static {v0}, Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;->q(Lcom/prineside/tdi2/screens/LevelSelectScreen$LevelElement;)V

    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V

    return-void
.end method
