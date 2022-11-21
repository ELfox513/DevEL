.class Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->setLeaderBoardDate(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/prineside/tdi2/utils/ObjectRetriever<",
        "Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$9;->a:Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public retrieved(Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$9;->a:Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;

    invoke-static {v2}, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->l(Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    iget-boolean v2, v1, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;->success:Z

    const/16 v3, 0x18

    const/4 v4, 0x1

    if-eqz v2, :cond_d

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    iget-object v8, v1, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;->entries:Lcom/badlogic/gdx/utils/Array;

    iget v9, v8, Lcom/badlogic/gdx/utils/Array;->size:I

    const/high16 v10, 0x42c80000    # 100.0f

    const v11, 0x44048000    # 530.0f

    if-ge v6, v9, :cond_6

    invoke-virtual {v8, v6}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {v9, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const/high16 v12, 0x42800000    # 64.0f

    invoke-virtual {v9, v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v13, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$9;->a:Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;

    invoke-static {v13}, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->l(Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v13

    invoke-virtual {v13, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v13

    invoke-virtual {v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    add-float/2addr v7, v12

    rem-int/lit8 v13, v6, 0x2

    if-nez v13, :cond_0

    new-instance v13, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v15, "blank"

    invoke-virtual {v14, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    new-instance v14, Lcom/badlogic/gdx/graphics/Color;

    const v15, 0x252525ff

    invoke-direct {v14, v15}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v13, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v13, v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v9, v13}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_0
    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v14, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v14

    invoke-direct {v11, v13, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v13, 0x42200000    # 40.0f

    invoke-virtual {v11, v13, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const v14, 0x3f0f5c29    # 0.56f

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual {v11, v15, v15, v15, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v11, v13, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v11, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>()V

    iget-boolean v13, v8, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;->hasProfilePicture:Z

    if-eqz v13, :cond_1

    new-instance v13, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/prineside/tdi2/Config;->AVATAR_WEB_TEXTURES_URL:Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v8, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;->playerId:Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-32.png"

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Lcom/prineside/tdi2/managers/AssetManager;->loadWebTexture(Ljava/lang/String;)Lcom/prineside/tdi2/managers/AssetManager$WebTextureRegion;

    move-result-object v5

    invoke-direct {v13, v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {v11, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    goto :goto_1

    :cond_1
    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v13, "icon-user"

    invoke-virtual {v5, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    invoke-virtual {v11, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const v5, 0x3e8f5c29    # 0.28f

    invoke-virtual {v11, v15, v15, v15, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    :goto_1
    const/high16 v5, 0x42b80000    # 92.0f

    const/high16 v13, 0x41800000    # 16.0f

    invoke-virtual {v11, v5, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v5, 0x42000000    # 32.0f

    invoke-virtual {v11, v5, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v5, Lcom/prineside/tdi2/ui/actors/LimitedWidthLabel;

    iget-object v11, v8, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;->nickname:Ljava/lang/String;

    const/16 v13, 0x1e

    const/high16 v14, 0x43700000    # 240.0f

    invoke-direct {v5, v11, v13, v3, v14}, Lcom/prineside/tdi2/ui/actors/LimitedWidthLabel;-><init>(Ljava/lang/CharSequence;IIF)V

    iget-object v11, v8, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;->nickname:Ljava/lang/String;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v13}, Lcom/prineside/tdi2/managers/AuthManager;->getNickname()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    sget-object v11, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_2

    :cond_2
    iget v11, v8, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;->rank:I

    if-ne v11, v4, :cond_3

    sget-object v11, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_2

    :cond_3
    const/4 v13, 0x2

    if-ne v11, v13, :cond_4

    sget-object v11, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P300:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_2

    :cond_4
    const/4 v13, 0x3

    if-ne v11, v13, :cond_5

    sget-object v11, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P100:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_5
    :goto_2
    const/high16 v11, 0x430c0000    # 140.0f

    invoke-virtual {v5, v11, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v5, v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v11, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v5, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance v11, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$9$1;

    invoke-direct {v11, v0, v8}, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$9$1;-><init>(Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$9;Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;)V

    invoke-virtual {v5, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v9, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-wide v13, v8, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;->score:J

    invoke-static {v13, v14}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v8

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v11, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v11

    invoke-direct {v5, v8, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/16 v8, 0x10

    invoke-virtual {v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    const/high16 v8, 0x43c30000    # 390.0f

    invoke-virtual {v5, v8, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v5, v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v9, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_6
    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$9;->a:Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;

    invoke-static {v2}, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->m(Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;)Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v2

    cmpg-float v2, v7, v2

    if-gez v2, :cond_7

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$9;->a:Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;

    invoke-static {v2}, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->l(Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    iget-object v3, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$9;->a:Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;

    invoke-static {v3}, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->m(Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;)Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v3

    sub-float/2addr v3, v7

    invoke-virtual {v2, v11, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    :cond_7
    iget-object v2, v1, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;->player:Lcom/prineside/tdi2/managers/DailyQuestManager$LeaderboardsRank;

    const-string v3, "your_rank"

    if-nez v2, :cond_8

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$9;->a:Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->n(Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$9;->a:Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->o(Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$9;->a:Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->p(Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_8
    iget v5, v2, Lcom/prineside/tdi2/managers/DailyQuestManager$LeaderboardsRank;->rank:I

    const-string v6, " - "

    if-ne v5, v4, :cond_9

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$9;->a:Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;

    invoke-static {v2}, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->p(Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v7, v7, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    invoke-virtual {v7, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v6, "leader"

    invoke-virtual {v3, v6}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "!"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_9
    int-to-float v5, v5

    iget v2, v2, Lcom/prineside/tdi2/managers/DailyQuestManager$LeaderboardsRank;->total:I

    int-to-float v2, v2

    div-float/2addr v5, v2

    mul-float v5, v5, v10

    invoke-static {v5}, Lcom/badlogic/gdx/math/MathUtils;->ceil(F)I

    move-result v2

    if-gez v2, :cond_a

    const/4 v2, 0x0

    :cond_a
    const/16 v5, 0x64

    if-le v2, v5, :cond_b

    const/16 v2, 0x64

    :cond_b
    invoke-static {}, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->c()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    invoke-static {}, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->c()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v5

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v7, v7, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    invoke-virtual {v7, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-static {}, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->c()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-static {}, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->c()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const-string v2, "top_percent"

    invoke-virtual {v5, v2, v6}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$9;->a:Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;

    invoke-static {v2}, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->p(Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v2

    invoke-static {}, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->c()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$9;->a:Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;

    invoke-static {v2}, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->e(Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v2

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/AuthManager;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$9;->a:Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;

    invoke-static {v2}, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->g(Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v2

    iget-object v3, v1, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;->player:Lcom/prineside/tdi2/managers/DailyQuestManager$LeaderboardsRank;

    iget v3, v3, Lcom/prineside/tdi2/managers/DailyQuestManager$LeaderboardsRank;->rank:I

    if-nez v3, :cond_c

    const-string v3, "?"

    goto :goto_4

    :cond_c
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$9;->a:Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;

    invoke-static {v2}, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->h(Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v2

    iget-object v1, v1, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;->player:Lcom/prineside/tdi2/managers/DailyQuestManager$LeaderboardsRank;

    iget-wide v5, v1, Lcom/prineside/tdi2/managers/DailyQuestManager$LeaderboardsRank;->score:J

    invoke-static {v5, v6}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$9;->a:Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->n(Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$9;->a:Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->o(Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_5

    :cond_d
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v5, "failed_to_load"

    invoke-virtual {v2, v5}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$9;->a:Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;

    invoke-static {v2}, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;->l(Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v2, 0x43c80000    # 400.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    :goto_5
    return-void
.end method

.method public bridge synthetic retrieved(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/shared/DailyQuestOverlay$9;->retrieved(Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLeaderboards;)V

    return-void
.end method
