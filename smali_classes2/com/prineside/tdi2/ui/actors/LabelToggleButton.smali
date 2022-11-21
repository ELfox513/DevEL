.class public Lcom/prineside/tdi2/ui/actors/LabelToggleButton;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
.source "SourceFile"


# instance fields
.field public label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public onToggle:Lcom/prineside/tdi2/utils/ObjectRetriever;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/prineside/tdi2/utils/ObjectRetriever<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public toggleImage:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public x0:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZIFLcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZIF",
            "Lcom/prineside/tdi2/utils/ObjectRetriever<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;-><init>(Ljava/lang/String;ZIFZLcom/prineside/tdi2/utils/ObjectRetriever;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZIFZLcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZIFZ",
            "Lcom/prineside/tdi2/utils/ObjectRetriever<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual/range {p0 .. p6}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;->setup(Ljava/lang/String;ZIFZLcom/prineside/tdi2/utils/ObjectRetriever;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/prineside/tdi2/utils/ObjectRetriever<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/16 v3, 0x1e

    const/high16 v4, 0x42400000    # 48.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;-><init>(Ljava/lang/String;ZIFLcom/prineside/tdi2/utils/ObjectRetriever;)V

    return-void
.end method

.method public static synthetic z(Lcom/prineside/tdi2/ui/actors/LabelToggleButton;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;->x0:Z

    return p0
.end method


# virtual methods
.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;->x0:Z

    return v0
.end method

.method public setEnabled(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;->x0:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;->toggleImage:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "settings-toggle-on"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;->toggleImage:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "settings-toggle-off"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    :goto_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setup(Ljava/lang/String;ZIFZLcom/prineside/tdi2/utils/ObjectRetriever;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZIFZ",
            "Lcom/prineside/tdi2/utils/ObjectRetriever<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p6, p0, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;->onToggle:Lcom/prineside/tdi2/utils/ObjectRetriever;

    sget-object p6, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p0, p6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance p6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v0, p3}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object p3

    invoke-direct {p6, p1, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object p6, p0, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object p1, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P300:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p6, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    new-instance p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;->toggleImage:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 p1, 0x40000000    # 2.0f

    if-eqz p5, :cond_0

    iget-object p3, p0, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p3

    invoke-virtual {p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p3

    const/high16 p5, 0x42000000    # 32.0f

    invoke-virtual {p3, p5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object p3, p0, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;->toggleImage:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p3

    mul-float p1, p1, p4

    invoke-virtual {p3, p1, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p3

    invoke-virtual {p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p3

    const/high16 p5, 0x41800000    # 16.0f

    invoke-virtual {p3, p5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p3

    invoke-virtual {p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object p3, p0, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;->toggleImage:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p3

    invoke-virtual {p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->right()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p3

    mul-float p1, p1, p4

    invoke-virtual {p3, p1, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    :goto_0
    new-instance p1, Lcom/prineside/tdi2/ui/actors/LabelToggleButton$1;

    invoke-direct {p1, p0}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton$1;-><init>(Lcom/prineside/tdi2/ui/actors/LabelToggleButton;)V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {p0, p2}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;->setEnabled(Z)V

    return-void
.end method
