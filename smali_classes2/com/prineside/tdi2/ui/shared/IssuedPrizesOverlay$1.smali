.class Lcom/prineside/tdi2/ui/shared/IssuedPrizesOverlay$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/IssuedPrizesOverlay;->show(Lcom/badlogic/gdx/utils/Array;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public final synthetic b:Lcom/prineside/tdi2/ui/shared/IssuedPrizesOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/IssuedPrizesOverlay;Lcom/badlogic/gdx/scenes/scene2d/Group;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/IssuedPrizesOverlay$1;->b:Lcom/prineside/tdi2/ui/shared/IssuedPrizesOverlay;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/IssuedPrizesOverlay$1;->a:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/IssuedPrizesOverlay$1;->a:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    return-void
.end method
