.class Lcom/prineside/tdi2/ui/shared/Notifications$1;
.super Lcom/badlogic/gdx/scenes/scene2d/Group;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/Notifications;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public M:Z

.field public final synthetic N:Lcom/prineside/tdi2/ui/shared/Notifications;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/Notifications;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/Notifications$1;->N:Lcom/prineside/tdi2/ui/shared/Notifications;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/shared/Notifications$1;->M:Z

    return-void
.end method

.method public static synthetic p(Lcom/prineside/tdi2/ui/shared/Notifications$1;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/shared/Notifications$1;->M:Z

    return p1
.end method


# virtual methods
.method public act(F)V
    .locals 11

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v3, :cond_2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/prineside/tdi2/ui/shared/Notifications$1;->M:Z

    if-nez v4, :cond_1

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/prineside/tdi2/ui/shared/Notifications$1;->M:Z

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    const/4 v5, 0x6

    new-array v5, v5, [Lcom/badlogic/gdx/scenes/scene2d/Action;

    invoke-static {v6}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v7

    aput-object v7, v5, v1

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3e99999a    # 0.3f

    invoke-static {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v7

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v9

    iget v10, v3, Lcom/prineside/tdi2/ui/shared/Notifications$Notification;->notificationHeight:F

    invoke-static {v9, v10, v8}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sizeTo(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;

    move-result-object v9

    iget v10, v3, Lcom/prineside/tdi2/ui/shared/Notifications$Notification;->notificationHeight:F

    neg-float v10, v10

    invoke-static {v6, v10, v8}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveBy(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;

    move-result-object v10

    invoke-static {v7, v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->parallel(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    move-result-object v7

    aput-object v7, v5, v4

    const/4 v4, 0x2

    new-instance v7, Lcom/prineside/tdi2/ui/shared/Notifications$1$1;

    invoke-direct {v7, p0}, Lcom/prineside/tdi2/ui/shared/Notifications$1$1;-><init>(Lcom/prineside/tdi2/ui/shared/Notifications$1;)V

    invoke-static {v7}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->run(Ljava/lang/Runnable;)Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;

    move-result-object v7

    aput-object v7, v5, v4

    const/4 v4, 0x3

    iget v7, v3, Lcom/prineside/tdi2/ui/shared/Notifications$Notification;->showDuration:F

    invoke-static {v7}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->delay(F)Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    move-result-object v7

    aput-object v7, v5, v4

    const/4 v4, 0x4

    const/high16 v7, 0x3f400000    # 0.75f

    invoke-static {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v7

    aput-object v7, v5, v4

    const/4 v4, 0x5

    new-instance v7, Lcom/prineside/tdi2/ui/shared/Notifications$1$2;

    invoke-direct {v7, p0, v3}, Lcom/prineside/tdi2/ui/shared/Notifications$1$2;-><init>(Lcom/prineside/tdi2/ui/shared/Notifications$1;Lcom/prineside/tdi2/ui/shared/Notifications$Notification;)V

    invoke-static {v7}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->run(Ljava/lang/Runnable;)Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;

    move-result-object v7

    aput-object v7, v5, v4

    invoke-static {v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence([Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    :goto_1
    if-ge v1, v2, :cond_2

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    iget v5, v3, Lcom/prineside/tdi2/ui/shared/Notifications$Notification;->notificationHeight:F

    neg-float v5, v5

    invoke-static {v6, v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveBy(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_2
    :goto_2
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->act(F)V

    return-void
.end method
