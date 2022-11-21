.class Lcom/prineside/tdi2/ui/actors/ComplexButton$1;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final o:Lcom/badlogic/gdx/utils/Timer$Task;

.field public p:Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

.field public final synthetic q:Lcom/prineside/tdi2/ui/actors/ComplexButton;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/actors/ComplexButton;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton$1;->q:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    new-instance p1, Lcom/prineside/tdi2/ui/actors/ComplexButton$1$1;

    invoke-direct {p1, p0}, Lcom/prineside/tdi2/ui/actors/ComplexButton$1$1;-><init>(Lcom/prineside/tdi2/ui/actors/ComplexButton$1;)V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton$1;->o:Lcom/badlogic/gdx/utils/Timer$Task;

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/ui/actors/ComplexButton$1;)Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton$1;->p:Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

    return-object p0
.end method

.method public static synthetic b(Lcom/prineside/tdi2/ui/actors/ComplexButton$1;Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;)Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton$1;->p:Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

    return-object p1
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton$1;->q:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->q(Lcom/prineside/tdi2/ui/actors/ComplexButton;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton$1;->q:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->r(Lcom/prineside/tdi2/ui/actors/ComplexButton;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton$1;->q:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->r(Lcom/prineside/tdi2/ui/actors/ComplexButton;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton$1;->q:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->s(Lcom/prineside/tdi2/ui/actors/ComplexButton;)Z

    move-result p1

    if-nez p1, :cond_0

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

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton$1;->q:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->v(Lcom/prineside/tdi2/ui/actors/ComplexButton;Z)Z

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton$1;->q:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->u(Lcom/prineside/tdi2/ui/actors/ComplexButton;)V

    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->enter(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-void
.end method

.method public exit(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2

    const/4 v0, -0x1

    if-ne p4, v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton$1;->q:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->v(Lcom/prineside/tdi2/ui/actors/ComplexButton;Z)Z

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton$1;->q:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->u(Lcom/prineside/tdi2/ui/actors/ComplexButton;)V

    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->exit(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-void
.end method

.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 5

    const/4 v0, 0x1

    if-nez p5, :cond_1

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton$1;->q:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-static {v1, v0}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->t(Lcom/prineside/tdi2/ui/actors/ComplexButton;Z)Z

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton$1;->q:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->u(Lcom/prineside/tdi2/ui/actors/ComplexButton;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton$1;->o:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->isScheduled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton$1;->o:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton$1;->q:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->p(Lcom/prineside/tdi2/ui/actors/ComplexButton;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton$1;->o:Lcom/badlogic/gdx/utils/Timer$Task;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, v1}, Lcom/badlogic/gdx/utils/Timer;->schedule(Lcom/badlogic/gdx/utils/Timer$Task;F)Lcom/badlogic/gdx/utils/Timer$Task;

    new-instance v0, Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

    invoke-direct {v0, p2, p3, v1}, Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;-><init>(FFF)V

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton$1;->p:Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton$1;->q:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_0

    :cond_1
    if-ne p5, v0, :cond_3

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->INSTANT_HOLD_BUTTON_ON_RMB:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton$1;->o:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->isScheduled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton$1;->o:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton$1;->o:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->run()V

    :cond_3
    :goto_0
    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z

    move-result p1

    return p1
.end method

.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton$1;->q:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->t(Lcom/prineside/tdi2/ui/actors/ComplexButton;Z)Z

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton$1;->q:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->u(Lcom/prineside/tdi2/ui/actors/ComplexButton;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton$1;->q:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->p(Lcom/prineside/tdi2/ui/actors/ComplexButton;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton$1;->o:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->isScheduled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton$1;->o:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton$1;->p:Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/prineside/tdi2/ui/actors/b;

    invoke-direct {v2, v0}, Lcom/prineside/tdi2/ui/actors/b;-><init>(Lcom/prineside/tdi2/ui/actors/PieChartActor;)V

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/ui/actors/ComplexButton$1;->p:Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V

    return-void
.end method
