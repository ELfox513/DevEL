.class Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$3;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public b:F

.field public c:F

.field public final synthetic d:Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$3;->d:Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    const/high16 p1, 0x43d00000    # 416.0f

    iput p1, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$3;->b:F

    return-void
.end method


# virtual methods
.method public final a(F)F
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$3;->c:F

    sub-float/2addr v0, p1

    const/4 p1, 0x0

    cmpg-float v1, v0, p1

    if-gez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$3;->b:F

    cmpl-float v1, v0, p1

    if-lez v1, :cond_1

    move v0, p1

    :cond_1
    :goto_0
    return v0
.end method

.method public final b(F)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$3;->a(F)F

    move-result p1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$3;->d:Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->h(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    iget v1, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$3;->b:F

    sub-float/2addr v1, p1

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    return-void
.end method

.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 0

    iget-object p2, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$3;->d:Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;

    invoke-static {p2}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->a(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;)Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_1

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {p2}, Lcom/prineside/tdi2/managers/ProgressManager;->isLuckyWheelSpinAvailable()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->cancel()V

    iget-object p2, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$3;->d:Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;

    invoke-static {p2, p3}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->b(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;Z)Z

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageY()F

    move-result p1

    iput p1, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$3;->c:F

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return p3
.end method

.method public touchDragged(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 0

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageY()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$3;->b(F)V

    return-void
.end method

.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 0

    iget-object p2, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$3;->d:Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;

    invoke-static {p2}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->j(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageY()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$3;->a(F)F

    move-result p1

    iget p2, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$3;->b:F

    div-float/2addr p1, p2

    const p2, 0x3e4ccccd    # 0.2f

    cmpl-float p3, p1, p2

    if-lez p3, :cond_1

    iget-object p3, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$3;->d:Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;

    invoke-static {p3, p1}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->k(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;F)V

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$3;->d:Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->h(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$3;->d:Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->h(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object p1

    const/4 p3, 0x0

    const/high16 p4, 0x43d00000    # 416.0f

    sget-object p5, Lcom/badlogic/gdx/math/Interpolation;->pow3In:Lcom/badlogic/gdx/math/Interpolation$PowIn;

    invoke-static {p3, p4, p2, p5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-void
.end method
