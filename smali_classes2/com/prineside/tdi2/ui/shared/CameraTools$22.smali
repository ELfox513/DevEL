.class Lcom/prineside/tdi2/ui/shared/CameraTools$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/CameraTools;->B()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;

.field public final synthetic b:Lcom/prineside/tdi2/ui/shared/CameraTools;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/CameraTools;Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$22;->b:Lcom/prineside/tdi2/ui/shared/CameraTools;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$22;->a:Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$22;->a:Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$22;->b:Lcom/prineside/tdi2/ui/shared/CameraTools;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/shared/CameraTools;->g(Lcom/prineside/tdi2/ui/shared/CameraTools;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/CameraTools$Scenario;->removeKeyframe(I)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$22;->b:Lcom/prineside/tdi2/ui/shared/CameraTools;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/CameraTools;->e(Lcom/prineside/tdi2/ui/shared/CameraTools;)V

    return-void
.end method
