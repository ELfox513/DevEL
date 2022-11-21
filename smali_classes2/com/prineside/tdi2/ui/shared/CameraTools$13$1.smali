.class Lcom/prineside/tdi2/ui/shared/CameraTools$13$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/CameraTools$13;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/CameraTools$13;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/CameraTools$13;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$13$1;->a:Lcom/prineside/tdi2/ui/shared/CameraTools$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$13$1;->a:Lcom/prineside/tdi2/ui/shared/CameraTools$13;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/shared/CameraTools$13;->a:Lcom/prineside/tdi2/ui/shared/CameraTools;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/CameraTools;->c(Lcom/prineside/tdi2/ui/shared/CameraTools;)[Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$13$1;->a:Lcom/prineside/tdi2/ui/shared/CameraTools$13;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/shared/CameraTools$13;->a:Lcom/prineside/tdi2/ui/shared/CameraTools;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/shared/CameraTools;->d(Lcom/prineside/tdi2/ui/shared/CameraTools;)I

    move-result v1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$13$1;->a:Lcom/prineside/tdi2/ui/shared/CameraTools$13;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/shared/CameraTools$13;->a:Lcom/prineside/tdi2/ui/shared/CameraTools;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/shared/CameraTools;->updateScenarioMenu()V

    return-void
.end method
