.class Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->update(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:Lcom/badlogic/gdx/utils/Timer$Task;

.field public c:F

.field public d:F

.field public final synthetic e:Lcom/prineside/tdi2/ItemStack;

.field public final synthetic f:Lcom/prineside/tdi2/ui/actors/ItemCell;

.field public final synthetic g:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;Lcom/prineside/tdi2/ItemStack;Lcom/prineside/tdi2/ui/actors/ItemCell;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;->g:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;->e:Lcom/prineside/tdi2/ItemStack;

    iput-object p3, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;->f:Lcom/prineside/tdi2/ui/actors/ItemCell;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;F)F
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;->c:F

    return p1
.end method

.method public static synthetic b(Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;F)F
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;->d:F

    return p1
.end method


# virtual methods
.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 2

    const/4 p1, 0x0

    const/4 p4, 0x1

    if-nez p5, :cond_1

    iput p2, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;->c:F

    iput p3, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;->d:F

    iget-object p5, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;->g:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-static {p5}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->m(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)Z

    move-result p5

    if-eqz p5, :cond_0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;->b:Lcom/badlogic/gdx/utils/Timer$Task;

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40$1;

    invoke-direct {p1, p0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40$1;-><init>(Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;)V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;->b:Lcom/badlogic/gdx/utils/Timer$Task;

    const/high16 p5, 0x3f400000    # 0.75f

    invoke-static {p1, p5}, Lcom/badlogic/gdx/utils/Timer;->schedule(Lcom/badlogic/gdx/utils/Timer$Task;F)Lcom/badlogic/gdx/utils/Timer$Task;

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;->g:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    new-instance v0, Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

    invoke-direct {v0, p2, p3, p5}, Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;-><init>(FFF)V

    invoke-static {p1, v0}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->p(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;)Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;->f:Lcom/prineside/tdi2/ui/actors/ItemCell;

    iget-object p2, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;->g:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-static {p2}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->o(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_0

    :cond_1
    if-ne p5, p4, :cond_4

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object p3, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->INSTANT_HOLD_BUTTON_ON_RMB:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {p2, p3}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide p2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double p5, p2, v0

    if-nez p5, :cond_4

    iget-object p2, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;->g:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-static {p2}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->m(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)Z

    move-result p2

    if-eqz p2, :cond_2

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;->b:Lcom/badlogic/gdx/utils/Timer$Task;

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;->b:Lcom/badlogic/gdx/utils/Timer$Task;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/Timer$Task;->isScheduled()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;->b:Lcom/badlogic/gdx/utils/Timer$Task;

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    :cond_3
    iget-object p2, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;->g:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    iget-object p3, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;->e:Lcom/prineside/tdi2/ItemStack;

    invoke-static {p2, p3}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->n(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;Lcom/prineside/tdi2/ItemStack;)V

    const/high16 p2, -0x3d380000    # -100.0f

    iput p2, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;->c:F

    iput p2, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;->d:F

    iget-object p2, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;->g:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-static {p2}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->o(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

    move-result-object p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;->g:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-static {p2}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->o(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

    move-result-object p2

    iput-boolean p4, p2, Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;->disappearing:Z

    iget-object p2, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;->g:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-static {p2, p1}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->p(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;)Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

    :cond_4
    :goto_0
    return p4
.end method

.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;->g:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->o(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

    move-result-object p1

    const/4 p4, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;->g:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->o(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

    move-result-object p1

    sget-object p5, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/prineside/tdi2/ui/actors/b;

    invoke-direct {v0, p1}, Lcom/prineside/tdi2/ui/actors/b;-><init>(Lcom/prineside/tdi2/ui/actors/PieChartActor;)V

    invoke-interface {p5, v0}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;->g:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-static {p1, p4}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->p(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;)Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

    :cond_0
    iget p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;->c:F

    iget p5, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;->d:F

    invoke-static {p2, p3, p1, p5}, Lcom/prineside/tdi2/utils/PMath;->getDistanceBetweenPoints(FFFF)F

    move-result p1

    const/high16 p2, 0x41800000    # 16.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;->b:Lcom/badlogic/gdx/utils/Timer$Task;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    iput-object p4, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;->b:Lcom/badlogic/gdx/utils/Timer$Task;

    :cond_1
    return-void

    :cond_2
    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;->g:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->m(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;->g:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    iget-object p2, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;->e:Lcom/prineside/tdi2/ItemStack;

    invoke-static {p1, p2}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->n(Lcom/prineside/tdi2/ui/shared/InventoryOverlay;Lcom/prineside/tdi2/ItemStack;)V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;->b:Lcom/badlogic/gdx/utils/Timer$Task;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Timer$Task;->cancel()V

    iput-object p4, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;->b:Lcom/badlogic/gdx/utils/Timer$Task;

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;->g:Lcom/prineside/tdi2/ui/shared/InventoryOverlay;

    iget-object p2, p0, Lcom/prineside/tdi2/ui/shared/InventoryOverlay$40;->e:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {p1, p2}, Lcom/prineside/tdi2/ui/shared/InventoryOverlay;->setSelectedItem(Lcom/prineside/tdi2/ItemStack;)V

    :cond_4
    return-void
.end method
