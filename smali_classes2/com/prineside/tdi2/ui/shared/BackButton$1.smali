.class Lcom/prineside/tdi2/ui/shared/BackButton$1;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/BackButton;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public o:Z

.field public p:Z

.field public final synthetic q:Lcom/prineside/tdi2/ui/shared/BackButton;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/BackButton;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/BackButton$1;->q:Lcom/prineside/tdi2/ui/shared/BackButton;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/shared/BackButton$1;->o:Z

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/shared/BackButton$1;->p:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/shared/BackButton$1;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/BackButton$1;->q:Lcom/prineside/tdi2/ui/shared/BackButton;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/BackButton;->b(Lcom/prineside/tdi2/ui/shared/BackButton;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v0

    invoke-static {}, Lcom/prineside/tdi2/ui/shared/BackButton;->a()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/shared/BackButton$1;->p:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/BackButton$1;->q:Lcom/prineside/tdi2/ui/shared/BackButton;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/BackButton;->b(Lcom/prineside/tdi2/ui/shared/BackButton;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v0

    invoke-static {}, Lcom/prineside/tdi2/ui/shared/BackButton;->c()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/BackButton$1;->q:Lcom/prineside/tdi2/ui/shared/BackButton;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/BackButton;->b(Lcom/prineside/tdi2/ui/shared/BackButton;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v0

    invoke-static {}, Lcom/prineside/tdi2/ui/shared/BackButton;->d()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    return-void
.end method

.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/BackButton$1;->q:Lcom/prineside/tdi2/ui/shared/BackButton;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/BackButton;->e(Lcom/prineside/tdi2/ui/shared/BackButton;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/BackButton$1;->q:Lcom/prineside/tdi2/ui/shared/BackButton;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/BackButton;->e(Lcom/prineside/tdi2/ui/shared/BackButton;)Ljava/lang/Runnable;

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
    .locals 1

    const/4 v0, -0x1

    if-ne p4, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/ui/shared/BackButton$1;->p:Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/BackButton$1;->a()V

    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->enter(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-void
.end method

.method public exit(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p4, v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/ui/shared/BackButton$1;->p:Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/BackButton$1;->a()V

    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->exit(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-void
.end method

.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/ui/shared/BackButton$1;->o:Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/BackButton$1;->a()V

    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z

    move-result p1

    return p1
.end method

.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/ui/shared/BackButton$1;->o:Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/BackButton$1;->a()V

    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V

    return-void
.end method
