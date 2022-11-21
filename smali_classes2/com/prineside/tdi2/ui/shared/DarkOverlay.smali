.class public Lcom/prineside/tdi2/ui/shared/DarkOverlay;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;
    }
.end annotation


# static fields
.field public static final e:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field public final a:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:Z

.field public final d:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0xd0d0da0

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    sput-object v0, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->e:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v1, Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v2, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->a:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    new-instance v0, Lcom/prineside/tdi2/ui/shared/DarkOverlay$1;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/ui/shared/DarkOverlay$1;-><init>(Lcom/prineside/tdi2/ui/shared/DarkOverlay;)V

    iput-object v0, p0, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->e(Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;)I

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/prineside/tdi2/ui/shared/DarkOverlay;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->a:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    return-object p0
.end method

.method public static synthetic c(Lcom/prineside/tdi2/ui/shared/DarkOverlay;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->c:Z

    return p0
.end method

.method public static synthetic d(Lcom/prineside/tdi2/ui/shared/DarkOverlay;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->c:Z

    return p1
.end method

.method public static synthetic e(Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;)I
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;->layer:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->mainUiLayer:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const v1, 0x186a0

    mul-int v0, v0, v1

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;->layer:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    iget p0, p0, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->zIndex:I

    add-int/2addr v0, p0

    iget-object p0, p1, Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;->layer:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    iget-object p0, p0, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->mainUiLayer:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    mul-int p0, p0, v1

    iget-object p1, p1, Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;->layer:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    iget p1, p1, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->zIndex:I

    add-int/2addr p0, p1

    invoke-static {v0, p0}, Lx1/i;->a(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public addCaller(Ljava/lang/String;ILjava/lang/Runnable;)V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->OVERLAY:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->addCaller(Ljava/lang/String;Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/Runnable;)V

    return-void
.end method

.method public addCaller(Ljava/lang/String;Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/Runnable;)V
    .locals 6

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->a:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v3, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v3, :cond_1

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;

    aget-object v2, v2, v1

    iget-object v3, v2, Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-object p4, v2, Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;->onClick:Ljava/lang/Runnable;

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;-><init>(Lcom/prineside/tdi2/ui/shared/DarkOverlay$1;)V

    iput-object p1, v1, Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;->name:Ljava/lang/String;

    iput-object p4, v1, Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;->onClick:Ljava/lang/Runnable;

    const/4 p4, 0x1

    iput-boolean p4, v1, Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;->visible:Z

    const/4 v2, 0x0

    iput v2, v1, Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;->alpha:F

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " overlay"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p2, p3, v4, p4}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;Z)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object p2

    iput-object p2, v1, Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;->layer:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    new-instance p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object p3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p3, p3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {p3}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    sget-object p3, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->e:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p3}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object p3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p3, v3, v3, v3, v2}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object p2, v1, Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;->tint:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-object p3, v1, Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;->layer:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {p3}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object p3

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object p3, v1, Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;->layer:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {p3}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object p3

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    invoke-virtual {p3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    iget-object p3, v1, Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;->layer:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {p3}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object p2, v1, Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;->layer:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {p2}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object p2, p0, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->a:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->f()V

    iput-boolean p4, p0, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->b:Z

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "add "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DarkOverlay"

    invoke-static {p2, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "callerName is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public cancelCurrentClick()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->c:Z

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->a:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    new-instance v1, Lcom/prineside/tdi2/ui/shared/e;

    invoke-direct {v1}, Lcom/prineside/tdi2/ui/shared/e;-><init>()V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->sort(Ljava/util/Comparator;)V

    return-void
.end method

.method public postRender(F)V
    .locals 9

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->b:Z

    if-eqz v0, :cond_9

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isUiAnimationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x40a00000    # 5.0f

    goto :goto_0

    :cond_0
    const v0, 0x495bc040    # 900100.0f

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->a:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ltz v1, :cond_3

    iget-object v5, p0, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->a:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v5, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;

    aget-object v5, v5, v1

    iget-boolean v6, v5, Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;->removing:Z

    if-eqz v6, :cond_1

    iput-boolean v3, v5, Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;->visible:Z

    goto :goto_2

    :cond_1
    if-eqz v4, :cond_2

    iput-boolean v3, v5, Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;->visible:Z

    goto :goto_2

    :cond_2
    iput-boolean v2, v5, Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;->visible:Z

    const/4 v4, 0x1

    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->a:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    const/4 v1, 0x0

    :goto_3
    iget-object v4, p0, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->a:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v5, :cond_8

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;

    aget-object v4, v4, v1

    iget-boolean v5, v4, Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;->visible:Z

    if-eqz v5, :cond_5

    iget v5, v4, Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;->alpha:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v7, v5, v6

    if-gez v7, :cond_4

    mul-float v7, p1, v0

    add-float/2addr v5, v7

    iput v5, v4, Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;->alpha:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_4

    iput v6, v4, Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;->alpha:F

    :cond_4
    iget-object v5, v4, Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;->layer:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_4

    :cond_5
    iget v5, v4, Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;->alpha:F

    const/4 v6, 0x0

    cmpl-float v7, v5, v6

    if-lez v7, :cond_6

    mul-float v7, p1, v0

    sub-float/2addr v5, v7

    iput v5, v4, Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;->alpha:F

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_6

    iput v6, v4, Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;->alpha:F

    iget-object v5, v4, Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;->layer:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :cond_6
    iget v5, v4, Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;->alpha:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_7

    iget-boolean v5, v4, Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;->removing:Z

    if-eqz v5, :cond_7

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v6, v4, Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;->layer:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/UiManager;->removeLayer(Lcom/prineside/tdi2/managers/UiManager$UiLayer;)V

    iget-object v5, p0, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->a:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeIndex(I)Ljava/lang/Object;

    :cond_7
    :goto_4
    iget-object v5, v4, Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;->tint:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    iget v4, v4, Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;->alpha:F

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v7, v4, v6

    sget-object v8, Lcom/badlogic/gdx/math/Interpolation;->pow2Out:Lcom/badlogic/gdx/math/Interpolation$PowOut;

    invoke-virtual {v8, v4}, Lcom/badlogic/gdx/math/Interpolation$PowOut;->apply(F)F

    move-result v4

    mul-float v4, v4, v6

    add-float/2addr v7, v4

    sget-object v4, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->e:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float v7, v7, v4

    iput v7, v5, Lcom/badlogic/gdx/graphics/Color;->a:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->a:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget p1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez p1, :cond_9

    iput-boolean v3, p0, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->b:Z

    :cond_9
    return-void
.end method

.method public removeCaller(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->a:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v2, :cond_1

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/DarkOverlay;->a:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, [Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;->removing:Z

    if-nez v2, :cond_1

    move-object v2, v1

    check-cast v2, [Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;

    aget-object v2, v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;->removing:Z

    check-cast v1, [Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;

    aget-object v0, v1, v0

    iget-object v0, v0, Lcom/prineside/tdi2/ui/shared/DarkOverlay$QueuedCaller;->layer:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DarkOverlay"

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
