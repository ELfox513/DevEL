.class public Lcom/prineside/tdi2/ui/shared/Notifications;
.super Lcom/badlogic/gdx/scenes/scene2d/Group;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/ui/shared/Notifications$Notification;
    }
.end annotation


# static fields
.field public static final DEFAULT_SHOW_DURATION:F = 5.0f

.field public static P:[F

.field public static Q:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field public final M:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public final N:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

.field public final O:Lcom/badlogic/gdx/scenes/scene2d/Group;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [F

    sput-object v0, Lcom/prineside/tdi2/ui/shared/Notifications;->P:[F

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/ui/shared/Notifications;->Q:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    sget-object v1, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->OVERLAY:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    const/16 v2, 0x12c

    const-string v3, "Notifications"

    invoke-virtual {v0, v1, v2, v3}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/ui/shared/Notifications;->M:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v2

    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v1, p0, Lcom/prineside/tdi2/ui/shared/Notifications;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance v1, Lcom/prineside/tdi2/ui/shared/Notifications$1;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/ui/shared/Notifications$1;-><init>(Lcom/prineside/tdi2/ui/shared/Notifications;)V

    iput-object v1, p0, Lcom/prineside/tdi2/ui/shared/Notifications;->O:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x43200000    # 160.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x43e60000    # 460.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-void
.end method

.method public static synthetic p(Lcom/prineside/tdi2/ui/shared/Notifications;)Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/Notifications;->O:Lcom/badlogic/gdx/scenes/scene2d/Group;

    return-object p0
.end method

.method public static synthetic q(Lcom/prineside/tdi2/ui/shared/Notifications;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/Notifications;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    return-object p0
.end method


# virtual methods
.method public add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;
    .locals 6

    if-nez p3, :cond_0

    sget-object p3, Lcom/prineside/tdi2/utils/MaterialColor$BLUE_GREY;->P800:Lcom/badlogic/gdx/graphics/Color;

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/ui/shared/Notifications;->Q:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    sget-object p3, Lcom/prineside/tdi2/ui/shared/Notifications;->Q:Lcom/badlogic/gdx/graphics/Color;

    iget v0, p3, Lcom/badlogic/gdx/graphics/Color;->a:F

    const v1, 0x3f59999a    # 0.85f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iput v1, p3, Lcom/badlogic/gdx/graphics/Color;->a:F

    :cond_1
    if-nez p2, :cond_2

    sget-object p2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p2, p2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string p3, "icon-info"

    invoke-virtual {p2, p3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object p2

    :cond_2
    move-object v3, p2

    new-instance p2, Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    sget-object v4, Lcom/prineside/tdi2/ui/shared/Notifications;->Q:Lcom/badlogic/gdx/graphics/Color;

    const/4 v5, 0x0

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/prineside/tdi2/ui/shared/Notifications$Notification;-><init>(Lcom/prineside/tdi2/ui/shared/Notifications;Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/ui/shared/Notifications$1;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/Notifications;->O:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    if-eqz p4, :cond_3

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    invoke-virtual {p1, p4}, Lcom/prineside/tdi2/managers/SoundManager;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    :cond_3
    return-object p2
.end method
