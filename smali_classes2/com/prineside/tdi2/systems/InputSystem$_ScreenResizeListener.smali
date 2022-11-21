.class Lcom/prineside/tdi2/systems/InputSystem$_ScreenResizeListener;
.super Lcom/prineside/tdi2/Game$ScreenResizeListener$ScreenResizeListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/InputSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "_ScreenResizeListener"
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/systems/InputSystem;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/systems/InputSystem;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/systems/InputSystem$_ScreenResizeListener;->a:Lcom/prineside/tdi2/systems/InputSystem;

    invoke-direct {p0}, Lcom/prineside/tdi2/Game$ScreenResizeListener$ScreenResizeListenerAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/systems/InputSystem;Lcom/prineside/tdi2/systems/InputSystem$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/prineside/tdi2/systems/InputSystem$_ScreenResizeListener;-><init>(Lcom/prineside/tdi2/systems/InputSystem;)V

    return-void
.end method


# virtual methods
.method public resize(II)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/InputSystem$_ScreenResizeListener;->a:Lcom/prineside/tdi2/systems/InputSystem;

    invoke-static {v0}, Lcom/prineside/tdi2/systems/InputSystem;->b(Lcom/prineside/tdi2/systems/InputSystem;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-lez p1, :cond_1

    if-lez p2, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/InputSystem$_ScreenResizeListener;->a:Lcom/prineside/tdi2/systems/InputSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/InputSystem;->cameraController:Lcom/prineside/tdi2/CameraController;

    invoke-virtual {v0, p1, p2}, Lcom/prineside/tdi2/CameraController;->setScreenSize(II)V

    :cond_1
    return-void
.end method
