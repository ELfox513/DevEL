.class Lcom/prineside/tdi2/ui/components/UpgradeSubmenu$1;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu$1;->b:Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    return-void
.end method


# virtual methods
.method public enter(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->enter(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 p1, -0x1

    if-ne p4, p1, :cond_1

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu$1;->b:Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->x(Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;Z)Z

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu$1;->b:Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->v(Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu$1;->b:Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->setButtonSelected(Z)V

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu$1;->b:Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->D()V

    :cond_1
    return-void
.end method

.method public exit(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->exit(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 p1, -0x1

    if-ne p4, p1, :cond_1

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu$1;->b:Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->x(Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;Z)Z

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu$1;->b:Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->v(Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu$1;->b:Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->setButtonSelected(Z)V

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu$1;->b:Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->D()V

    :cond_1
    return-void
.end method

.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 1

    const/4 p1, 0x1

    if-nez p5, :cond_0

    iget-object p4, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu$1;->b:Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;

    invoke-static {p4, p1}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->p(Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;Z)Z

    iget-object p4, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu$1;->b:Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;

    invoke-virtual {p4}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->D()V

    iget-object p4, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu$1;->b:Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;

    const/4 p5, 0x0

    invoke-static {p4, p5}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->r(Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;Z)Z

    iget-object p4, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu$1;->b:Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;

    const/4 p5, 0x0

    invoke-static {p4, p5}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->s(Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;F)F

    iget-object p4, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu$1;->b:Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;

    new-instance p5, Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p5, p2, p3, v0}, Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;-><init>(FFF)V

    invoke-static {p4, p5}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->u(Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;)Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu$1;->b:Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;

    iget-object p3, p2, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->upgradeButton:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-static {p2}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->t(Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;)Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_0

    :cond_0
    if-ne p5, p1, :cond_1

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object p3, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->INSTANT_HOLD_BUTTON_ON_RMB:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {p2, p3}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide p2

    const-wide/high16 p4, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p2, p4

    if-nez v0, :cond_1

    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu$1;->b:Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;

    invoke-static {p2, p1}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->p(Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;Z)Z

    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu$1;->b:Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {p2, p3}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->s(Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;F)F

    :cond_1
    :goto_0
    return p1
.end method

.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu$1;->b:Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->p(Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;Z)Z

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu$1;->b:Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->q(Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu$1;->b:Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->v(Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu$1;->b:Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->isButtonSelected()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu$1;->b:Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->w(Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu$1;->b:Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->setButtonSelected(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu$1;->b:Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->w(Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;)V

    :goto_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu$1;->b:Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->t(Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;)Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu$1;->b:Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->t(Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;)Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

    move-result-object p1

    sget-object p2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lcom/prineside/tdi2/ui/actors/b;

    invoke-direct {p3, p1}, Lcom/prineside/tdi2/ui/actors/b;-><init>(Lcom/prineside/tdi2/ui/actors/PieChartActor;)V

    invoke-interface {p2, p3}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu$1;->b:Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->u(Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;)Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

    :cond_2
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu$1;->b:Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->D()V

    return-void
.end method
