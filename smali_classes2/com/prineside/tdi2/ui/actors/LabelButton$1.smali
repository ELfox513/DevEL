.class Lcom/prineside/tdi2/ui/actors/LabelButton$1;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/actors/LabelButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic o:Ljava/lang/Runnable;

.field public final synthetic p:Lcom/prineside/tdi2/ui/actors/LabelButton;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/actors/LabelButton;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/LabelButton$1;->p:Lcom/prineside/tdi2/ui/actors/LabelButton;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/actors/LabelButton$1;->o:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/LabelButton$1;->o:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    sget-object p2, Lcom/prineside/tdi2/enums/StaticSoundType;->BUTTON:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/managers/SoundManager;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    :cond_0
    return-void
.end method

.method public enter(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->enter(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 p1, -0x1

    if-ne p4, p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/LabelButton$1;->p:Lcom/prineside/tdi2/ui/actors/LabelButton;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/prineside/tdi2/ui/actors/LabelButton;->i(Lcom/prineside/tdi2/ui/actors/LabelButton;Z)Z

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/LabelButton$1;->p:Lcom/prineside/tdi2/ui/actors/LabelButton;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/actors/LabelButton;->j(Lcom/prineside/tdi2/ui/actors/LabelButton;)V

    :cond_0
    return-void
.end method

.method public exit(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->exit(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 p1, -0x1

    if-ne p4, p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/LabelButton$1;->p:Lcom/prineside/tdi2/ui/actors/LabelButton;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/prineside/tdi2/ui/actors/LabelButton;->i(Lcom/prineside/tdi2/ui/actors/LabelButton;Z)Z

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/LabelButton$1;->p:Lcom/prineside/tdi2/ui/actors/LabelButton;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/actors/LabelButton;->j(Lcom/prineside/tdi2/ui/actors/LabelButton;)V

    :cond_0
    return-void
.end method
