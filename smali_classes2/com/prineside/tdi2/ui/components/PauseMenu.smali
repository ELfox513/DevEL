.class public Lcom/prineside/tdi2/ui/components/PauseMenu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/ui/components/PauseMenu$_LootSystemListener;
    }
.end annotation


# instance fields
.field public final a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public final b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public final d:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public k:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public p:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public q:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public r:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public s:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field public t:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field public u:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public v:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public w:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public x:Lcom/prineside/tdi2/GameSystemProvider;

.field public y:Lcom/prineside/tdi2/ui/components/PauseMenu$_LootSystemListener;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    sget-object v3, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->SCREEN:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    const/16 v4, 0xc8

    const-string v5, "PauseMenu overlay"

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;Z)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v2

    iput-object v2, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    const/16 v5, 0xc9

    const-string v7, "PauseMenu main"

    invoke-virtual {v4, v3, v5, v7}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v4

    iput-object v4, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    const/16 v7, 0xca

    const-string v8, "PauseMenu ad loot bonus"

    invoke-virtual {v5, v3, v7, v8}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v3

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->d:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    new-instance v5, Lcom/prineside/tdi2/ui/components/PauseMenu$_LootSystemListener;

    const/4 v7, 0x0

    invoke-direct {v5, v0, v7}, Lcom/prineside/tdi2/ui/components/PauseMenu$_LootSystemListener;-><init>(Lcom/prineside/tdi2/ui/components/PauseMenu;Lcom/prineside/tdi2/ui/components/PauseMenu$1;)V

    iput-object v5, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->y:Lcom/prineside/tdi2/ui/components/PauseMenu$_LootSystemListener;

    iput-object v1, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->x:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v5, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v5

    iget-object v9, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v5, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v9, 0x44070000    # 540.0f

    const/high16 v10, 0x42d20000    # 105.0f

    invoke-virtual {v5, v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->bottom()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v9, 0x42480000    # 50.0f

    invoke-virtual {v5, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v9}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v9

    invoke-direct {v5, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    new-instance v9, Lcom/badlogic/gdx/graphics/Color;

    const v10, 0xd0d0dbf

    invoke-direct {v9, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v5, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v5

    const-string v9, "pause_menu"

    invoke-virtual {v5, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v5, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v10, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget-object v11, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getScrollPaneStyle(F)Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;)V

    invoke-virtual {v10, v7, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setOverscroll(ZZ)V

    invoke-virtual {v10, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setSmoothScrolling(Z)V

    invoke-virtual {v10, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setFadeScrollBars(Z)V

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    const/high16 v11, 0x42200000    # 40.0f

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {v10, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    sget-object v12, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    const/high16 v12, 0x43800000    # 256.0f

    invoke-virtual {v9, v8, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->bottom()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v9, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v9, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v9, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v12, 0x42c80000    # 100.0f

    const/high16 v13, 0x432d0000    # 173.0f

    invoke-virtual {v9, v12, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v9, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v10, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v14, "icon-arrow-pointer-bottom-left"

    invoke-virtual {v13, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v13

    invoke-direct {v9, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v13, 0x42800000    # 64.0f

    invoke-virtual {v9, v13, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v15, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v15, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v15, v15, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v6, "pause_menu_hint_hold_for_auto_wave"

    invoke-virtual {v15, v6}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v8, 0x18

    invoke-virtual {v12, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v12

    sget-object v11, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v15, v12, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v9, v6, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v6, 0x42940000    # 74.0f

    const/high16 v12, 0x42400000    # 48.0f

    invoke-virtual {v9, v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v15, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v15, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v9, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v9, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v9, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v15, 0x43860000    # 268.0f

    const/high16 v7, 0x43080000    # 136.0f

    invoke-virtual {v9, v15, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v10, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v9, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v9

    invoke-direct {v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v7, v13, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v9, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v9, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v9, v9, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v13, "pause_menu_hint_hold_for_pause"

    invoke-virtual {v9, v13}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v13, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v14, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v14

    invoke-direct {v13, v14, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v7, v9, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v7, v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v6, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v7, 0x43910000    # 290.0f

    const/high16 v9, 0x43be0000    # 380.0f

    invoke-virtual {v6, v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v10, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->right()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v7, 0x42200000    # 40.0f

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->right()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v10, 0x24

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v9

    const-string v10, ""

    invoke-direct {v7, v10, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v7, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    const/high16 v9, 0x42200000    # 40.0f

    invoke-virtual {v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->right()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v11, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v11

    invoke-direct {v7, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v7, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->v:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    const/high16 v9, 0x41000000    # 8.0f

    invoke-virtual {v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->right()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v11, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v11

    invoke-direct {v7, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v7, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    const/high16 v10, 0x42200000    # 40.0f

    invoke-virtual {v7, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->right()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v7, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    const/high16 v10, 0x42000000    # 32.0f

    invoke-virtual {v7, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    iget-object v7, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-boolean v7, v7, Lcom/prineside/tdi2/systems/GameStateSystem;->rarityBoostEnabled:Z

    const/high16 v11, 0x41400000    # 12.0f

    const v12, 0x3f0f5c29    # 0.56f

    const/16 v13, 0x15

    if-eqz v7, :cond_0

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v14

    invoke-virtual {v14, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v14

    const/high16 v15, 0x42200000    # 40.0f

    invoke-virtual {v14, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v14

    invoke-virtual {v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v14

    invoke-virtual {v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v14

    invoke-virtual {v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v14

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual {v14, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v14

    invoke-virtual {v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v14

    invoke-virtual {v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v14, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v16, Lcom/prineside/tdi2/Item$D;->RARITY_BOOST:Lcom/prineside/tdi2/items/RarityBoostItem;

    invoke-virtual/range {v16 .. v16}, Lcom/prineside/tdi2/items/RarityBoostItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v9, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v9

    invoke-direct {v14, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v14, v15, v15, v15, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v7, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v8, Lcom/prineside/tdi2/Item$D;->RARITY_BOOST:Lcom/prineside/tdi2/items/RarityBoostItem;

    const/4 v9, 0x0

    invoke-virtual {v8, v10, v9}, Lcom/prineside/tdi2/items/RarityBoostItem;->generateIcon(FZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    :cond_0
    iget-object v7, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-boolean v7, v7, Lcom/prineside/tdi2/systems/GameStateSystem;->lootBoostEnabled:Z

    if-eqz v7, :cond_1

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v8, 0x41000000    # 8.0f

    invoke-virtual {v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v8, 0x42200000    # 40.0f

    invoke-virtual {v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v9, Lcom/prineside/tdi2/Item$D;->LOOT_BOOST:Lcom/prineside/tdi2/items/LootBoostItem;

    invoke-virtual {v9}, Lcom/prineside/tdi2/items/LootBoostItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v14, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v13

    invoke-direct {v5, v9, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v5, v8, v8, v8, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    sget-object v5, Lcom/prineside/tdi2/Item$D;->LOOT_BOOST:Lcom/prineside/tdi2/items/LootBoostItem;

    const/4 v8, 0x0

    invoke-virtual {v5, v10, v8}, Lcom/prineside/tdi2/items/LootBoostItem;->generateIcon(FZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v5

    invoke-virtual {v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    :cond_1
    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillY()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v7, 0x42c80000    # 100.0f

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v7, 0x41f00000    # 30.0f

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->minHeight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v5, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v7, 0x42200000    # 40.0f

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->right()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v7, "settings_instant_auto_wave_calls"

    invoke-virtual {v5, v7}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x18

    if-le v7, v8, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v8, 0x16

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "..."

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_2
    move-object v8, v5

    new-instance v5, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v7}, Lcom/prineside/tdi2/managers/SettingsManager;->isInstantAutoWaveCallEnabled()Z

    move-result v9

    const/16 v10, 0x18

    const/high16 v11, 0x42000000    # 32.0f

    new-instance v12, Lcom/prineside/tdi2/ui/components/PauseMenu$1;

    invoke-direct {v12, v0}, Lcom/prineside/tdi2/ui/components/PauseMenu$1;-><init>(Lcom/prineside/tdi2/ui/components/PauseMenu;)V

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;-><init>(Ljava/lang/String;ZIFLcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v7, 0x42600000    # 56.0f

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v8, 0x43ae0000    # 348.0f

    invoke-virtual {v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v9, 0x42200000    # 40.0f

    invoke-virtual {v5, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->right()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v5, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v9, v9, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v10, "settings_draw_particles"

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v9}, Lcom/prineside/tdi2/managers/SettingsManager;->isParticlesDrawing()Z

    move-result v11

    const/16 v12, 0x18

    const/high16 v13, 0x42000000    # 32.0f

    new-instance v14, Lcom/prineside/tdi2/ui/components/PauseMenu$2;

    invoke-direct {v14, v0}, Lcom/prineside/tdi2/ui/components/PauseMenu$2;-><init>(Lcom/prineside/tdi2/ui/components/PauseMenu;)V

    move-object v9, v5

    invoke-direct/range {v9 .. v14}, Lcom/prineside/tdi2/ui/actors/LabelToggleButton;-><init>(Ljava/lang/String;ZIFLcom/prineside/tdi2/utils/ObjectRetriever;)V

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v9, 0x42200000    # 40.0f

    invoke-virtual {v5, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->right()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v10, v10, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v11, "settings_sound"

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v12, 0x18

    invoke-virtual {v11, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v9, v10, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v5, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v9, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;

    const/high16 v19, 0x43480000    # 200.0f

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v11, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->SOUND_VOLUME:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v20

    const-wide/16 v22, 0x0

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    new-instance v10, Lcom/prineside/tdi2/ui/components/PauseMenu$3;

    invoke-direct {v10, v0}, Lcom/prineside/tdi2/ui/components/PauseMenu$3;-><init>(Lcom/prineside/tdi2/ui/components/PauseMenu;)V

    move-object/from16 v18, v9

    move-object/from16 v26, v10

    invoke-direct/range {v18 .. v26}, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;-><init>(FDDDLcom/prineside/tdi2/utils/ObjectRetriever;)V

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;->setNotifyOnDrag(Z)V

    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v10

    sub-float v10, v7, v10

    const/high16 v11, 0x3f000000    # 0.5f

    mul-float v10, v10, v11

    const/high16 v12, 0x43140000    # 148.0f

    invoke-virtual {v9, v12, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v5, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v10, 0x42200000    # 40.0f

    invoke-virtual {v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->right()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v13, v13, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v14, "settings_music"

    invoke-virtual {v13, v14}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v15, 0x18

    invoke-virtual {v14, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v14

    invoke-direct {v10, v13, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v10, v13, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v10, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;

    const/high16 v18, 0x43480000    # 200.0f

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v14, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->MUSIC_VOLUME:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v13, v14}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v19

    const-wide/16 v21, 0x0

    const-wide/high16 v23, 0x3ff0000000000000L    # 1.0

    new-instance v13, Lcom/prineside/tdi2/ui/components/PauseMenu$4;

    invoke-direct {v13, v0, v1}, Lcom/prineside/tdi2/ui/components/PauseMenu$4;-><init>(Lcom/prineside/tdi2/ui/components/PauseMenu;Lcom/prineside/tdi2/GameSystemProvider;)V

    move-object/from16 v17, v10

    move-object/from16 v25, v13

    invoke-direct/range {v17 .. v25}, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;-><init>(FDDDLcom/prineside/tdi2/utils/ObjectRetriever;)V

    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Lcom/prineside/tdi2/ui/actors/HorizontalSlider;->setNotifyOnDrag(Z)V

    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v9

    sub-float v9, v7, v9

    mul-float v9, v9, v11

    invoke-virtual {v10, v12, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->width(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v7, 0x42200000    # 40.0f

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->right()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    const/high16 v7, 0x41800000    # 16.0f

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v5, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v7, v7, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v8, "continue"

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/prineside/tdi2/ui/components/PauseMenu$5;

    invoke-direct {v8, v0, v1}, Lcom/prineside/tdi2/ui/components/PauseMenu$5;-><init>(Lcom/prineside/tdi2/ui/components/PauseMenu;Lcom/prineside/tdi2/GameSystemProvider;)V

    const-string v9, "icon-triangle-right"

    invoke-direct {v5, v7, v9, v8}, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v5, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v7, v7, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v8, "restart"

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/prineside/tdi2/ui/components/PauseMenu$6;

    invoke-direct {v8, v0, v1}, Lcom/prineside/tdi2/ui/components/PauseMenu$6;-><init>(Lcom/prineside/tdi2/ui/components/PauseMenu;Lcom/prineside/tdi2/GameSystemProvider;)V

    const-string v9, "icon-restart"

    invoke-direct {v5, v7, v9, v8}, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v5, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v7, v7, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v8, "end_game_button_text"

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/prineside/tdi2/ui/components/PauseMenu$7;

    invoke-direct {v8, v0, v1}, Lcom/prineside/tdi2/ui/components/PauseMenu$7;-><init>(Lcom/prineside/tdi2/ui/components/PauseMenu;Lcom/prineside/tdi2/GameSystemProvider;)V

    const-string v9, "icon-times"

    invoke-direct {v5, v7, v9, v8}, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v5, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v7, v7, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v8, "main_menu"

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/prineside/tdi2/ui/components/PauseMenu$8;

    invoke-direct {v8, v0, v1}, Lcom/prineside/tdi2/ui/components/PauseMenu$8;-><init>(Lcom/prineside/tdi2/ui/components/PauseMenu;Lcom/prineside/tdi2/GameSystemProvider;)V

    const-string v9, "icon-house"

    invoke-direct {v5, v7, v9, v8}, Lcom/prineside/tdi2/ui/actors/RightSideMenuButton;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    const-string v7, "pause_menu_main_menu_button"

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->loot:Lcom/prineside/tdi2/systems/LootSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/LootSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->y:Lcom/prineside/tdi2/ui/components/PauseMenu$_LootSystemListener;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/ui/components/PauseMenu;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/ui/components/PauseMenu;->p()V

    return-void
.end method

.method public static synthetic b(Lcom/prineside/tdi2/ui/components/PauseMenu;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/ui/components/PauseMenu;->l()V

    return-void
.end method

.method public static synthetic c(Lcom/prineside/tdi2/ui/components/PauseMenu;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/ui/components/PauseMenu;->j()V

    return-void
.end method

.method public static synthetic d(Lcom/prineside/tdi2/ui/components/PauseMenu;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/ui/components/PauseMenu;->o()V

    return-void
.end method

.method public static synthetic e(Lcom/prineside/tdi2/ui/components/PauseMenu;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/ui/components/PauseMenu;->n()V

    return-void
.end method

.method public static synthetic f(Lcom/prineside/tdi2/ui/components/PauseMenu;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/ui/components/PauseMenu;->k()V

    return-void
.end method

.method public static synthetic g(Lcom/prineside/tdi2/ui/components/PauseMenu;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/ui/components/PauseMenu;->m()V

    return-void
.end method

.method public static synthetic h(Lcom/prineside/tdi2/ui/components/PauseMenu;)Lcom/prineside/tdi2/GameSystemProvider;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/PauseMenu;->x:Lcom/prineside/tdi2/GameSystemProvider;

    return-object p0
.end method

.method public static synthetic i(Lcom/prineside/tdi2/ui/components/PauseMenu;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/PauseMenu;->b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    return-object p0
.end method

.method private synthetic j()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isExplosionsDrawing()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/SettingsManager;->setExplosionsDrawing(Z)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/PauseMenu;->q()V

    return-void
.end method

.method private synthetic k()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isFlyingCoinsEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/SettingsManager;->setFlyingCoinsEnabled(Z)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/PauseMenu;->q()V

    return-void
.end method

.method private synthetic l()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isProjectilesDrawing()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/SettingsManager;->setProjectilesDrawing(Z)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/PauseMenu;->q()V

    return-void
.end method

.method private synthetic m()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isProjectileTrailsDrawing()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/SettingsManager;->setProjectileTrailsDrawing(Z)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/PauseMenu;->q()V

    return-void
.end method

.method private synthetic n()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isStainsEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/SettingsManager;->setStainsEnabled(Z)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/PauseMenu;->q()V

    return-void
.end method

.method private synthetic o()V
    .locals 7

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->LOOT_ICONS_ENABLED:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-nez v6, :cond_0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    :cond_0
    invoke-virtual {v0, v1, v4, v5}, Lcom/prineside/tdi2/managers/SettingsManager;->setCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;D)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/PauseMenu;->q()V

    return-void
.end method

.method private synthetic p()V
    .locals 7

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->DRAW_TOWER_TARGET:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-nez v6, :cond_0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    :cond_0
    invoke-virtual {v0, v1, v4, v5}, Lcom/prineside/tdi2/managers/SettingsManager;->setCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;D)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/PauseMenu;->q()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/PauseMenu;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/UiManager;->removeLayer(Lcom/prineside/tdi2/managers/UiManager$UiLayer;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/PauseMenu;->b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/UiManager;->removeLayer(Lcom/prineside/tdi2/managers/UiManager$UiLayer;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/PauseMenu;->d:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/UiManager;->removeLayer(Lcom/prineside/tdi2/managers/UiManager$UiLayer;)V

    return-void
.end method

.method public final q()V
    .locals 13

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/PauseMenu;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    new-instance v0, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "icon-explosion-range"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    new-instance v3, Lcom/prineside/tdi2/ui/components/n;

    invoke-direct {v3, p0}, Lcom/prineside/tdi2/ui/components/n;-><init>(Lcom/prineside/tdi2/ui/components/PauseMenu;)V

    sget-object v10, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move-object v1, v0

    move-object v4, v10

    move-object v5, v10

    move-object v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/SettingsManager;->isExplosionsDrawing()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P700:Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P900:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v2, v3}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P700:Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P900:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1, v2, v3}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {v0, v1, v1}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconPosition(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    move-result-object v2

    const/high16 v3, 0x42200000    # 40.0f

    invoke-virtual {v2, v3, v3}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/PauseMenu;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v2, 0x42500000    # 52.0f

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v0, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v5, "icon-coins"

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    new-instance v6, Lcom/prineside/tdi2/ui/components/o;

    invoke-direct {v6, p0}, Lcom/prineside/tdi2/ui/components/o;-><init>(Lcom/prineside/tdi2/ui/components/PauseMenu;)V

    move-object v4, v0

    move-object v7, v10

    move-object v8, v10

    move-object v9, v10

    invoke-direct/range {v4 .. v9}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/SettingsManager;->isFlyingCoinsEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P700:Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P900:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v4, v5, v6}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_1

    :cond_1
    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P700:Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P900:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v4, v5, v6}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    :goto_1
    invoke-virtual {v0, v1, v1}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconPosition(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    move-result-object v4

    invoke-virtual {v4, v3, v3}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/PauseMenu;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v0, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v5, "icon-bullet"

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    new-instance v6, Lcom/prineside/tdi2/ui/components/p;

    invoke-direct {v6, p0}, Lcom/prineside/tdi2/ui/components/p;-><init>(Lcom/prineside/tdi2/ui/components/PauseMenu;)V

    move-object v4, v0

    move-object v7, v10

    move-object v8, v10

    move-object v9, v10

    invoke-direct/range {v4 .. v9}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/SettingsManager;->isProjectilesDrawing()Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P700:Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P900:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v4, v5, v6}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_2

    :cond_2
    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P700:Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P900:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v4, v5, v6}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    :goto_2
    invoke-virtual {v0, v1, v1}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconPosition(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    move-result-object v4

    invoke-virtual {v4, v3, v3}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/PauseMenu;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v0, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v5, "icon-projectile-speed"

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    new-instance v6, Lcom/prineside/tdi2/ui/components/q;

    invoke-direct {v6, p0}, Lcom/prineside/tdi2/ui/components/q;-><init>(Lcom/prineside/tdi2/ui/components/PauseMenu;)V

    move-object v4, v0

    move-object v7, v10

    move-object v8, v10

    move-object v9, v10

    invoke-direct/range {v4 .. v9}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/SettingsManager;->isProjectileTrailsDrawing()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P700:Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P900:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v4, v5, v6}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_3

    :cond_3
    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P700:Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P900:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v4, v5, v6}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    :goto_3
    invoke-virtual {v0, v1, v1}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconPosition(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    move-result-object v4

    invoke-virtual {v4, v3, v3}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/PauseMenu;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v0, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v5, "icon-dat-paper"

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    new-instance v6, Lcom/prineside/tdi2/ui/components/r;

    invoke-direct {v6, p0}, Lcom/prineside/tdi2/ui/components/r;-><init>(Lcom/prineside/tdi2/ui/components/PauseMenu;)V

    move-object v4, v0

    move-object v7, v10

    move-object v8, v10

    move-object v9, v10

    invoke-direct/range {v4 .. v9}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/SettingsManager;->isStainsEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P700:Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P900:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v4, v5, v6}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_4

    :cond_4
    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P700:Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P900:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v4, v5, v6}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    :goto_4
    invoke-virtual {v0, v1, v1}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconPosition(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    move-result-object v4

    invoke-virtual {v4, v3, v3}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/PauseMenu;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v0, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v5, "icon-chest"

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    new-instance v6, Lcom/prineside/tdi2/ui/components/s;

    invoke-direct {v6, p0}, Lcom/prineside/tdi2/ui/components/s;-><init>(Lcom/prineside/tdi2/ui/components/PauseMenu;)V

    move-object v4, v0

    move-object v7, v10

    move-object v8, v10

    move-object v9, v10

    invoke-direct/range {v4 .. v9}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v5, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->LOOT_ICONS_ENABLED:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v4

    const-wide/16 v11, 0x0

    cmpl-double v6, v4, v11

    if-eqz v6, :cond_5

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P700:Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P900:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v4, v5, v6}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_5

    :cond_5
    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P700:Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P900:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v4, v5, v6}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    :goto_5
    invoke-virtual {v0, v1, v1}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconPosition(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    move-result-object v4

    invoke-virtual {v4, v3, v3}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/PauseMenu;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v0, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v5, "icon-crosshair"

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    new-instance v6, Lcom/prineside/tdi2/ui/components/t;

    invoke-direct {v6, p0}, Lcom/prineside/tdi2/ui/components/t;-><init>(Lcom/prineside/tdi2/ui/components/PauseMenu;)V

    move-object v4, v0

    move-object v7, v10

    move-object v8, v10

    move-object v9, v10

    invoke-direct/range {v4 .. v9}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v5, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->DRAW_TOWER_TARGET:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v4

    cmpl-double v6, v4, v11

    if-eqz v6, :cond_6

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P700:Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P900:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v4, v5, v6}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_6

    :cond_6
    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P700:Lcom/badlogic/gdx/graphics/Color;

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P900:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v4, v5, v6}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    :goto_6
    invoke-virtual {v0, v1, v1}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconPosition(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/PauseMenu;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v0

    const/high16 v1, -0x3f400000    # -6.0f

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    return-void
.end method

.method public setVisible(Z)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->d:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    if-nez v1, :cond_0

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/UiManager;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setScrollFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    :cond_0
    if-eqz v1, :cond_17

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->x:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/GameStateSystem;->isGameOver()Z

    move-result v1

    if-nez v1, :cond_17

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->purchaseManager:Lcom/prineside/tdi2/managers/PurchaseManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/PurchaseManager;->rewardingAdsAvailable()Z

    move-result v1

    const/4 v2, 0x5

    const/4 v4, 0x1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->d:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    new-instance v1, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v5, Lcom/badlogic/gdx/graphics/Color;

    const v6, 0x383838ff

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    const/16 v6, 0x8

    new-array v7, v6, [F

    fill-array-data v7, :array_0

    invoke-direct {v1, v5, v7}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v7, "loot_bonus_menu_title"

    invoke-virtual {v5, v7}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v8, 0x15

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v7

    invoke-direct {v1, v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v5, 0x42800000    # 64.0f

    const/high16 v7, 0x41980000    # 19.0f

    invoke-virtual {v1, v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v5, 0x42c80000    # 100.0f

    const/high16 v9, 0x41800000    # 16.0f

    invoke-virtual {v1, v5, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->x:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->loot:Lcom/prineside/tdi2/systems/LootSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/LootSystem;->getRewardingAdViews()I

    move-result v1

    const/4 v5, 0x0

    :goto_0
    const/high16 v9, 0x41500000    # 13.0f

    const/16 v10, 0x18

    const/4 v11, 0x0

    if-ge v5, v2, :cond_5

    new-instance v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v14, "blank"

    invoke-virtual {v13, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    int-to-float v13, v5

    const/high16 v14, 0x42780000    # 62.0f

    mul-float v13, v13, v14

    add-float/2addr v13, v7

    invoke-virtual {v12, v13, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v9, 0x42680000    # 58.0f

    const/high16 v13, 0x42100000    # 36.0f

    invoke-virtual {v12, v9, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v14, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v14, v12}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const-string v14, "%"

    const/4 v15, 0x4

    if-ne v5, v15, :cond_1

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v17, Lcom/prineside/tdi2/systems/LootSystem;->REWARDING_AD_VIEW_BONUSES:[I

    aget v3, v17, v5

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v7, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v7

    invoke-direct {v2, v3, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/prineside/tdi2/systems/LootSystem;->REWARDING_AD_VIEW_BONUSES:[I

    aget v7, v7, v5

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v7

    invoke-direct {v2, v3, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    :goto_1
    invoke-virtual {v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX()F

    move-result v3

    invoke-virtual {v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v7

    invoke-virtual {v2, v3, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v2, v9, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    if-le v1, v5, :cond_3

    sget-object v3, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    if-ne v5, v15, :cond_2

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$CYAN;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v12, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_2

    :cond_2
    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v12, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_2

    :cond_3
    const v3, 0x3f0f5c29    # 0.56f

    invoke-virtual {v12, v11, v11, v11, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    if-ne v5, v15, :cond_4

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$CYAN;->P700:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_2

    :cond_4
    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P700:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/high16 v7, 0x41980000    # 19.0f

    goto/16 :goto_0

    :cond_5
    new-instance v1, Lcom/prineside/tdi2/ui/actors/AttentionRaysUnderlay;

    const/high16 v2, 0x43400000    # 192.0f

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P300:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v1, v2, v3}, Lcom/prineside/tdi2/ui/actors/AttentionRaysUnderlay;-><init>(FLcom/badlogic/gdx/graphics/Color;)V

    const/high16 v2, 0x43aa0000    # 340.0f

    const/high16 v3, -0x3dd00000    # -44.0f

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v5, "do_upgrade"

    invoke-virtual {v3, v5}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    new-instance v7, Lcom/prineside/tdi2/ui/components/PauseMenu$9;

    invoke-direct {v7, v0}, Lcom/prineside/tdi2/ui/components/PauseMenu$9;-><init>(Lcom/prineside/tdi2/ui/components/PauseMenu;)V

    invoke-direct {v2, v3, v5, v7}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    const/high16 v3, 0x43ac0000    # 344.0f

    invoke-virtual {v2, v3, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v3, 0x43380000    # 184.0f

    const/high16 v5, 0x429c0000    # 78.0f

    invoke-virtual {v2, v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    new-instance v13, Lcom/prineside/tdi2/utils/QuadDrawable;

    new-instance v3, Lcom/prineside/tdi2/ui/actors/QuadActor;

    sget-object v5, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    new-array v6, v6, [F

    fill-array-data v6, :array_1

    invoke-direct {v3, v5, v6}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-direct {v13, v3}, Lcom/prineside/tdi2/utils/QuadDrawable;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v16, 0x43380000    # 184.0f

    const/high16 v17, 0x429c0000    # 78.0f

    move-object v12, v2

    invoke-virtual/range {v12 .. v17}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v5, "rewarding-ad"

    invoke-virtual {v3, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v13

    const/high16 v14, 0x41600000    # 14.0f

    const/high16 v15, 0x41700000    # 15.0f

    const/high16 v16, 0x42400000    # 48.0f

    const/high16 v17, 0x42400000    # 48.0f

    invoke-virtual/range {v12 .. v17}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v13, 0x42920000    # 73.0f

    const/high16 v14, 0x41700000    # 15.0f

    const/high16 v15, 0x42c80000    # 100.0f

    const/16 v17, 0x8

    invoke-virtual/range {v12 .. v17}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setLabel(FFFFI)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->r:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->x:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->loot:Lcom/prineside/tdi2/systems/LootSystem;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/systems/LootSystem;->getTimeToRewardingAds(Z)F

    move-result v3

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v5, v3, v5

    if-nez v5, :cond_6

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    const-string v1, "MAX"

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setText(Ljava/lang/CharSequence;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v2, v5}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setEnabled(Z)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    cmpl-float v6, v3, v11

    if-nez v6, :cond_7

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setEnabled(Z)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    goto :goto_3

    :cond_7
    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    invoke-static {v3}, Lcom/badlogic/gdx/math/MathUtils;->ceil(F)I

    move-result v1

    invoke-static {v1}, Lcom/prineside/tdi2/utils/StringFormatter;->digestTime(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setText(Ljava/lang/CharSequence;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v2, v5}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setEnabled(Z)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    :cond_8
    :goto_3
    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->x:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v5, v1, Lcom/prineside/tdi2/systems/GameStateSystem;->difficultyMode:Lcom/prineside/tdi2/enums/DifficultyMode;

    invoke-virtual {v3, v5}, Lcom/prineside/tdi2/managers/ProgressManager;->getDifficultyName(Lcom/prineside/tdi2/enums/DifficultyMode;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-object v5, v1, Lcom/prineside/tdi2/systems/GameStateSystem;->difficultyMode:Lcom/prineside/tdi2/enums/DifficultyMode;

    invoke-virtual {v3, v5}, Lcom/prineside/tdi2/managers/ProgressManager;->getDifficultyModeColor(Lcom/prineside/tdi2/enums/DifficultyMode;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v2, v1, Lcom/prineside/tdi2/systems/GameStateSystem;->gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    sget-object v3, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->BASIC_LEVELS:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    if-ne v2, v3, :cond_a

    iget-object v2, v1, Lcom/prineside/tdi2/systems/GameStateSystem;->dailyQuestLevel:Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

    if-eqz v2, :cond_9

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->v:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v5, "daily_quest"

    invoke-virtual {v3, v5}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_9
    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->v:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v5, "basic_level"

    invoke-virtual {v3, v5}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v3, v1, Lcom/prineside/tdi2/systems/GameStateSystem;->basicLevelName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_a
    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->v:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v5, "custom_map"

    invoke-virtual {v3, v5}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->userMapManager:Lcom/prineside/tdi2/managers/UserMapManager;

    iget-object v5, v1, Lcom/prineside/tdi2/systems/GameStateSystem;->userMapId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/prineside/tdi2/managers/UserMapManager;->getUserMap(Ljava/lang/String;)Lcom/prineside/tdi2/UserMap;

    move-result-object v3

    iget-object v3, v3, Lcom/prineside/tdi2/UserMap;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->x:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    iget-object v3, v3, Lcom/prineside/tdi2/systems/GraphicsSystem;->mainUi:Lcom/prineside/tdi2/ui/components/MainUi;

    invoke-virtual {v3}, Lcom/prineside/tdi2/ui/components/MainUi;->nextWaveButtonVisible()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->x:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    iget-object v3, v3, Lcom/prineside/tdi2/systems/GraphicsSystem;->mainUi:Lcom/prineside/tdi2/ui/components/MainUi;

    invoke-virtual {v3}, Lcom/prineside/tdi2/ui/components/MainUi;->gameSpeedButtonVisible()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    new-instance v2, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-direct {v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>()V

    new-instance v3, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/GameStateSystem;->getQuestsIssuedPrizes()Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/badlogic/gdx/utils/Array;-><init>(Lcom/badlogic/gdx/utils/Array;)V

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/prineside/tdi2/IssuedItems;

    iget-object v5, v5, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    goto :goto_6

    :cond_b
    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/GameStateSystem;->getGameLootIssuedItems()Lcom/prineside/tdi2/IssuedItems;

    move-result-object v3

    iget-object v3, v3, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/GameStateSystem;->calculatePrizeGreenPapers()I

    move-result v3

    if-lez v3, :cond_c

    new-instance v5, Lcom/prineside/tdi2/ItemStack;

    sget-object v6, Lcom/prineside/tdi2/Item$D;->GREEN_PAPER:Lcom/prineside/tdi2/items/GreenPaperItem;

    invoke-direct {v5, v6, v3}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_c
    sget-object v3, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v5, v3

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v5, :cond_e

    aget-object v7, v3, v6

    invoke-virtual {v1, v7}, Lcom/prineside/tdi2/systems/GameStateSystem;->getResources(Lcom/prineside/tdi2/enums/ResourceType;)I

    move-result v8

    if-eqz v8, :cond_d

    new-instance v9, Lcom/prineside/tdi2/ItemStack;

    sget-object v10, Lcom/prineside/tdi2/Item$D;->F_RESOURCE:Lcom/prineside/tdi2/items/ResourceItem$ResourceItemFactory;

    invoke-virtual {v10, v7}, Lcom/prineside/tdi2/items/ResourceItem$ResourceItemFactory;->create(Lcom/prineside/tdi2/enums/ResourceType;)Lcom/prineside/tdi2/items/ResourceItem;

    move-result-object v7

    invoke-direct {v9, v7, v8}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/Item;I)V

    invoke-virtual {v2, v9}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_e
    new-instance v3, Lcom/badlogic/gdx/utils/Array;

    const-class v5, Lcom/prineside/tdi2/ItemStack;

    invoke-direct {v3, v5}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    const/4 v5, 0x0

    :goto_8
    iget v6, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v6, :cond_12

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/prineside/tdi2/ItemStack;

    const/4 v7, 0x0

    :goto_9
    iget v8, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v7, v8, :cond_10

    iget-object v8, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v8, [Lcom/prineside/tdi2/ItemStack;

    aget-object v8, v8, v7

    iget-boolean v9, v6, Lcom/prineside/tdi2/ItemStack;->covered:Z

    iget-boolean v10, v8, Lcom/prineside/tdi2/ItemStack;->covered:Z

    if-ne v9, v10, :cond_f

    invoke-virtual {v8}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v9

    invoke-virtual {v6}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/Item;->sameAs(Lcom/prineside/tdi2/Item;)Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-virtual {v8}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v7

    invoke-virtual {v6}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v9

    invoke-static {v7, v9}, Lcom/prineside/tdi2/utils/PMath;->addWithoutOverflow(II)I

    move-result v7

    invoke-virtual {v8, v7}, Lcom/prineside/tdi2/ItemStack;->setCount(I)V

    const/4 v7, 0x1

    goto :goto_a

    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_10
    const/4 v7, 0x0

    :goto_a
    if-nez v7, :cond_11

    new-instance v7, Lcom/prineside/tdi2/ItemStack;

    invoke-direct {v7, v6}, Lcom/prineside/tdi2/ItemStack;-><init>(Lcom/prineside/tdi2/ItemStack;)V

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_12
    sget-object v2, Lcom/prineside/tdi2/managers/ProgressManager;->ITEM_RARITY_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->sort(Ljava/util/Comparator;)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/GameStateSystem;->isGameOver()Z

    move-result v1

    if-nez v1, :cond_16

    iget v1, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    const/16 v2, 0x19

    if-gt v1, v2, :cond_13

    const/4 v2, 0x5

    goto :goto_b

    :cond_13
    const/16 v2, 0xa

    :goto_b
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_c
    iget v7, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v7, :cond_16

    iget-object v7, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Lcom/prineside/tdi2/ItemStack;

    aget-object v7, v7, v5

    new-instance v8, Lcom/prineside/tdi2/ui/actors/ItemCell;

    invoke-direct {v8}, Lcom/prineside/tdi2/ui/actors/ItemCell;-><init>()V

    invoke-virtual {v8}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setCompact()V

    invoke-virtual {v8, v7}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setItem(Lcom/prineside/tdi2/ItemStack;)V

    invoke-virtual {v8, v1, v6}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setColRow(II)V

    iget-boolean v9, v7, Lcom/prineside/tdi2/ItemStack;->covered:Z

    if-eqz v9, :cond_14

    invoke-virtual {v8, v4}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setCovered(Z)V

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v9}, Lcom/prineside/tdi2/ui/actors/ItemCell;->shine(ZZ)V

    goto :goto_d

    :cond_14
    const/4 v9, 0x0

    new-instance v10, Lcom/prineside/tdi2/ui/components/PauseMenu$10;

    invoke-direct {v10, v0, v7}, Lcom/prineside/tdi2/ui/components/PauseMenu$10;-><init>(Lcom/prineside/tdi2/ui/components/PauseMenu;Lcom/prineside/tdi2/ItemStack;)V

    invoke-virtual {v8, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v8, v9, v9}, Lcom/prineside/tdi2/ui/actors/ItemCell;->shine(ZZ)V

    :goto_d
    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/PauseMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    add-int/lit8 v1, v1, 0x1

    if-ne v1, v2, :cond_15

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    const/4 v1, 0x0

    :cond_15
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/components/PauseMenu;->q()V

    :cond_17
    return-void

    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x0
        0x0
        0x42c80000    # 100.0f
        0x44070000    # 540.0f
        0x42d20000    # 105.0f
        0x4405c000    # 535.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x40400000    # 3.0f
        0x0
        0x0
        0x42980000    # 76.0f
        0x43380000    # 184.0f
        0x429c0000    # 78.0f
        0x43350000    # 181.0f
        0x0
    .end array-data
.end method
