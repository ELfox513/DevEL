.class Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$2;->a:Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$2;->a:Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->a(Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;)Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$FingerActor;

    move-result-object v0

    invoke-static {v0}, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$FingerActor;->p(Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$FingerActor;)Lcom/prineside/tdi2/ui/actors/TrailMultilineActor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/actors/TrailMultilineActor;->stop()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$2;->a:Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->a(Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;)Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$FingerActor;

    move-result-object v0

    const/high16 v1, 0x42480000    # 50.0f

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    return-void
.end method
