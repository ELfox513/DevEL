.class Lcom/prineside/tdi2/ui/shared/Notifications$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/Notifications$1;->act(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

.field public final synthetic b:Lcom/prineside/tdi2/ui/shared/Notifications$1;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/Notifications$1;Lcom/prineside/tdi2/ui/shared/Notifications$Notification;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/Notifications$1$2;->b:Lcom/prineside/tdi2/ui/shared/Notifications$1;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/Notifications$1$2;->a:Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/Notifications$1$2;->b:Lcom/prineside/tdi2/ui/shared/Notifications$1;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/shared/Notifications$1;->N:Lcom/prineside/tdi2/ui/shared/Notifications;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/Notifications;->p(Lcom/prineside/tdi2/ui/shared/Notifications;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/Notifications$1$2;->a:Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z

    return-void
.end method
