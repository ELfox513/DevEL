.class Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->hide()V
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

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$7;->a:Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip$7;->a:Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;->b(Lcom/prineside/tdi2/ui/actors/PanZoomTooltip;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    return-void
.end method
