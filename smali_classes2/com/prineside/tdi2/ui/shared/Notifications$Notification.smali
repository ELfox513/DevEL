.class public Lcom/prineside/tdi2/ui/shared/Notifications$Notification;
.super Lcom/badlogic/gdx/scenes/scene2d/Group;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/shared/Notifications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Notification"
.end annotation


# instance fields
.field public M:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public final synthetic N:Lcom/prineside/tdi2/ui/shared/Notifications;

.field public final notificationHeight:F

.field public showDuration:F


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/Notifications;Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 8

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/Notifications$Notification;->N:Lcom/prineside/tdi2/ui/shared/Notifications;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/prineside/tdi2/ui/shared/Notifications$Notification;->showDuration:F

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const/high16 v1, 0x43e60000    # 460.0f

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setWidth(F)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/Notifications;->q(Lcom/prineside/tdi2/ui/shared/Notifications;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object p1

    invoke-direct {v2, p2, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/4 p1, 0x1

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    const/high16 p2, 0x43aa0000    # 340.0f

    invoke-virtual {v2, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setWidth(F)V

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->layout()V

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->pack()V

    invoke-virtual {v2, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setWidth(F)V

    const/high16 p2, 0x42d40000    # 106.0f

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v2, p2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result p2

    const/16 v4, 0x8

    const/high16 v5, 0x42400000    # 48.0f

    cmpg-float p2, p2, v5

    if-gez p2, :cond_0

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setHeight(F)V

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    :cond_0
    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result p2

    const/high16 v6, 0x42200000    # 40.0f

    add-float/2addr p2, v6

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {v7, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v7, v5, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result p3

    sub-float/2addr p3, v5

    add-float/2addr p3, v3

    invoke-virtual {v7, v6, p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    new-instance p3, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-array v3, v4, [F

    const/4 v4, 0x0

    aput v4, v3, v0

    aput v4, v3, p1

    const/4 p1, 0x2

    aput v4, v3, p1

    const/4 p1, 0x3

    aput p2, v3, p1

    const/4 p1, 0x4

    aput v1, v3, p1

    const/4 p1, 0x5

    aput p2, v3, p1

    const/4 p1, 0x6

    const v1, 0x43e18000    # 451.0f

    aput v1, v3, p1

    const/4 p1, 0x7

    aput v4, v3, p1

    invoke-direct {p3, p4, v3}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    const/high16 p1, 0x40000000    # 2.0f

    add-float/2addr p2, p1

    iput p2, p0, Lcom/prineside/tdi2/ui/shared/Notifications$Notification;->notificationHeight:F

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setHeight(F)V

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {p0, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string p3, "blank"

    invoke-virtual {p2, p3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/Notifications$Notification;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/Notifications$Notification;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/ui/shared/Notifications;Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/ui/shared/Notifications$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/prineside/tdi2/ui/shared/Notifications$Notification;-><init>(Lcom/prineside/tdi2/ui/shared/Notifications;Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;)V

    return-void
.end method


# virtual methods
.method public hide(F)V
    .locals 3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getActions()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;->getActions()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Action;

    instance-of v2, v1, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;->setDuration(F)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;->setTime(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public showProgress(FLcom/badlogic/gdx/graphics/Color;)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/Notifications$Notification;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_0

    :cond_0
    const v0, 0x43e18000    # 451.0f

    mul-float p1, p1, v0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/Notifications$Notification;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object p2, p0, Lcom/prineside/tdi2/ui/shared/Notifications$Notification;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-virtual {p2, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/Notifications$Notification;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :goto_0
    return-void
.end method
