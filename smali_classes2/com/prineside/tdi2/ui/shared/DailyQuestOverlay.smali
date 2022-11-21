.class public Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$RankPrizesRow;
    }
.end annotation


# static fields
.field public static final G:Lcom/badlogic/gdx/utils/StringBuilder;


# instance fields
.field public A:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public B:Lcom/prineside/tdi2/ui/actors/LabelButton;

.field public C:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public D:Lcom/prineside/tdi2/ui/actors/ComplexButton;

.field public E:F

.field public F:Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

.field public final a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public final b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public c:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public d:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field public f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public h:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public i:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public j:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public k:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public l:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public m:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public n:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public o:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

.field public p:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public r:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public s:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field public t:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field public u:[Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public v:Z

.field public w:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public x:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public y:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public z:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->G:Lcom/badlogic/gdx/utils/StringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 17

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    sget-object v2, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->SHARED_COMPONENTS:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    const/16 v3, 0x6e

    const-string v4, "DailyQuestOverlay tint"

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;Z)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v1

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    const/16 v4, 0x6f

    const-string v6, "DailyQuestOverlay main"

    invoke-virtual {v3, v2, v4, v6}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v2

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "blank"

    invoke-virtual {v4, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    sget-object v4, Lcom/prineside/tdi2/Config;->BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    const v7, 0x3f47ae14    # 0.78f

    iput v7, v4, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v3

    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    new-instance v3, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$1;

    invoke-direct {v3, v0}, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$1;-><init>(Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const v4, 0x44228000    # 650.0f

    const v7, 0x43f44000    # 488.5f

    invoke-virtual {v1, v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOrigin(FF)V

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const v4, 0x44a28000    # 1300.0f

    const v7, 0x44744000    # 977.0f

    invoke-virtual {v2, v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v2, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$2;

    invoke-direct {v2, v0}, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$2;-><init>(Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;)V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const v4, 0x44228000    # 650.0f

    const v8, 0x43f44000    # 488.5f

    invoke-virtual {v2, v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOrigin(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const v4, 0x44a28000    # 1300.0f

    invoke-virtual {v2, v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const/4 v4, 0x0

    const v8, 0x3e8f5c29    # 0.28f

    invoke-direct {v2, v4, v4, v4, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    const/16 v9, 0x8

    new-array v10, v9, [F

    fill-array-data v10, :array_0

    invoke-direct {v1, v2, v10}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    const v2, 0x44088000    # 546.0f

    const v10, 0x44704000    # 961.0f

    invoke-virtual {v1, v2, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const v10, 0x2f2f2fff

    invoke-direct {v2, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    new-array v10, v9, [F

    fill-array-data v10, :array_1

    invoke-direct {v1, v2, v10}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    const v2, 0x44048000    # 530.0f

    invoke-virtual {v1, v2, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v10, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v10, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v11, 0x1e

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v10

    const-string v12, ""

    invoke-direct {v1, v12, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v10, 0x42200000    # 40.0f

    const v13, 0x44648000    # 914.0f

    invoke-virtual {v1, v10, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v13, 0x42c80000    # 100.0f

    const/high16 v14, 0x41b80000    # 23.0f

    invoke-virtual {v1, v13, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v14, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v14}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "2019-04-26 ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v15, v15, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v7, "in_progress"

    invoke-virtual {v15, v7}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v15, 0x15

    invoke-virtual {v14, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v14

    invoke-direct {v1, v7, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const v7, 0x445c8000    # 882.0f

    invoke-virtual {v1, v10, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v14, 0x41800000    # 16.0f

    invoke-virtual {v1, v13, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v15, 0x3f800000    # 1.0f

    const v7, 0x3f0f5c29    # 0.56f

    invoke-virtual {v1, v15, v15, v15, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v9, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v9, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v9, 0x43460000    # 198.0f

    invoke-virtual {v1, v4, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const v9, 0x44258000    # 662.0f

    invoke-virtual {v1, v2, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    new-instance v9, Lcom/badlogic/gdx/graphics/Color;

    const v5, 0x2b2b2bff

    invoke-direct {v9, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v1, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    const/high16 v5, 0x43460000    # 198.0f

    invoke-virtual {v1, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    const v5, 0x44258000    # 662.0f

    invoke-virtual {v1, v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v9, "gradient-top"

    invoke-virtual {v5, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v1, v4, v4, v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const v5, 0x44548000    # 850.0f

    invoke-virtual {v1, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v5, 0x41200000    # 10.0f

    invoke-virtual {v1, v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v5, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v9, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v11, "gradient-bottom"

    invoke-virtual {v9, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v1, v4, v4, v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const/high16 v9, 0x43460000    # 198.0f

    invoke-virtual {v1, v4, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v9, 0x41200000    # 10.0f

    invoke-virtual {v1, v2, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v9, 0x18

    invoke-virtual {v5, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    invoke-direct {v1, v12, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v15, v15, v15, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v5, 0x431d0000    # 157.0f

    invoke-virtual {v1, v10, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v13, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v5, 0x42800000    # 64.0f

    invoke-virtual {v1, v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v11, 0x428a0000    # 69.0f

    invoke-virtual {v1, v4, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    new-instance v11, Lcom/badlogic/gdx/graphics/Color;

    const v14, 0x282828ff

    invoke-direct {v11, v14}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v1, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v11, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v11, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->i:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->i:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->i:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v11, 0x428a0000    # 69.0f

    invoke-virtual {v1, v4, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->i:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v11, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->i:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v11}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v14, 0x1e

    invoke-virtual {v11, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v11

    invoke-direct {v1, v12, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->x:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v10, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->x:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v13, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->i:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v11, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->x:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v11}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->h:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->h:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->h:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v2, 0x428a0000    # 69.0f

    invoke-virtual {v1, v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->h:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->h:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v2, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    invoke-direct {v1, v12, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v10, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v15, v15, v15, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v2, 0x42480000    # 50.0f

    invoke-virtual {v1, v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->h:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/prineside/tdi2/ui/actors/LimitedWidthLabel;

    const/high16 v2, 0x438c0000    # 280.0f

    const/16 v11, 0x1e

    invoke-direct {v1, v12, v11, v9, v2}, Lcom/prineside/tdi2/ui/actors/LimitedWidthLabel;-><init>(Ljava/lang/CharSequence;IIF)V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v2, 0x42f40000    # 122.0f

    invoke-virtual {v1, v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v13, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->h:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v2, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    invoke-direct {v1, v12, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->n:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->n:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v2, 0x43c30000    # 390.0f

    invoke-virtual {v1, v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->n:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v13, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->h:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->n:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    const/high16 v2, 0x439c0000    # 312.0f

    const/high16 v11, 0x43150000    # 149.0f

    invoke-virtual {v1, v2, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v2, 0x43310000    # 177.0f

    const/high16 v11, 0x42000000    # 32.0f

    invoke-virtual {v1, v2, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v13, "icon-skill-point"

    invoke-virtual {v14, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v13

    invoke-direct {v2, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    sget-object v13, Lcom/prineside/tdi2/utils/MaterialColor$CYAN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2, v11, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v14, 0x41000000    # 8.0f

    invoke-virtual {v2, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v14, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v14

    const-string v9, "-"

    invoke-direct {v2, v9, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v1, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v2, v4, v4, v4, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    const/16 v9, 0x8

    new-array v11, v9, [F

    fill-array-data v11, :array_2

    invoke-direct {v1, v2, v11}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    const v2, 0x440e8000    # 570.0f

    invoke-virtual {v1, v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const v2, 0x44354000    # 725.0f

    const v9, 0x44728000    # 970.0f

    invoke-virtual {v1, v2, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v2, Lcom/badlogic/gdx/graphics/Color;

    const v9, 0x2f2f2fff

    invoke-direct {v2, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    const/16 v9, 0x8

    new-array v9, v9, [F

    fill-array-data v9, :array_3

    invoke-direct {v1, v2, v9}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    const v2, 0x44318000    # 710.0f

    const v9, 0x44744000    # 977.0f

    invoke-virtual {v1, v2, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v11, 0x440e8000    # 570.0f

    invoke-virtual {v1, v11, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v11, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v11, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const v11, 0x440e8000    # 570.0f

    invoke-virtual {v1, v11, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, v2, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v9, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v9, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v13, "icon-exclamation-triangle"

    invoke-virtual {v11, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v11

    invoke-direct {v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v9, v5, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v11, 0x445c8000    # 882.0f

    invoke-virtual {v9, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    const/high16 v13, 0x43000000    # 128.0f

    invoke-virtual {v9, v13, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v11, 0x43fa0000    # 500.0f

    invoke-virtual {v9, v11, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v14, 0x24

    invoke-virtual {v13, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v11, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->y:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v11

    invoke-virtual {v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v11

    const/high16 v13, 0x41800000    # 16.0f

    invoke-virtual {v11, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v14, 0x15

    invoke-virtual {v13, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v13

    const-string v14, "00:00:00"

    invoke-direct {v11, v14, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v11, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v11, v15, v15, v15, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v11, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    const/high16 v11, 0x41000000    # 8.0f

    invoke-virtual {v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v11, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v6

    invoke-direct {v9, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v6, 0x44470000    # 796.0f

    invoke-virtual {v9, v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v9, v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    new-instance v11, Lcom/badlogic/gdx/graphics/Color;

    const v13, 0x252525ff

    invoke-direct {v11, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>()V

    iput-object v9, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v11, 0x444a0000    # 808.0f

    invoke-virtual {v9, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v9, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v9, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v9, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v1, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v13, 0x18

    invoke-virtual {v11, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v11

    invoke-direct {v9, v12, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v9, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v11, 0x42c00000    # 96.0f

    invoke-virtual {v9, v11, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v9, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v11, 0x42c80000    # 100.0f

    invoke-virtual {v9, v11, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v9, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v13, 0x18

    invoke-virtual {v11, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v11

    invoke-direct {v9, v12, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v9, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->z:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v11, 0x44370000    # 732.0f

    invoke-virtual {v9, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v9, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->z:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v11, 0x42c80000    # 100.0f

    invoke-virtual {v9, v11, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v9, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->z:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v9, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->s:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const/high16 v11, 0x430c0000    # 140.0f

    invoke-virtual {v9, v2, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v9, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->s:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const v11, 0x4412c000    # 587.0f

    invoke-virtual {v9, v4, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v9, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->s:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v9, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v9, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v9, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v9, v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v9, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v9, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v9, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v11, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->childrenOnly:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v9, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v9, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->j:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v9, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v9, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->j:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v9, v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->j:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v6, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->j:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v6, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->j:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v11, 0x18

    invoke-virtual {v9, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v9

    invoke-direct {v6, v12, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v6, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->A:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v9, 0x43fd0000    # 506.0f

    invoke-virtual {v6, v10, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->A:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v9, 0x42c80000    # 100.0f

    invoke-virtual {v6, v9, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->j:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v9, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->A:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v6, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/prineside/tdi2/ui/actors/LabelButton;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v11, 0x18

    invoke-virtual {v9, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v9

    new-instance v11, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$3;

    invoke-direct {v11, v0}, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$3;-><init>(Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;)V

    invoke-direct {v6, v12, v9, v11}, Lcom/prineside/tdi2/ui/actors/LabelButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    iput-object v6, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->B:Lcom/prineside/tdi2/ui/actors/LabelButton;

    const/high16 v9, 0x43ff0000    # 510.0f

    const/high16 v11, 0x43fd0000    # 506.0f

    invoke-virtual {v6, v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->B:Lcom/prineside/tdi2/ui/actors/LabelButton;

    const/high16 v9, 0x43200000    # 160.0f

    invoke-virtual {v6, v9, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->B:Lcom/prineside/tdi2/ui/actors/LabelButton;

    const/16 v9, 0x10

    invoke-virtual {v6, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->j:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v9, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->B:Lcom/prineside/tdi2/ui/actors/LabelButton;

    invoke-virtual {v6, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-static {}, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$RankPrizesRow;->values()[Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$RankPrizesRow;

    move-result-object v6

    array-length v6, v6

    new-array v6, v6, [Lcom/badlogic/gdx/scenes/scene2d/Group;

    iput-object v6, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->u:[Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-static {}, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$RankPrizesRow;->values()[Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$RankPrizesRow;

    move-result-object v6

    array-length v9, v6

    const/high16 v11, 0x43e50000    # 458.0f

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v9, :cond_0

    aget-object v14, v6, v13

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v7, "gradient-left"

    invoke-virtual {v10, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v5, v4, v4, v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v5, v4, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v7, 0x42400000    # 48.0f

    invoke-virtual {v5, v2, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->j:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->u:[Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aput-object v5, v7, v10

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {v5, v4, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v7, 0x42400000    # 48.0f

    invoke-virtual {v5, v7, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->j:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/high16 v5, 0x42500000    # 52.0f

    sub-float/2addr v11, v5

    add-int/lit8 v13, v13, 0x1

    const/high16 v5, 0x42800000    # 64.0f

    const v7, 0x3f0f5c29    # 0.56f

    const/high16 v10, 0x42200000    # 40.0f

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v5, 0x15

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    invoke-direct {v2, v12, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->C:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const v4, 0x3f0f5c29    # 0.56f

    invoke-virtual {v2, v15, v15, v15, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->C:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v4, 0x431d0000    # 157.0f

    const/high16 v5, 0x42200000    # 40.0f

    invoke-virtual {v2, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->C:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v4, 0x41800000    # 16.0f

    const/high16 v6, 0x42c80000    # 100.0f

    invoke-virtual {v2, v6, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->C:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const/high16 v4, 0x42880000    # 68.0f

    invoke-virtual {v2, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const/high16 v4, 0x43a00000    # 320.0f

    const/high16 v5, 0x42900000    # 72.0f

    invoke-virtual {v2, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "icon-times"

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    new-instance v6, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$4;

    invoke-direct {v6, v0}, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$4;-><init>(Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;)V

    sget-object v7, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    sget-object v8, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P400:Lcom/badlogic/gdx/graphics/Color;

    sget-object v9, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P600:Lcom/badlogic/gdx/graphics/Color;

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    const v2, 0x44998000    # 1228.0f

    const v4, 0x44648000    # 914.0f

    invoke-virtual {v1, v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v2, 0x42c00000    # 96.0f

    const/high16 v4, 0x42c00000    # 96.0f

    invoke-virtual {v1, v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v1, v2, v2}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconPosition(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/high16 v2, 0x42800000    # 64.0f

    invoke-virtual {v1, v2, v2}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v4, 0x1e

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v2

    new-instance v4, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$5;

    invoke-direct {v4, v0}, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$5;-><init>(Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;)V

    invoke-direct {v1, v12, v2, v4}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->D:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const v2, 0x4484e000    # 1063.0f

    const/high16 v4, 0x42820000    # 65.0f

    invoke-virtual {v1, v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->D:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v2, 0x436b0000    # 235.0f

    const/high16 v4, 0x42b80000    # 92.0f

    invoke-virtual {v1, v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->D:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "ui-daily-quest-play-button"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x436b0000    # 235.0f

    const/high16 v10, 0x42b80000    # 92.0f

    invoke-virtual/range {v5 .. v10}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v11, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->D:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "icon-joystick"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v12

    const/high16 v13, 0x41e80000    # 29.0f

    const/high16 v14, 0x41d00000    # 26.0f

    const/high16 v15, 0x42400000    # 48.0f

    const/high16 v16, 0x42400000    # 48.0f

    invoke-virtual/range {v11 .. v16}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->D:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v5, 0x42b40000    # 90.0f

    const/high16 v6, 0x41300000    # 11.0f

    const/high16 v7, 0x42c80000    # 100.0f

    const/high16 v8, 0x42a40000    # 82.0f

    const/16 v9, 0x8

    invoke-virtual/range {v4 .. v9}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setLabel(FFFFI)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->D:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    return-void

    nop

    :array_0
    .array-data 4
        0x41800000    # 16.0f
        0x41d00000    # 26.0f
        0x41800000    # 16.0f
        0x446e0000    # 952.0f
        0x44088000    # 546.0f
        0x44704000    # 961.0f
        0x44088000    # 546.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x42000000    # 32.0f
        0x0
        0x44728000    # 970.0f
        0x44048000    # 530.0f
        0x44744000    # 977.0f
        0x44048000    # 530.0f
        0x41980000    # 19.0f
    .end array-data

    :array_2
    .array-data 4
        0x41c80000    # 25.0f
        0x0
        0x41c80000    # 25.0f
        0x44728000    # 970.0f
        0x44334000    # 717.0f
        0x446f0000    # 956.0f
        0x44354000    # 725.0f
        0x41d80000    # 27.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x41980000    # 19.0f
        0x0
        0x44744000    # 977.0f
        0x44318000    # 710.0f
        0x4471c000    # 967.0f
        0x44318000    # 710.0f
        0x42280000    # 42.0f
    .end array-data
.end method

.method public static synthetic a(Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->v:Z

    return p0
.end method

.method public static synthetic b(Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;)F
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->E:F

    return p0
.end method

.method public static synthetic c()Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->G:Lcom/badlogic/gdx/utils/StringBuilder;

    return-object v0
.end method

.method public static synthetic d(Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;F)F
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->E:F

    return p1
.end method

.method public static synthetic e(Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    return-object p0
.end method

.method public static synthetic f(Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;F)F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->E:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->E:F

    return v0
.end method

.method public static synthetic g(Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    return-object p0
.end method

.method public static synthetic h(Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->n:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    return-object p0
.end method

.method public static synthetic i(Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->r()V

    return-void
.end method

.method public static synthetic j(Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    return-object p0
.end method

.method public static synthetic k(Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    return-object p0
.end method

.method public static synthetic l(Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    return-object p0
.end method

.method public static synthetic m(Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;)Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->o:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    return-object p0
.end method

.method public static synthetic n(Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;)Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->h:Lcom/badlogic/gdx/scenes/scene2d/Group;

    return-object p0
.end method

.method public static synthetic o(Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;)Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->i:Lcom/badlogic/gdx/scenes/scene2d/Group;

    return-object p0
.end method

.method public static synthetic p(Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    return-object p0
.end method


# virtual methods
.method public hide()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->setVisible(Z)V

    return-void
.end method

.method public final q(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/Group;Lcom/badlogic/gdx/utils/Array;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lcom/badlogic/gdx/scenes/scene2d/Group;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ItemStack;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 p1, 0x42200000    # 40.0f

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 p1, 0x42c80000    # 100.0f

    const/high16 v2, 0x42400000    # 48.0f

    invoke-virtual {v0, p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    const/high16 v0, 0x430c0000    # 140.0f

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const v0, 0x440e8000    # 570.0f

    invoke-virtual {p1, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v1, p3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v1

    const/high16 v3, 0x42000000    # 32.0f

    invoke-virtual {v1, v3, p2}, Lcom/prineside/tdi2/Item;->generateIcon(FZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v4}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v5, 0x15

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-void
.end method

.method public final r()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->F:Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, v0, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->endTimestamp:I

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v1

    sub-int/2addr v0, v1

    if-gez v0, :cond_1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->dailyQuestManager:Lcom/prineside/tdi2/managers/DailyQuestManager;

    new-instance v1, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$8;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$8;-><init>(Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/DailyQuestManager;->getCurrentDayLevel(Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-static {v0}, Lcom/prineside/tdi2/utils/StringFormatter;->digestTime(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->f:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :goto_0
    return-void
.end method

.method public setLeaderBoardDate(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "loading-icon"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v1, 0x42000000    # 32.0f

    invoke-virtual {v0, v1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOrigin(FF)V

    const/high16 v1, 0x42b40000    # 90.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->rotateBy(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/RotateByAction;

    move-result-object v1

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->forever(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, 0x42800000    # 64.0f

    invoke-virtual {v0, v1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->dailyQuestManager:Lcom/prineside/tdi2/managers/DailyQuestManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/DailyQuestManager;->getCurrentDayDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "in_progress"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->dailyQuestManager:Lcom/prineside/tdi2/managers/DailyQuestManager;

    new-instance v1, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$9;

    invoke-direct {v1, p0}, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$9;-><init>(Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;)V

    invoke-virtual {v0, p1, v1}, Lcom/prineside/tdi2/managers/DailyQuestManager;->getLeaderboards(Ljava/lang/String;Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-static {v0, v1, v2}, Lcom/prineside/tdi2/utils/UiUtils;->bouncyShowOverlay(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-static {v0, v1, v2}, Lcom/prineside/tdi2/utils/UiUtils;->bouncyHideOverlay(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    :goto_0
    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->v:Z

    return-void
.end method

.method public show(Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;)V
    .locals 7

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->setVisible(Z)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "leaderboard"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->x:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "sign_in_to_get_ranked"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->y:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "daily_quest"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->z:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "complete_daily_quest_for_rewards"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->A:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "get_ranked_daily_to_win_more"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->B:Lcom/prineside/tdi2/ui/actors/LabelButton;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "rules"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->C:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "all_time_top_players"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->D:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "play"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setText(Ljava/lang/CharSequence;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->F:Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->isLocalFallback:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DailyQuestOverlay"

    invoke-static {v2, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->getLevelName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "date: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->forDate:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->wasCompleted()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "checkbox-checked"

    goto :goto_0

    :cond_0
    const-string v3, "checkbox"

    :goto_0
    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->getQuestName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->r()V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->s:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->getQuestRewards()Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    iget v4, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v4, :cond_1

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/ItemStack;

    new-instance v5, Lcom/prineside/tdi2/ui/actors/ItemCell;

    invoke-direct {v5}, Lcom/prineside/tdi2/ui/actors/ItemCell;-><init>()V

    sget-object v6, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v5, v4}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setItem(Lcom/prineside/tdi2/ItemStack;)V

    invoke-virtual {v5, v3, v2}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setColRow(II)V

    new-instance v6, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$6;

    invoke-direct {v6, p0, v4}, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$6;-><init>(Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;Lcom/prineside/tdi2/ItemStack;)V

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    iget-object v4, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->s:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x43000000    # 128.0f

    const/high16 v6, 0x430c0000    # 140.0f

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-boolean v1, p1, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->isLocalFallback:Z

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->j:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto/16 :goto_2

    :cond_2
    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->j:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "first_short"

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->u:[Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v4, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$RankPrizesRow;->FIRST:Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$RankPrizesRow;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-object v3, v3, v4

    iget-object v4, p1, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->prizesFirstPlace:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0, v1, v3, v4}, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->q(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/Group;Lcom/badlogic/gdx/utils/Array;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "second_short"

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->u:[Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v4, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$RankPrizesRow;->SECOND:Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$RankPrizesRow;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-object v3, v3, v4

    iget-object v4, p1, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->prizesSecondPlace:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0, v1, v3, v4}, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->q(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/Group;Lcom/badlogic/gdx/utils/Array;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "third_short"

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->u:[Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v4, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$RankPrizesRow;->THIRD:Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$RankPrizesRow;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget-object v3, v3, v4

    iget-object v4, p1, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->prizesThirdPlace:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0, v1, v3, v4}, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->q(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/Group;Lcom/badlogic/gdx/utils/Array;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "3"

    aput-object v4, v3, v2

    const-string v4, "top_percent"

    invoke-virtual {v1, v4, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->u:[Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v5, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$RankPrizesRow;->TOP_3:Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$RankPrizesRow;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget-object v3, v3, v5

    iget-object v5, p1, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->prizesTop3Percent:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0, v1, v3, v5}, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->q(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/Group;Lcom/badlogic/gdx/utils/Array;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    new-array v3, v0, [Ljava/lang/Object;

    const-string v5, "10"

    aput-object v5, v3, v2

    invoke-virtual {v1, v4, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->u:[Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v5, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$RankPrizesRow;->TOP_10:Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$RankPrizesRow;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget-object v3, v3, v5

    iget-object v5, p1, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->prizesTop10Percent:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0, v1, v3, v5}, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->q(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/Group;Lcom/badlogic/gdx/utils/Array;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "30"

    aput-object v3, v0, v2

    invoke-virtual {v1, v4, v0}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->u:[Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v2, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$RankPrizesRow;->TOP_30:Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$RankPrizesRow;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    iget-object p1, p1, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;->prizesTop30Percent:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0, v0, v1, p1}, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->q(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/Group;Lcom/badlogic/gdx/utils/Array;)V

    :goto_2
    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->leaderBoardManager:Lcom/prineside/tdi2/managers/LeaderBoardManager;

    new-instance v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$7;

    invoke-direct {v0, p0}, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$7;-><init>(Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;)V

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/managers/LeaderBoardManager;->getSkillPointLeaderboards(Lcom/prineside/tdi2/utils/ObjectRetriever;)V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->dailyQuestManager:Lcom/prineside/tdi2/managers/DailyQuestManager;

    invoke-virtual {p1}, Lcom/prineside/tdi2/managers/DailyQuestManager;->getCurrentDayDate()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->setLeaderBoardDate(Ljava/lang/String;)V

    return-void
.end method
