.class Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$11;
.super Lcom/badlogic/gdx/scenes/scene2d/Actor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic F:Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;

.field public final synthetic G:F

.field public final synthetic H:Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;F)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$11;->H:Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$11;->F:Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;

    iput p3, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$11;->G:F

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 1

    iget-object p2, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$11;->F:Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;

    iget v0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$11;->G:F

    invoke-virtual {p2, v0}, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->update(F)V

    iget-object p2, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$11;->F:Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;

    invoke-virtual {p2}, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->isFinished()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$11;->F:Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;

    invoke-virtual {p1}, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->free()V

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()Z

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->end()V

    const/4 p2, 0x1

    const/16 v0, 0x302

    invoke-interface {p1, v0, p2}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setBlendFunction(II)V

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->begin()V

    iget-object p2, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$11;->F:Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;

    invoke-virtual {p2, p1}, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->end()V

    const/16 p2, 0x303

    invoke-interface {p1, v0, p2}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setBlendFunction(II)V

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->begin()V

    :goto_0
    return-void
.end method
