.class Lcom/prineside/tdi2/ui/shared/ForwardButton$1;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/ForwardButton;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:Lcom/prineside/tdi2/ui/shared/ForwardButton;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/ForwardButton;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/ForwardButton$1;->o:Lcom/prineside/tdi2/ui/shared/ForwardButton;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/ForwardButton$1;->o:Lcom/prineside/tdi2/ui/shared/ForwardButton;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/ForwardButton;->a(Lcom/prineside/tdi2/ui/shared/ForwardButton;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/ForwardButton$1;->o:Lcom/prineside/tdi2/ui/shared/ForwardButton;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/ForwardButton;->b(Lcom/prineside/tdi2/ui/shared/ForwardButton;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/ForwardButton$1;->o:Lcom/prineside/tdi2/ui/shared/ForwardButton;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/ForwardButton;->b(Lcom/prineside/tdi2/ui/shared/ForwardButton;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    sget-object p2, Lcom/prineside/tdi2/enums/StaticSoundType;->BUTTON:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/managers/SoundManager;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    :cond_0
    return-void
.end method

.method public enter(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2

    const/4 v0, -0x1

    if-ne p4, v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ForwardButton$1;->o:Lcom/prineside/tdi2/ui/shared/ForwardButton;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/shared/ForwardButton;->e(Lcom/prineside/tdi2/ui/shared/ForwardButton;Z)Z

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ForwardButton$1;->o:Lcom/prineside/tdi2/ui/shared/ForwardButton;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/ForwardButton;->d(Lcom/prineside/tdi2/ui/shared/ForwardButton;)V

    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->enter(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-void
.end method

.method public exit(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2

    const/4 v0, -0x1

    if-ne p4, v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ForwardButton$1;->o:Lcom/prineside/tdi2/ui/shared/ForwardButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/shared/ForwardButton;->e(Lcom/prineside/tdi2/ui/shared/ForwardButton;Z)Z

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ForwardButton$1;->o:Lcom/prineside/tdi2/ui/shared/ForwardButton;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/ForwardButton;->d(Lcom/prineside/tdi2/ui/shared/ForwardButton;)V

    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->exit(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-void
.end method

.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ForwardButton$1;->o:Lcom/prineside/tdi2/ui/shared/ForwardButton;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/shared/ForwardButton;->c(Lcom/prineside/tdi2/ui/shared/ForwardButton;Z)Z

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ForwardButton$1;->o:Lcom/prineside/tdi2/ui/shared/ForwardButton;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/ForwardButton;->d(Lcom/prineside/tdi2/ui/shared/ForwardButton;)V

    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z

    move-result p1

    return p1
.end method

.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ForwardButton$1;->o:Lcom/prineside/tdi2/ui/shared/ForwardButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/shared/ForwardButton;->c(Lcom/prineside/tdi2/ui/shared/ForwardButton;Z)Z

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/ForwardButton$1;->o:Lcom/prineside/tdi2/ui/shared/ForwardButton;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/ForwardButton;->d(Lcom/prineside/tdi2/ui/shared/ForwardButton;)V

    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V

    return-void
.end method
