.class Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;
.super Lcom/badlogic/gdx/scenes/scene2d/Group;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/components/LiveLeaderboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListItem"
.end annotation


# instance fields
.field public M:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public N:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public O:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public P:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public Q:Z

.field public R:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;

.field public final synthetic S:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/LiveLeaderboard;Z)V
    .locals 11

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;->S:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-boolean p2, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;->Q:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    const/high16 p1, 0x43a00000    # 320.0f

    const/high16 v0, 0x41f00000    # 30.0f

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    new-instance p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "blank"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v1, 0x43000000    # 128.0f

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v3, 0x42800000    # 64.0f

    invoke-virtual {p1, v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v4, 0x3e8f5c29    # 0.28f

    invoke-virtual {p1, v2, v2, v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "gradient-right"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    invoke-direct {p1, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v5, -0x3e000000    # -32.0f

    invoke-virtual {p1, v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P800:Lcom/badlogic/gdx/graphics/Color;

    iget v7, v6, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v8, v6, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v9, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v10, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, v7, v8, v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v9, "gradient-left"

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v7, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v8, 0x43400000    # 192.0f

    invoke-virtual {v7, v8, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget v8, v6, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v9, v6, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v6, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {v7, v8, v9, v6, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {p0, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v9, "icon-user"

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v6, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v8, 0x42c40000    # 98.0f

    invoke-virtual {v6, v8, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v6, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v6, v0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v6, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v6, v2, v2, v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/prineside/tdi2/ui/actors/LimitedWidthLabel;

    const-string v6, ""

    const/16 v8, 0x18

    const/16 v9, 0x15

    const/high16 v10, 0x43480000    # 200.0f

    invoke-direct {v4, v6, v8, v9, v10}, Lcom/prineside/tdi2/ui/actors/LimitedWidthLabel;-><init>(Ljava/lang/CharSequence;IIF)V

    iput-object v4, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/16 v9, 0x10

    invoke-virtual {v4, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v9, 0x42ec0000    # 118.0f

    invoke-virtual {v4, v9, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v4, v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    invoke-direct {v4, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v4, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v4, v9, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v5, 0x434a0000    # 202.0f

    invoke-virtual {v4, v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p0, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    invoke-direct {v4, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v4, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v4, v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v3, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    if-eqz p2, :cond_0

    const/high16 p2, -0x3d800000    # -64.0f

    invoke-virtual {p1, p2, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 p2, 0x43200000    # 160.0f

    invoke-virtual {p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P800:Lcom/badlogic/gdx/graphics/Color;

    iget v2, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v3, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v4, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    const v5, 0x3f47ae14    # 0.78f

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v7, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget p1, v1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget p2, v1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v0, v1, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {v7, p1, p2, v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    :cond_0
    return-void
.end method

.method public static synthetic p(Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;)Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;->R:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;

    return-object p0
.end method

.method public static synthetic q(Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;)Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;->R:Lcom/prineside/tdi2/ui/components/LiveLeaderboard$PlaceConfig;

    return-object p1
.end method

.method public static synthetic r(Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    return-object p0
.end method


# virtual methods
.method public setup(Ljava/lang/String;JILcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-ltz p1, :cond_1

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-static {p2, p3}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const p1, 0xf4240

    if-lt p4, p1, :cond_2

    iget-object p2, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    div-int p1, p4, p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p1, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(I)Z

    :goto_0
    iget-boolean p1, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;->Q:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object p2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_1

    :cond_3
    const/16 p1, 0xc8

    if-gt p4, p1, :cond_4

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object p2, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P300:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object p2, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P300:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_1
    if-eqz p5, :cond_5

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p1, p5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/LiveLeaderboard$ListItem;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, p2, p2, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    :cond_5
    return-void
.end method
