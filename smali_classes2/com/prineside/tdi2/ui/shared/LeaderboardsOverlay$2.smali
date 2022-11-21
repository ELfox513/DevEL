.class Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;->show(Lcom/prineside/tdi2/BasicLevel;Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/prineside/tdi2/utils/ObjectRetriever<",
        "Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;

.field public final synthetic b:Lcom/prineside/tdi2/BasicLevel;

.field public final synthetic c:Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;Lcom/prineside/tdi2/BasicLevel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay$2;->c:Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;

    iput-object p2, p0, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay$2;->a:Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;

    iput-object p3, p0, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay$2;->b:Lcom/prineside/tdi2/BasicLevel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public retrieved(Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay$2;->c:Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;

    invoke-static {v2}, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;->d(Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-boolean v2, v1, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;->success:Z

    if-eqz v2, :cond_12

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay$2;->c:Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;

    invoke-static {v2}, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;->e(Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v5, "blank"

    invoke-virtual {v2, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    new-instance v6, Lcom/badlogic/gdx/graphics/Color;

    const/4 v7, 0x0

    const v8, 0x3e0f5c29    # 0.14f

    invoke-direct {v6, v7, v7, v7, v8}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;->tint(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-result-object v2

    const/4 v6, 0x0

    :goto_0
    iget-object v9, v1, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;->entries:Lcom/badlogic/gdx/utils/Array;

    iget v10, v9, Lcom/badlogic/gdx/utils/Array;->size:I

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x42800000    # 64.0f

    if-ge v6, v10, :cond_c

    invoke-virtual {v9, v6}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    new-instance v14, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget v15, v9, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;->rank:I

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v7, 0x18

    invoke-virtual {v11, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v11

    invoke-direct {v14, v15, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const v11, 0x3f0f5c29    # 0.56f

    invoke-virtual {v14, v12, v12, v12, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v14, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v10, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v11

    const/high16 v14, 0x429e0000    # 79.0f

    invoke-virtual {v11, v14, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v11

    const/high16 v14, 0x41200000    # 10.0f

    invoke-virtual {v11, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v11}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {v11, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v14, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v15, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v14, v13, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v15, v15, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v11, v14}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    iget v15, v9, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;->profileLevel:I

    invoke-virtual {v14, v15}, Lcom/prineside/tdi2/managers/AuthManager;->getProfileLevelTextures(I)Lcom/badlogic/gdx/utils/Array;

    move-result-object v14

    const/4 v15, 0x0

    :goto_1
    iget v4, v14, Lcom/badlogic/gdx/utils/Array;->size:I

    const/high16 v7, 0x42400000    # 48.0f

    if-ge v15, v4, :cond_0

    iget-object v4, v14, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/utils/TextureRegionConfig;

    aget-object v4, v4, v15

    const/high16 v8, 0x41000000    # 8.0f

    invoke-virtual {v4, v8, v8, v7}, Lcom/prineside/tdi2/utils/TextureRegionConfig;->createImage(FFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v4

    invoke-virtual {v11, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v15, v15, 0x1

    const/16 v7, 0x18

    const v8, 0x3e0f5c29    # 0.14f

    goto :goto_1

    :cond_0
    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>()V

    iget-boolean v8, v9, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;->hasProfilePicture:Z

    if-eqz v8, :cond_1

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/prineside/tdi2/Config;->AVATAR_WEB_TEXTURES_URL:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v9, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;->playerId:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "-32.png"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/prineside/tdi2/managers/AssetManager;->loadWebTexture(Ljava/lang/String;)Lcom/prineside/tdi2/managers/AssetManager$WebTextureRegion;

    move-result-object v11

    invoke-direct {v8, v11}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    goto :goto_2

    :cond_1
    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v11, "icon-user"

    invoke-virtual {v8, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const v8, 0x3e8f5c29    # 0.28f

    invoke-virtual {v4, v12, v12, v12, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    :goto_2
    invoke-virtual {v4, v7, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v7, 0x41800000    # 16.0f

    invoke-virtual {v4, v7, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v10, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v8, 0x42000000    # 32.0f

    invoke-virtual {v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {v10, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v8

    const/high16 v11, 0x42c80000    # 100.0f

    invoke-virtual {v8, v11, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v14, "gradient-left"

    invoke-virtual {v11, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v11

    invoke-direct {v8, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const v11, 0x3e0f5c29    # 0.14f

    const/4 v14, 0x0

    invoke-virtual {v8, v14, v14, v14, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const/high16 v15, 0x43000000    # 128.0f

    invoke-virtual {v8, v15, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    const/high16 v15, 0x43960000    # 300.0f

    invoke-virtual {v8, v15, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/prineside/tdi2/ui/actors/LimitedWidthLabel;

    iget-object v15, v9, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;->nickname:Ljava/lang/String;

    const/16 v11, 0x1e

    const/high16 v14, 0x43700000    # 240.0f

    const/16 v13, 0x18

    invoke-direct {v4, v15, v11, v13, v14}, Lcom/prineside/tdi2/ui/actors/LimitedWidthLabel;-><init>(Ljava/lang/CharSequence;IIF)V

    iget-object v11, v9, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;->nickname:Ljava/lang/String;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v13}, Lcom/prineside/tdi2/managers/AuthManager;->getNickname()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    sget-object v11, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_3

    :cond_2
    iget v11, v9, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;->rank:I

    const/4 v13, 0x1

    if-ne v11, v13, :cond_3

    sget-object v11, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_3

    :cond_3
    const/4 v13, 0x2

    if-ne v11, v13, :cond_4

    sget-object v11, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P300:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_3

    :cond_4
    const/4 v13, 0x3

    if-ne v11, v13, :cond_5

    sget-object v11, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P100:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_5
    :goto_3
    sget-object v11, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v4, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance v11, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay$2$1;

    invoke-direct {v11, v0, v9}, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay$2$1;-><init>(Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay$2;Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;)V

    invoke-virtual {v4, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v8, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object v4, v9, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;->badgeIconTexture:Ljava/lang/String;

    const/high16 v11, 0x42200000    # 40.0f

    if-eqz v4, :cond_a

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {v8, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v13

    invoke-virtual {v13, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    iget-object v13, v9, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;->badgeIconTexture:Ljava/lang/String;

    invoke-virtual {v7, v13, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;Z)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v7

    const-string v13, ".png"

    if-nez v7, :cond_6

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/prineside/tdi2/Config;->OPTIONAL_WEB_TEXTURES_URL:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v9, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;->badgeIconTexture:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Lcom/prineside/tdi2/managers/AssetManager;->loadWebTexture(Ljava/lang/String;)Lcom/prineside/tdi2/managers/AssetManager$WebTextureRegion;

    move-result-object v7

    :cond_6
    new-instance v14, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v15, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    invoke-direct {v15, v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-direct {v14, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget-object v7, v9, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;->badgeIconColor:Lcom/badlogic/gdx/graphics/Color;

    if-nez v7, :cond_7

    sget-object v7, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    :cond_7
    invoke-virtual {v14, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v14, v11, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v4, v14}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v7, v9, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;->badgeOverlayTexture:Ljava/lang/String;

    if-eqz v7, :cond_a

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v14, v7, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;Z)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v7

    if-nez v7, :cond_8

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/prineside/tdi2/Config;->OPTIONAL_WEB_TEXTURES_URL:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v9, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;->badgeOverlayTexture:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Lcom/prineside/tdi2/managers/AssetManager;->loadWebTexture(Ljava/lang/String;)Lcom/prineside/tdi2/managers/AssetManager$WebTextureRegion;

    move-result-object v7

    :cond_8
    new-instance v13, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v14, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    invoke-direct {v14, v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-direct {v13, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget-object v7, v9, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;->badgeOverlayColor:Lcom/badlogic/gdx/graphics/Color;

    if-nez v7, :cond_9

    sget-object v7, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    :cond_9
    invoke-virtual {v13, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v13, v11, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v4, v13}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_a
    invoke-virtual {v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->growX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-wide v7, v9, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsEntry;->score:J

    invoke-static {v7, v8}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v9, 0x18

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/16 v7, 0x10

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v10, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v7, 0x42c80000    # 100.0f

    const/high16 v8, 0x42800000    # 64.0f

    invoke-virtual {v4, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    rem-int/lit8 v4, v6, 0x2

    if-nez v4, :cond_b

    invoke-virtual {v10, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    :cond_b
    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay$2;->c:Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;

    invoke-static {v4}, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;->f(Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const v7, 0x44318000    # 710.0f

    const/high16 v8, 0x42800000    # 64.0f

    invoke-virtual {v4, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x1

    const/4 v7, 0x0

    const v8, 0x3e0f5c29    # 0.14f

    goto/16 :goto_0

    :cond_c
    const/high16 v8, 0x42800000    # 64.0f

    int-to-float v2, v10

    mul-float v2, v2, v8

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay$2;->c:Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;

    invoke-static {v4}, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;->g(Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;)Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_d

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay$2;->c:Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;

    invoke-static {v2}, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;->f(Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay$2;->c:Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;

    invoke-static {v4}, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;->g(Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;)Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v4

    iget-object v5, v1, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;->entries:Lcom/badlogic/gdx/utils/Array;

    iget v5, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    int-to-float v5, v5

    const/high16 v6, 0x42800000    # 64.0f

    mul-float v5, v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v2, v12, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    :cond_d
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/AuthManager;->isSignedIn()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay$2;->c:Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;

    invoke-static {v2}, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;->h(Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v2

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->authManager:Lcom/prineside/tdi2/managers/AuthManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/AuthManager;->getNickname()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;->player:Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;

    iget v2, v2, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;->rank:I

    if-nez v2, :cond_e

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay$2;->c:Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;->i(Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay$2;->c:Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;->j(Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "not_ranked"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_e
    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay$2;->c:Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;

    invoke-static {v2}, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;->i(Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v2

    iget-object v4, v1, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;->player:Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;

    iget v4, v4, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;->rank:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay$2;->c:Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;

    invoke-static {v2}, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;->j(Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v2

    iget-object v4, v1, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;->player:Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;

    iget-wide v4, v4, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;->score:J

    invoke-static {v4, v5}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;->player:Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;

    iget v2, v1, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;->rank:I

    const-string v4, " - "

    const-string v5, "your_rank"

    const/4 v6, 0x1

    if-ne v2, v6, :cond_f

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay$2;->c:Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;->k(Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    invoke-virtual {v3, v5}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v4, "leader"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_f
    int-to-float v2, v2

    iget v1, v1, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsRankResult;->total:I

    int-to-float v1, v1

    div-float/2addr v2, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v2, v2, v1

    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->ceil(F)I

    move-result v1

    invoke-static {}, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;->c()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    invoke-static {}, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;->c()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    invoke-virtual {v6, v5}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v3

    const-string v1, "top_percent"

    invoke-virtual {v4, v1, v5}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay$2;->c:Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;->k(Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v1

    invoke-static {}, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;->c()Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_10
    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay$2;->c:Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;->i(Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v1

    const-string v2, "???"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay$2;->c:Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;->h(Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "sign_in_to_get_ranked"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay$2;->c:Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;

    invoke-static {v1}, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;->j(Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v1

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay$2;->a:Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;

    sget-object v3, Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;->score:Lcom/prineside/tdi2/managers/ReplayManager$LeaderboardsMode;

    if-ne v2, v3, :cond_11

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay$2;->b:Lcom/prineside/tdi2/BasicLevel;

    iget-wide v2, v2, Lcom/prineside/tdi2/BasicLevel;->maxScore:J

    goto :goto_4

    :cond_11
    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay$2;->b:Lcom/prineside/tdi2/BasicLevel;

    iget v2, v2, Lcom/prineside/tdi2/BasicLevel;->maxReachedWave:I

    int-to-long v2, v2

    :goto_4
    invoke-static {v2, v3}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_12
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/UiManager;->notifications:Lcom/prineside/tdi2/ui/shared/Notifications;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "failed_to_load_leaderboard"

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "icon-times"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Lcom/prineside/tdi2/enums/StaticSoundType;->FAIL:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/prineside/tdi2/ui/shared/Notifications;->add(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Lcom/badlogic/gdx/graphics/Color;Lcom/prineside/tdi2/enums/StaticSoundType;)Lcom/prineside/tdi2/ui/shared/Notifications$Notification;

    :goto_5
    return-void
.end method

.method public bridge synthetic retrieved(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/shared/LeaderboardsOverlay$2;->retrieved(Lcom/prineside/tdi2/managers/LeaderBoardManager$LeaderboardsResult;)V

    return-void
.end method
