.class Lcom/prineside/tdi2/CameraController$1;
.super Lcom/badlogic/gdx/utils/Pool;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/Pool<",
        "Lcom/prineside/tdi2/CameraController$CameraControllerTouch;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/prineside/tdi2/CameraController;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/CameraController;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/CameraController$1;->b:Lcom/prineside/tdi2/CameraController;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Pool;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Lcom/prineside/tdi2/CameraController$CameraControllerTouch;
    .locals 1

    new-instance v0, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;

    invoke-direct {v0}, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/CameraController$1;->c()Lcom/prineside/tdi2/CameraController$CameraControllerTouch;

    move-result-object v0

    return-object v0
.end method
