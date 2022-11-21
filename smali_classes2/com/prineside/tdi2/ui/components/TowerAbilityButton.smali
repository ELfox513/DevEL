.class Lcom/prineside/tdi2/ui/components/TowerAbilityButton;
.super Lcom/badlogic/gdx/scenes/scene2d/Group;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/ui/components/TowerAbilityButton$AbilityButtonListener;
    }
.end annotation


# static fields
.field public static final d0:Lcom/badlogic/gdx/graphics/Color;

.field public static final e0:Lcom/badlogic/gdx/graphics/Color;

.field public static final f0:Lcom/badlogic/gdx/graphics/Color;

.field public static final g0:Lcom/badlogic/gdx/graphics/Color;

.field public static final h0:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field public final M:I

.field public final N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public final O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public final P:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public final Q:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public final R:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public final S:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public T:Z

.field public U:Z

.field public V:Z

.field public W:Z

.field public X:Z

.field public Y:Z

.field public Z:Z

.field public a0:F

.field public b0:Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

.field public final c0:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "Lcom/prineside/tdi2/ui/components/TowerAbilityButton$AbilityButtonListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/4 v1, 0x0

    const v2, 0x3e0f5c29    # 0.14f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->d0:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P800:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->e0:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P700:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->f0:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P900:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->g0:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e570a3d    # 0.21f

    invoke-virtual {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->h0:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 7

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(ZI)V

    iput-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->c0:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iput p1, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->M:I

    const/high16 v0, 0x42a00000    # 80.0f

    invoke-virtual {p0, v0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "blank"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v2, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v2, v0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v2, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->Q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const/high16 v3, 0x42ac0000    # 86.0f

    invoke-virtual {v2, v3, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v4, -0x3fc00000    # -3.0f

    invoke-virtual {v2, v4, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "ui-tower-ability-outline"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v2, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v2, v3, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v2, v4, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "icon-check"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v2, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v5, 0x41a80000    # 21.0f

    invoke-virtual {v2, v5, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v5, 0x42800000    # 64.0f

    const/high16 v6, -0x3f800000    # -4.0f

    invoke-virtual {v2, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v2, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->R:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {v2, v3, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v2, v4, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v2, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->S:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    invoke-virtual {v2, v3, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v2, v4, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton$1;

    invoke-direct {v0, p0, p1}, Lcom/prineside/tdi2/ui/components/TowerAbilityButton$1;-><init>(Lcom/prineside/tdi2/ui/components/TowerAbilityButton;I)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p1}, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->E(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Array;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->updateColors()V

    return-void
.end method

.method public static synthetic A(Lcom/prineside/tdi2/ui/components/TowerAbilityButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->Y:Z

    return p1
.end method

.method public static synthetic B(Lcom/prineside/tdi2/ui/components/TowerAbilityButton;F)F
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->a0:F

    return p1
.end method

.method public static synthetic p(Lcom/prineside/tdi2/ui/components/TowerAbilityButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->W:Z

    return p1
.end method

.method public static synthetic q(Lcom/prineside/tdi2/ui/components/TowerAbilityButton;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->C()Z

    move-result p0

    return p0
.end method

.method public static synthetic r(Lcom/prineside/tdi2/ui/components/TowerAbilityButton;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->c0:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    return-object p0
.end method

.method public static synthetic s(Lcom/prineside/tdi2/ui/components/TowerAbilityButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->V:Z

    return p1
.end method

.method public static synthetic t(Lcom/prineside/tdi2/ui/components/TowerAbilityButton;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->T:Z

    return p0
.end method

.method public static synthetic u(Lcom/prineside/tdi2/ui/components/TowerAbilityButton;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->U:Z

    return p0
.end method

.method public static synthetic v(Lcom/prineside/tdi2/ui/components/TowerAbilityButton;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->Z:Z

    return p0
.end method

.method public static synthetic w(Lcom/prineside/tdi2/ui/components/TowerAbilityButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->Z:Z

    return p1
.end method

.method public static synthetic x(Lcom/prineside/tdi2/ui/components/TowerAbilityButton;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->D()V

    return-void
.end method

.method public static synthetic y(Lcom/prineside/tdi2/ui/components/TowerAbilityButton;)Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->b0:Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

    return-object p0
.end method

.method public static synthetic z(Lcom/prineside/tdi2/ui/components/TowerAbilityButton;Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;)Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->b0:Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

    return-object p1
.end method


# virtual methods
.method public final C()Z
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Android:Lcom/badlogic/gdx/Application$ApplicationType;

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->iOS:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final D()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->c0:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->c0:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->c0:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/ui/components/TowerAbilityButton$AbilityButtonListener;

    invoke-interface {v2}, Lcom/prineside/tdi2/ui/components/TowerAbilityButton$AbilityButtonListener;->abilityConfirmed()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->c0:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    return-void
.end method

.method public E(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Array;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/utils/TextureRegionConfig;",
            ">;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/utils/TextureRegionConfig;",
            ">;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/utils/TextureRegionConfig;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->Q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    const/4 v3, 0x0

    :goto_0
    iget v4, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v4, :cond_0

    iget-object v4, p1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/utils/TextureRegionConfig;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->Q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v5

    invoke-virtual {v4, v2, v2, v5}, Lcom/prineside/tdi2/utils/TextureRegionConfig;->createImage(FFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v4

    const v5, 0x3e570a3d    # 0.21f

    invoke-virtual {v4, v2, v2, v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v5, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->Q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->Q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->Q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :goto_1
    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->R:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    const/4 p1, 0x0

    :goto_2
    iget v3, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge p1, v3, :cond_2

    iget-object v3, p2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/utils/TextureRegionConfig;

    aget-object v3, v3, p1

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->R:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v4

    invoke-virtual {v3, v2, v2, v4}, Lcom/prineside/tdi2/utils/TextureRegionConfig;->createImage(FFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f47ae14    # 0.78f

    invoke-virtual {v3, v5, v5, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->R:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->R:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->R:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :goto_3
    if-eqz p3, :cond_5

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->S:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    :goto_4
    iget p1, p3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, p1, :cond_4

    iget-object p1, p3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast p1, [Lcom/prineside/tdi2/utils/TextureRegionConfig;

    aget-object p1, p1, v1

    const/high16 p2, 0x42ac0000    # 86.0f

    invoke-virtual {p1, v2, v2, p2}, Lcom/prineside/tdi2/utils/TextureRegionConfig;->createImage(FFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object p1

    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->S:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->S:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_5

    :cond_5
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->S:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :goto_5
    return-void
.end method

.method public F(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->T:Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->updateColors()V

    return-void
.end method

.method public act(F)V
    .locals 3

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->Y:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->a0:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->a0:F

    const/high16 v1, 0x3f400000    # 0.75f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget v0, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->M:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->Z:Z

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->b0:Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

    if-eqz v1, :cond_0

    iput-boolean v0, v1, Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;->disappearing:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->b0:Lcom/prineside/tdi2/ui/actors/ButtonHoldHint;

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "select_ability_for_all_towers_confirm"

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/prineside/tdi2/ui/components/TowerAbilityButton$2;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/ui/components/TowerAbilityButton$2;-><init>(Lcom/prineside/tdi2/ui/components/TowerAbilityButton;)V

    invoke-virtual {v1, v0, v2}, Lcom/prineside/tdi2/ui/shared/Dialog;->showConfirm(Ljava/lang/CharSequence;Ljava/lang/Runnable;)V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->Y:Z

    :cond_2
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->act(F)V

    return-void
.end method

.method public addListener(Lcom/prineside/tdi2/ui/components/TowerAbilityButton$AbilityButtonListener;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->c0:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->c0:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->U:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->X:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeListener(Lcom/prineside/tdi2/ui/components/TowerAbilityButton$AbilityButtonListener;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->c0:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeValue(Ljava/lang/Object;Z)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "listener is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->U:Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->updateColors()V

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->X:Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->updateColors()V

    return-void
.end method

.method public updateColors()V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iget-boolean v1, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->X:Z

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->T:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->h0:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->U:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->X:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->g0:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->V:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->g0:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->W:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->f0:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->hasActions()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->e0:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->color(Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->g0:Lcom/badlogic/gdx/graphics/Color;

    const v3, 0x3f333333    # 0.7f

    invoke-static {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->color(Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v1

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->forever(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->d0:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    :cond_5
    :goto_0
    return-void
.end method
