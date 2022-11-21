.class Lcom/prineside/tdi2/ui/shared/CameraTools$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/CameraTools;->updateScenarioMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/CameraTools;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/CameraTools;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$17;->a:Lcom/prineside/tdi2/ui/shared/CameraTools;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$17;->a:Lcom/prineside/tdi2/ui/shared/CameraTools;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/CameraTools;->f(Lcom/prineside/tdi2/ui/shared/CameraTools;)Lcom/prineside/tdi2/CameraController;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$17;->a:Lcom/prineside/tdi2/ui/shared/CameraTools;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ui/shared/CameraTools;->getSelectedScenario()Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget v2, v1, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->startFrame:I

    int-to-float v2, v2

    iget v3, v1, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->fps:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$17;->a:Lcom/prineside/tdi2/ui/shared/CameraTools;

    invoke-static {v3}, Lcom/prineside/tdi2/ui/shared/CameraTools;->g(Lcom/prineside/tdi2/ui/shared/CameraTools;)I

    move-result v3

    iget v4, v1, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->startFrame:I

    if-lt v3, v4, :cond_0

    iget-object v3, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$17;->a:Lcom/prineside/tdi2/ui/shared/CameraTools;

    invoke-static {v3}, Lcom/prineside/tdi2/ui/shared/CameraTools;->g(Lcom/prineside/tdi2/ui/shared/CameraTools;)I

    move-result v3

    iget v4, v1, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->length:I

    if-gt v3, v4, :cond_0

    iget v3, v1, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->fps:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    :cond_0
    iget-object v3, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$17;->a:Lcom/prineside/tdi2/ui/shared/CameraTools;

    invoke-static {v3}, Lcom/prineside/tdi2/ui/shared/CameraTools;->t(Lcom/prineside/tdi2/ui/shared/CameraTools;)Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/prineside/tdi2/CameraController;->playScenario(Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;FZ)V

    :cond_1
    return-void
.end method
