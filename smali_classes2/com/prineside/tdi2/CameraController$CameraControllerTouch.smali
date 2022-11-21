.class Lcom/prineside/tdi2/CameraController$CameraControllerTouch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Pool$Poolable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraControllerTouch"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public d:I

.field public k:I

.field public p:F

.field public q:F

.field public r:D

.field public s:Lcom/badlogic/gdx/math/Vector2;

.field public t:Z

.field public u:Z

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;->t:Z

    iput-boolean v0, p0, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;->u:Z

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;->t:Z

    iput-boolean v0, p0, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;->u:Z

    return-void
.end method

.method public setup(IIFFD)V
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;->x:I

    iput p2, p0, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;->y:I

    iput p1, p0, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;->a:I

    iput p2, p0, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;->b:I

    iput p1, p0, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;->d:I

    iput p2, p0, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;->k:I

    iput p3, p0, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;->p:F

    iput p4, p0, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;->q:F

    iput-wide p5, p0, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;->r:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/prineside/tdi2/CameraController$CameraControllerTouch;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
