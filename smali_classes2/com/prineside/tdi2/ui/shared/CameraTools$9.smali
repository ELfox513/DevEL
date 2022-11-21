.class Lcom/prineside/tdi2/ui/shared/CameraTools$9;
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
.field public final synthetic a:I

.field public final synthetic b:Lcom/prineside/tdi2/ui/shared/CameraTools;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/CameraTools;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$9;->b:Lcom/prineside/tdi2/ui/shared/CameraTools;

    iput p2, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$9;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$9;->b:Lcom/prineside/tdi2/ui/shared/CameraTools;

    iget v1, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$9;->a:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/ui/shared/CameraTools;->setSelectedScenarioIdx(IZ)V

    return-void
.end method
