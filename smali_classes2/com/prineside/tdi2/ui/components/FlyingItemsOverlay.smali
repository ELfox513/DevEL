.class public Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;,
        Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$_GameStateSystemListener;
    }
.end annotation


# static fields
.field public static final v:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field public final a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public final b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public d:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public k:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public p:I

.field public q:Lcom/prineside/tdi2/GameSystemProvider;

.field public final r:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;",
            ">;"
        }
    .end annotation
.end field

.field public s:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;",
            ">;"
        }
    .end annotation
.end field

.field public t:Lcom/prineside/tdi2/Game$ScreenResizeListener;

.field public final u:Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$_GameStateSystemListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;->v:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    sget-object v1, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->SCREEN:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    const/16 v2, 0x5a

    const-string v3, "FlyingItemsOverlay papers"

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;Z)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    const/16 v3, 0x5b

    const-string v5, "FlyingItemsOverlay elements"

    invoke-virtual {v2, v1, v3, v5, v4}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;Z)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v1

    iput-object v1, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;->b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    const/4 v2, 0x0

    iput v2, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;->p:I

    new-instance v3, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$1;

    invoke-direct {v3, p0}, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$1;-><init>(Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;)V

    iput-object v3, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;->r:Lcom/badlogic/gdx/utils/Pool;

    new-instance v3, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const-class v5, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;

    const/16 v6, 0x8

    invoke-direct {v3, v4, v6, v5}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(ZILjava/lang/Class;)V

    iput-object v3, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;->s:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    new-instance v3, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$_GameStateSystemListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$_GameStateSystemListener;-><init>(Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$1;)V

    iput-object v3, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;->u:Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$_GameStateSystemListener;

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object p1, p1, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {p1, v3}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object p1

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance p1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object p1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance p1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object p1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance p1, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$2;

    invoke-direct {p1, p0}, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$2;-><init>(Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;)V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;->t:Lcom/prineside/tdi2/Game$ScreenResizeListener;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/Game;->addScreenResizeListener(Lcom/prineside/tdi2/Game$ScreenResizeListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;)Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    return-object p0
.end method

.method public static synthetic b(Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;)Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    return-object p0
.end method

.method public static synthetic c(Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;)Lcom/prineside/tdi2/GameSystemProvider;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;->q:Lcom/prineside/tdi2/GameSystemProvider;

    return-object p0
.end method

.method public static synthetic d(Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;)I
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;->p:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;->p:I

    return v0
.end method


# virtual methods
.method public add(FFLcom/badlogic/gdx/scenes/scene2d/Actor;IIFF)V
    .locals 8

    const/4 p4, 0x0

    cmpl-float v0, p1, p4

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_5

    invoke-virtual {p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    sub-float/2addr p1, v0

    invoke-virtual {p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v0

    mul-float v0, v0, v1

    sub-float/2addr p2, v0

    invoke-virtual {p3, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result p1

    mul-float p1, p1, v1

    invoke-virtual {p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result p2

    mul-float p2, p2, v1

    invoke-virtual {p3, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOrigin(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    instance-of p1, p3, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz p1, :cond_0

    move-object p1, p3

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    :cond_0
    invoke-static {p5}, Lcom/badlogic/gdx/utils/Align;->isLeft(I)Z

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    const/high16 p1, -0x40800000    # -1.0f

    goto :goto_0

    :cond_1
    invoke-static {p5}, Lcom/badlogic/gdx/utils/Align;->isRight(I)Z

    move-result p1

    if-eqz p1, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-static {p5}, Lcom/badlogic/gdx/utils/Align;->isBottom(I)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {p5}, Lcom/badlogic/gdx/utils/Align;->isTop(I)Z

    move-result p2

    if-eqz p2, :cond_4

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    :goto_1
    mul-float p5, p6, v1

    invoke-static {p5, p5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleTo(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;

    move-result-object v2

    const v3, 0x3dcccccd    # 0.1f

    invoke-static {v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->delay(F)Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    move-result-object v4

    sget-object v5, Lcom/badlogic/gdx/math/Interpolation;->swingOut:Lcom/badlogic/gdx/math/Interpolation$SwingOut;

    const v6, 0x3e99999a    # 0.3f

    invoke-static {p5, p4, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleBy(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v4

    invoke-static {p4, p5, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleBy(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;

    move-result-object p5

    invoke-static {v4, p5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->parallel(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    move-result-object p5

    mul-float p7, p7, v0

    invoke-static {p7}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->delay(F)Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    move-result-object p7

    sget-object v0, Lcom/badlogic/gdx/math/Interpolation;->exp5In:Lcom/badlogic/gdx/math/Interpolation$ExpIn;

    invoke-static {p4, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v4

    const/high16 v5, 0x43c00000    # 384.0f

    const v6, 0x3f19999a    # 0.6f

    invoke-static {p4, v5, v6, v0}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveBy(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;

    move-result-object v0

    invoke-static {v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->delay(F)Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    move-result-object v5

    neg-float v6, p6

    sget-object v7, Lcom/badlogic/gdx/math/Interpolation;->exp5Out:Lcom/badlogic/gdx/math/Interpolation$ExpOut;

    invoke-static {v6, p4, v1, v7}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleBy(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;

    move-result-object v6

    invoke-static {v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->delay(F)Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    move-result-object v3

    invoke-static {p4, p6, v1, v7}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleBy(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleByAction;

    move-result-object p4

    invoke-static {v3, p4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object p4

    invoke-static {v6, p4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->parallel(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    move-result-object p4

    invoke-static {v5, p4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object p4

    invoke-static {v4, v0, p4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->parallel(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    move-result-object p4

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->removeActor()Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;

    move-result-object p6

    invoke-static {p5, p7, p4, p6}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object p4

    const/high16 p5, 0x43000000    # 128.0f

    mul-float p1, p1, p5

    mul-float p2, p2, p5

    const/high16 p5, 0x3fc00000    # 1.5f

    sget-object p6, Lcom/badlogic/gdx/math/Interpolation;->circleOut:Lcom/badlogic/gdx/math/Interpolation;

    invoke-static {p1, p2, p5, p6}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveBy(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->parallel(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    :cond_5
    return-void
.end method

.method public addPapers(FFI)V
    .locals 4

    const/16 v0, 0x3e8

    if-le p3, v0, :cond_0

    const/16 p3, 0x3e8

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p3, :cond_4

    const/4 v1, 0x5

    const/16 v2, 0x14

    const/16 v3, 0x64

    if-lt p3, v3, :cond_1

    const/16 v1, 0x64

    goto :goto_1

    :cond_1
    if-lt p3, v2, :cond_2

    const/16 v1, 0x14

    goto :goto_1

    :cond_2
    if-lt p3, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    :goto_1
    sub-int/2addr p3, v1

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;->r:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->setup(I)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;->q:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/GraphicsSystem;->mainUi:Lcom/prineside/tdi2/ui/components/MainUi;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/components/MainUi;->particlesCanvas:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    int-to-float v0, v0

    add-float v3, p2, v0

    invoke-virtual {v1, v2, p1, v3}, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;FF)Lcom/prineside/tdi2/ui/actors/ParticlesCanvas$ParticleConfig;

    const/high16 v1, 0x40400000    # 3.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    :cond_4
    return-void
.end method

.method public dispose()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;->t:Lcom/prineside/tdi2/Game$ScreenResizeListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/Game;->removeScreenResizeListener(Lcom/prineside/tdi2/Game$ScreenResizeListener;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;->b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/UiManager;->removeLayer(Lcom/prineside/tdi2/managers/UiManager$UiLayer;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/UiManager;->removeLayer(Lcom/prineside/tdi2/managers/UiManager$UiLayer;)V

    return-void
.end method
