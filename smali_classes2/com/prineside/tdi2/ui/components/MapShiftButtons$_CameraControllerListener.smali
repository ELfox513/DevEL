.class Lcom/prineside/tdi2/ui/components/MapShiftButtons$_CameraControllerListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/CameraController$CameraControllerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/components/MapShiftButtons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_CameraControllerListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/components/MapShiftButtons;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/MapShiftButtons;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/MapShiftButtons$_CameraControllerListener;->a:Lcom/prineside/tdi2/ui/components/MapShiftButtons;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/components/MapShiftButtons;Lcom/prineside/tdi2/ui/components/MapShiftButtons$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/ui/components/MapShiftButtons$_CameraControllerListener;-><init>(Lcom/prineside/tdi2/ui/components/MapShiftButtons;)V

    return-void
.end method


# virtual methods
.method public onViewportUpdated(Lcom/prineside/tdi2/CameraController;)V
    .locals 0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MapShiftButtons$_CameraControllerListener;->a:Lcom/prineside/tdi2/ui/components/MapShiftButtons;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/components/MapShiftButtons;->update()V

    return-void
.end method
