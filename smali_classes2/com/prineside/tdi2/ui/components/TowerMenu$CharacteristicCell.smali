.class Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;
.super Lcom/badlogic/gdx/scenes/scene2d/Group;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/components/TowerMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CharacteristicCell"
.end annotation


# instance fields
.field public final M:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public final N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public final O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public final P:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final R:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final S:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public T:Lcom/prineside/tdi2/enums/TowerStatType;

.field public U:F

.field public V:Z

.field public W:F

.field public final X:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

.field public final Y:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

.field public final synthetic Z:Lcom/prineside/tdi2/ui/components/TowerMenu;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/components/TowerMenu;)V
    .locals 12

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->Z:Lcom/prineside/tdi2/ui/components/TowerMenu;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    new-instance p1, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell$1;

    invoke-direct {p1, p0}, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell$1;-><init>(Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;)V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->Y:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    const/high16 p1, 0x43810000    # 258.0f

    const/high16 v0, 0x42800000    # 64.0f

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v1, 0x0

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

    invoke-virtual {v2, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 p1, 0x0

    const v3, 0x3e0f5c29    # 0.14f

    invoke-virtual {v2, p1, p1, p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "tower-menu-stat-line"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v2, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setHeight(F)V

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v2, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setHeight(F)V

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    sget-object v7, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>()V

    iput-object v2, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v3, 0x42400000    # 48.0f

    invoke-virtual {v2, v3, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v4, 0x41000000    # 8.0f

    invoke-virtual {v2, v4, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v11, 0x15

    invoke-virtual {v4, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v5

    const-string v6, ""

    const/high16 v8, 0x42f00000    # 120.0f

    const/16 v9, 0x8

    const/4 v10, 0x1

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;Lcom/badlogic/gdx/graphics/Color;FIZ)V

    iput-object v2, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->X:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v4, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    const-string v5, ""

    invoke-direct {v2, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v2, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2, v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v4, 0x42f00000    # 120.0f

    invoke-virtual {v2, v4, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v5, 0x18

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    const-string v5, "1.23"

    invoke-direct {v2, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v2, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v4, 0x43420000    # 194.0f

    invoke-virtual {v2, v4, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v2, v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/16 p1, 0x10

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v5, 0x12

    invoke-virtual {v2, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    const-string v5, "tiles/s"

    invoke-direct {v0, v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->R:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v0, v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v2, 0x3f800000    # 1.0f

    const v5, 0x3e8f5c29    # 0.28f

    invoke-virtual {v0, v2, v2, v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v2, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    const-string v5, "+1.12"

    invoke-direct {v0, v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->S:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v2, 0x42000000    # 32.0f

    invoke-virtual {v0, v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v0, v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-void
.end method

.method public static synthetic p(Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;)Lcom/prineside/tdi2/enums/TowerStatType;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->T:Lcom/prineside/tdi2/enums/TowerStatType;

    return-object p0
.end method


# virtual methods
.method public q()V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->V:Z

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/4 v2, 0x0

    const v3, 0x3e99999a    # 0.3f

    invoke-static {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v3

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->hide()Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setY(F)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->R:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->S:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    return-void
.end method

.method public r(Lcom/prineside/tdi2/enums/TowerType;Lcom/prineside/tdi2/enums/TowerStatType;F)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    iput-object v1, v0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->T:Lcom/prineside/tdi2/enums/TowerStatType;

    iput v2, v0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->U:F

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->towerStatManager:Lcom/prineside/tdi2/managers/TowerStatManager;

    invoke-virtual {v3, v1}, Lcom/prineside/tdi2/managers/TowerStatManager;->getInstance(Lcom/prineside/tdi2/enums/TowerStatType;)Lcom/prineside/tdi2/managers/TowerStatManager$TowerStat;

    move-result-object v3

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/TowerStatManager$TowerStat;->getIconDrawableAlias()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/TowerStatManager$TowerStat;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->X:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v13, 0x15

    invoke-virtual {v5, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v7

    sget-object v9, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v10, 0x42f00000    # 120.0f

    const/16 v11, 0x8

    const/4 v12, 0x1

    move-object v8, v4

    invoke-virtual/range {v6 .. v12}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;Lcom/badlogic/gdx/graphics/Color;FIZ)V

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearListeners()V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->X:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v5, v5, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    const/high16 v6, 0x42700000    # 60.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    invoke-static {}, Lcom/prineside/tdi2/ui/components/TowerMenu;->h()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    invoke-static {}, Lcom/prineside/tdi2/ui/components/TowerMenu;->h()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    const-string v5, "..."

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :goto_0
    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->X:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    iget v4, v4, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->height:F

    cmpl-float v4, v4, v6

    if-lez v4, :cond_0

    invoke-static {}, Lcom/prineside/tdi2/ui/components/TowerMenu;->h()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/prineside/tdi2/ui/components/TowerMenu;->h()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v7

    iget v7, v7, Lcom/badlogic/gdx/utils/StringBuilder;->length:I

    add-int/lit8 v7, v7, -0x5

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    invoke-static {}, Lcom/prineside/tdi2/ui/components/TowerMenu;->h()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v14, v0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->X:Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v4, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v15

    invoke-static {}, Lcom/prineside/tdi2/ui/components/TowerMenu;->h()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v16

    sget-object v17, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v18, 0x42f00000    # 120.0f

    const/16 v19, 0x8

    const/16 v20, 0x1

    invoke-virtual/range {v14 .. v20}, Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;->setText(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Ljava/lang/CharSequence;Lcom/badlogic/gdx/graphics/Color;FIZ)V

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-static {}, Lcom/prineside/tdi2/ui/components/TowerMenu;->h()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->Y:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    goto :goto_1

    :cond_1
    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    float-to-double v5, v2

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v3, Lcom/prineside/tdi2/managers/TowerStatManager$TowerStat;->unitsAlias:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->R:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    invoke-virtual {v6, v4}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->R:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_2

    :cond_2
    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->R:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    move-object/from16 v5, p1

    invoke-virtual {v4, v5, v1}, Lcom/prineside/tdi2/managers/TowerManager;->getStatConfig(Lcom/prineside/tdi2/enums/TowerType;Lcom/prineside/tdi2/enums/TowerStatType;)Lcom/prineside/tdi2/managers/TowerManager$TowerStatConfig;

    move-result-object v4

    iget-boolean v4, v4, Lcom/prineside/tdi2/managers/TowerManager$TowerStatConfig;->unique:Z

    if-nez v4, :cond_3

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v5, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const v5, 0x3f0f5c29    # 0.56f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6, v6, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    goto :goto_3

    :cond_3
    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->O:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P600:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->P:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_3
    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v5, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/TowerStatManager$TowerStat;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->Z:Lcom/prineside/tdi2/ui/components/TowerMenu;

    invoke-static {v4}, Lcom/prineside/tdi2/ui/components/TowerMenu;->f(Lcom/prineside/tdi2/ui/components/TowerMenu;)Lcom/prineside/tdi2/GameSystemProvider;

    move-result-object v4

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    invoke-virtual {v4, v1}, Lcom/prineside/tdi2/systems/TowerSystem;->getMaxPossibleStat(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v4

    invoke-virtual {v3, v1, v2, v4}, Lcom/prineside/tdi2/managers/TowerManager;->getStatBarCoeff(Lcom/prineside/tdi2/enums/TowerStatType;FF)F

    move-result v1

    const/high16 v2, 0x43810000    # 258.0f

    mul-float v1, v1, v2

    cmpl-float v3, v1, v2

    if-lez v3, :cond_4

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->M:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setWidth(F)V

    return-void
.end method

.method public s(F)V
    .locals 7

    iget v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->U:F

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->q()V

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->V:Z

    iput p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->W:F

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->T:Lcom/prineside/tdi2/enums/TowerStatType;

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->Z:Lcom/prineside/tdi2/ui/components/TowerMenu;

    invoke-static {v4}, Lcom/prineside/tdi2/ui/components/TowerMenu;->f(Lcom/prineside/tdi2/ui/components/TowerMenu;)Lcom/prineside/tdi2/GameSystemProvider;

    move-result-object v4

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    iget-object v5, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->T:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/systems/TowerSystem;->getMaxPossibleStat(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v4

    invoke-virtual {v2, v3, v0, v4}, Lcom/prineside/tdi2/managers/TowerManager;->getStatBarCoeff(Lcom/prineside/tdi2/enums/TowerStatType;FF)F

    move-result v0

    const/high16 v2, 0x43810000    # 258.0f

    mul-float v0, v0, v2

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->T:Lcom/prineside/tdi2/enums/TowerStatType;

    iget-object v5, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->Z:Lcom/prineside/tdi2/ui/components/TowerMenu;

    invoke-static {v5}, Lcom/prineside/tdi2/ui/components/TowerMenu;->f(Lcom/prineside/tdi2/ui/components/TowerMenu;)Lcom/prineside/tdi2/GameSystemProvider;

    move-result-object v5

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    iget-object v6, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->T:Lcom/prineside/tdi2/enums/TowerStatType;

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/systems/TowerSystem;->getMaxPossibleStat(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v5

    invoke-virtual {v3, v4, p1, v5}, Lcom/prineside/tdi2/managers/TowerManager;->getStatBarCoeff(Lcom/prineside/tdi2/enums/TowerStatType;FF)F

    move-result p1

    mul-float p1, p1, v2

    sub-float/2addr p1, v0

    const/4 v3, 0x0

    cmpg-float v4, v0, v2

    if-gez v4, :cond_2

    add-float v4, v0, p1

    cmpl-float v4, v4, v2

    if-lez v4, :cond_1

    sub-float p1, v2, v0

    :cond_1
    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3e99999a    # 0.3f

    invoke-static {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setWidth(F)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->N:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :goto_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->Q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v0, -0x3f000000    # -8.0f

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setY(F)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->R:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    invoke-static {}, Lcom/prineside/tdi2/ui/components/TowerMenu;->h()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    iget p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->W:F

    iget v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->U:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    invoke-static {}, Lcom/prineside/tdi2/ui/components/TowerMenu;->h()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    const/16 v0, 0x2b

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_3
    invoke-static {}, Lcom/prineside/tdi2/ui/components/TowerMenu;->h()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->W:F

    iget v2, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->U:F

    sub-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3, v1}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->S:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->S:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-static {}, Lcom/prineside/tdi2/ui/components/TowerMenu;->h()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->W:F

    iget v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->U:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_4

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->S:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->S:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_1
    return-void
.end method
