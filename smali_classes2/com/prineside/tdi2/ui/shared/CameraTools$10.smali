.class Lcom/prineside/tdi2/ui/shared/CameraTools$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/CameraTools;->updateScenarioMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/prineside/tdi2/utils/ObjectRetriever<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/CameraTools;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/CameraTools;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$10;->a:Lcom/prineside/tdi2/ui/shared/CameraTools;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public retrieved(Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$10;->a:Lcom/prineside/tdi2/ui/shared/CameraTools;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/prineside/tdi2/ui/shared/CameraTools;->u(Lcom/prineside/tdi2/ui/shared/CameraTools;Z)Z

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/CameraTools$10;->a:Lcom/prineside/tdi2/ui/shared/CameraTools;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/shared/CameraTools;->updateScenarioMenu()V

    return-void
.end method

.method public bridge synthetic retrieved(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/shared/CameraTools$10;->retrieved(Ljava/lang/Boolean;)V

    return-void
.end method
