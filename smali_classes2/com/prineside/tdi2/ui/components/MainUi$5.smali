.class Lcom/prineside/tdi2/ui/components/MainUi$5;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
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
.field public final b:Lcom/badlogic/gdx/utils/Timer$Task;

.field public c:Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

.field public final synthetic d:Lcom/prineside/tdi2/GameSystemProvider;

.field public final synthetic e:Lcom/prineside/tdi2/ui/components/MainUi;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/MainUi;Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/MainUi$5;->e:Lcom/prineside/tdi2/ui/components/MainUi;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/components/MainUi$5;->d:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    new-instance p1, Lcom/prineside/tdi2/ui/components/MainUi$5$1;

    invoke-direct {p1, p0}, Lcom/prineside/tdi2/ui/components/MainUi$5$1;-><init>(Lcom/prineside/tdi2/ui/components/MainUi$5;)V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/MainUi$5;->b:Lcom/badlogic/gdx/utils/Timer$Task;

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/ui/components/MainUi$5;)Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/MainUi$5;->c:Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

    return-object p0
.end method

.method public static synthetic b(Lcom/prineside/tdi2/ui/components/MainUi$5;Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;)Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/MainUi$5;->c:Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

    return-object p1
.end method


# virtual methods
.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 1

    const/4 p1, 0x1

    if-nez p5, :cond_1

    iget-object p4, p0, Lcom/prineside/tdi2/ui/components/MainUi$5;->b:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {p4}, Lcom/badlogic/gdx/utils/Timer$Task;->isScheduled()Z

    move-result p4

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/prineside/tdi2/ui/components/MainUi$5;->b:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {p4}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    :cond_0
    iget-object p4, p0, Lcom/prineside/tdi2/ui/components/MainUi$5;->b:Lcom/badlogic/gdx/utils/Timer$Task;

    const p5, 0x3eb33333    # 0.35f

    invoke-static {p4, p5}, Lcom/badlogic/gdx/utils/Timer;->schedule(Lcom/badlogic/gdx/utils/Timer$Task;F)Lcom/badlogic/gdx/utils/Timer$Task;

    new-instance p4, Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

    invoke-direct {p4, p2, p3, p5}, Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;-><init>(FFF)V

    iput-object p4, p0, Lcom/prineside/tdi2/ui/components/MainUi$5;->c:Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/MainUi$5;->e:Lcom/prineside/tdi2/ui/components/MainUi;

    invoke-static {p2}, Lcom/prineside/tdi2/ui/components/MainUi;->h(Lcom/prineside/tdi2/ui/components/MainUi;)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    move-result-object p2

    iget-object p3, p0, Lcom/prineside/tdi2/ui/components/MainUi$5;->c:Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_0

    :cond_1
    if-ne p5, p1, :cond_3

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object p3, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->INSTANT_HOLD_BUTTON_ON_RMB:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {p2, p3}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide p2

    const-wide/high16 p4, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p2, p4

    if-nez v0, :cond_3

    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/MainUi$5;->b:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/Timer$Task;->isScheduled()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/MainUi$5;->b:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    :cond_2
    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/MainUi$5;->b:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/Timer$Task;->run()V

    :cond_3
    :goto_0
    return p1
.end method

.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MainUi$5;->b:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Timer$Task;->isScheduled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MainUi$5;->e:Lcom/prineside/tdi2/ui/components/MainUi;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/MainUi;->i(Lcom/prineside/tdi2/ui/components/MainUi;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MainUi$5;->d:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/WaveSystem;->isForceWaveAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MainUi$5;->d:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/WaveSystem;->forceNextWaveAction()V

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MainUi$5;->d:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/systems/WaveSystem;->setAutoForceWaveEnabled(Z)V

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MainUi$5;->b:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MainUi$5;->c:Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

    if-eqz p1, :cond_2

    sget-object p2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lcom/prineside/tdi2/ui/actors/b;

    invoke-direct {p3, p1}, Lcom/prineside/tdi2/ui/actors/b;-><init>(Lcom/prineside/tdi2/ui/actors/PieChartActor;)V

    invoke-interface {p2, p3}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/MainUi$5;->c:Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

    :cond_2
    return-void
.end method
