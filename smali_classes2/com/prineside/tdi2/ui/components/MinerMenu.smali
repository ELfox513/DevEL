.class public Lcom/prineside/tdi2/ui/components/MinerMenu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/ui/components/MinerMenu$_SideMenuListener;,
        Lcom/prineside/tdi2/ui/components/MinerMenu$_MapSystemListener;,
        Lcom/prineside/tdi2/ui/components/MinerMenu$_Game_StateSystemListener;,
        Lcom/prineside/tdi2/ui/components/MinerMenu$_MinerSystemListener;,
        Lcom/prineside/tdi2/ui/components/MinerMenu$_LootSystemListener;
    }
.end annotation


# static fields
.field public static final O:Lcom/badlogic/gdx/utils/StringBuilder;


# instance fields
.field public final A:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public final B:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final C:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final D:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final E:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final F:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final G:Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;

.field public final H:Lcom/prineside/tdi2/ui/components/SellButton;

.field public final I:Lcom/prineside/tdi2/GameSystemProvider;

.field public final J:Lcom/prineside/tdi2/ui/components/MinerMenu$_SideMenuListener;

.field public final K:Lcom/prineside/tdi2/ui/components/MinerMenu$_MapSystemListener;

.field public final L:Lcom/prineside/tdi2/ui/components/MinerMenu$_Game_StateSystemListener;

.field public final M:Lcom/prineside/tdi2/ui/components/MinerMenu$_MinerSystemListener;

.field public final N:Lcom/prineside/tdi2/ui/components/MinerMenu$_LootSystemListener;

.field public final a:Lcom/prineside/tdi2/ui/actors/SideMenu;

.field public final b:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

.field public d:Z

.field public final k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final q:Lcom/prineside/tdi2/ui/actors/ExpLine;

.field public final r:Lcom/prineside/tdi2/ui/components/TileResources;

.field public final s:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public final t:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public final u:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final v:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final w:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final x:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public y:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field public final z:[Lcom/badlogic/gdx/scenes/scene2d/Group;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->O:Lcom/badlogic/gdx/utils/StringBuilder;

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/ui/actors/SideMenu;Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v3, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v4, v3

    new-array v4, v4, [Lcom/badlogic/gdx/scenes/scene2d/Group;

    iput-object v4, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->z:[Lcom/badlogic/gdx/scenes/scene2d/Group;

    array-length v4, v3

    new-array v4, v4, [Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iput-object v4, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->A:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    array-length v4, v3

    new-array v4, v4, [Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iput-object v4, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->B:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    array-length v4, v3

    new-array v4, v4, [Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iput-object v4, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->C:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    array-length v4, v3

    new-array v4, v4, [Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iput-object v4, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->D:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    array-length v4, v3

    new-array v4, v4, [Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iput-object v4, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->E:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    array-length v3, v3

    new-array v3, v3, [Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->F:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v3, Lcom/prineside/tdi2/ui/components/MinerMenu$_SideMenuListener;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/prineside/tdi2/ui/components/MinerMenu$_SideMenuListener;-><init>(Lcom/prineside/tdi2/ui/components/MinerMenu;Lcom/prineside/tdi2/ui/components/MinerMenu$1;)V

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->J:Lcom/prineside/tdi2/ui/components/MinerMenu$_SideMenuListener;

    new-instance v5, Lcom/prineside/tdi2/ui/components/MinerMenu$_MapSystemListener;

    invoke-direct {v5, v0, v4}, Lcom/prineside/tdi2/ui/components/MinerMenu$_MapSystemListener;-><init>(Lcom/prineside/tdi2/ui/components/MinerMenu;Lcom/prineside/tdi2/ui/components/MinerMenu$1;)V

    iput-object v5, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->K:Lcom/prineside/tdi2/ui/components/MinerMenu$_MapSystemListener;

    new-instance v6, Lcom/prineside/tdi2/ui/components/MinerMenu$_Game_StateSystemListener;

    invoke-direct {v6, v0, v4}, Lcom/prineside/tdi2/ui/components/MinerMenu$_Game_StateSystemListener;-><init>(Lcom/prineside/tdi2/ui/components/MinerMenu;Lcom/prineside/tdi2/ui/components/MinerMenu$1;)V

    iput-object v6, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->L:Lcom/prineside/tdi2/ui/components/MinerMenu$_Game_StateSystemListener;

    new-instance v7, Lcom/prineside/tdi2/ui/components/MinerMenu$_MinerSystemListener;

    invoke-direct {v7, v0, v4}, Lcom/prineside/tdi2/ui/components/MinerMenu$_MinerSystemListener;-><init>(Lcom/prineside/tdi2/ui/components/MinerMenu;Lcom/prineside/tdi2/ui/components/MinerMenu$1;)V

    iput-object v7, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->M:Lcom/prineside/tdi2/ui/components/MinerMenu$_MinerSystemListener;

    new-instance v8, Lcom/prineside/tdi2/ui/components/MinerMenu$_LootSystemListener;

    invoke-direct {v8, v0, v4}, Lcom/prineside/tdi2/ui/components/MinerMenu$_LootSystemListener;-><init>(Lcom/prineside/tdi2/ui/components/MinerMenu;Lcom/prineside/tdi2/ui/components/MinerMenu$1;)V

    iput-object v8, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->N:Lcom/prineside/tdi2/ui/components/MinerMenu$_LootSystemListener;

    iput-object v2, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->I:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/ui/actors/SideMenu;->addListener(Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuListener;)V

    iget-object v3, v2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v3, v3, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v3, v5}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object v3, v2, Lcom/prineside/tdi2/GameSystemProvider;->miner:Lcom/prineside/tdi2/systems/MinerSystem;

    iget-object v3, v3, Lcom/prineside/tdi2/systems/MinerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v3, v7}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object v3, v2, Lcom/prineside/tdi2/GameSystemProvider;->loot:Lcom/prineside/tdi2/systems/LootSystem;

    iget-object v3, v3, Lcom/prineside/tdi2/systems/LootSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v3, v8}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object v3, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v3, v3, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v3, v6}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iput-object v1, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->a:Lcom/prineside/tdi2/ui/actors/SideMenu;

    invoke-virtual/range {p1 .. p1}, Lcom/prineside/tdi2/ui/actors/SideMenu;->createContainer()Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    move-result-object v1

    iput-object v1, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->b:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    const-string v3, "miner_menu_container"

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v3

    add-int/lit16 v3, v3, -0x438

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v7, 0x24

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v6

    sget-object v7, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v5, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    const-string v6, "VCTR"

    invoke-direct {v4, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v4, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v5, 0x44020000    # 520.0f

    const/high16 v6, 0x41d00000    # 26.0f

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    int-to-float v3, v3

    const v5, 0x44788000    # 994.0f

    add-float/2addr v5, v3

    const/high16 v6, 0x42200000    # 40.0f

    invoke-virtual {v4, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/prineside/tdi2/ui/actors/ExpLine;

    invoke-direct {v4}, Lcom/prineside/tdi2/ui/actors/ExpLine;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->q:Lcom/prineside/tdi2/ui/actors/ExpLine;

    const v5, 0x446e8000    # 954.0f

    add-float/2addr v5, v3

    invoke-virtual {v4, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v9, "ui-exp-line-cap"

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v8, 0x42900000    # 72.0f

    const/high16 v9, 0x42400000    # 48.0f

    invoke-virtual {v4, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v8, 0x43c58000    # 395.0f

    invoke-virtual {v4, v8, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    new-instance v8, Lcom/badlogic/gdx/graphics/Color;

    const v10, 0x252525ff

    invoke-direct {v8, v10}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v10, "icon-tools"

    invoke-virtual {v8, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v4, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v8, 0x42000000    # 32.0f

    invoke-virtual {v4, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v10, 0x44708000    # 962.0f

    add-float/2addr v10, v3

    const v11, 0x43cf8000    # 415.0f

    invoke-virtual {v4, v11, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v13, "resource-vector"

    invoke-virtual {v12, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v12

    invoke-direct {v4, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v4, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v4, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v4, v11, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v10, v10, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v11, "miner_menu_status_installing"

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v13, 0x15

    invoke-virtual {v12, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v12

    invoke-direct {v11, v12, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v4, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v4, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3e8f5c29    # 0.28f

    invoke-virtual {v4, v10, v10, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const/high16 v12, 0x431f0000    # 159.0f

    const/high16 v14, 0x41800000    # 16.0f

    invoke-virtual {v4, v12, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v15, 0x44764000    # 985.0f

    add-float/2addr v15, v3

    const/high16 v8, 0x43690000    # 233.0f

    invoke-virtual {v4, v8, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/16 v6, 0x10

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v9, v9, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v6, "miner_menu_status_mining"

    invoke-virtual {v9, v6}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v8, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v8

    invoke-direct {v9, v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v4, v6, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v4, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->v:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v4, v10, v10, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v4, v12, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v6, 0x43690000    # 233.0f

    invoke-virtual {v4, v6, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/16 v6, 0x10

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v8, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v8

    invoke-direct {v6, v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    const-string v8, ""

    invoke-direct {v4, v8, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v4, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->x:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v6, v6, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const/high16 v9, 0x41c00000    # 24.0f

    invoke-virtual {v4, v12, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v11, 0x40000000    # 2.0f

    sub-float v11, v5, v11

    const/high16 v14, 0x42480000    # 50.0f

    invoke-virtual {v4, v14, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/16 v11, 0x8

    invoke-virtual {v4, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v14, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v14

    invoke-direct {v11, v14, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v4, v8, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v4, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v4, v12, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v9, 0x42400000    # 48.0f

    invoke-virtual {v4, v9, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/16 v9, 0x8

    invoke-virtual {v4, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v12, 0x18

    invoke-virtual {v11, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v11

    invoke-direct {v9, v11, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    const-string v11, "99%"

    invoke-direct {v4, v11, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v4, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    const/high16 v11, 0x428e0000    # 71.0f

    const/high16 v12, 0x42400000    # 48.0f

    invoke-virtual {v4, v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v11, 0x43f48000    # 489.0f

    invoke-virtual {v4, v11, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/prineside/tdi2/ui/components/TileResources;

    const/high16 v5, 0x44160000    # 600.0f

    invoke-direct {v4, v5}, Lcom/prineside/tdi2/ui/components/TileResources;-><init>(F)V

    iput-object v4, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->r:Lcom/prineside/tdi2/ui/components/TileResources;

    const/high16 v11, 0x44540000    # 848.0f

    add-float/2addr v11, v3

    invoke-virtual {v4, v6, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v11, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v11

    new-instance v12, Lcom/badlogic/gdx/graphics/Color;

    const v14, 0x3f0f5c29    # 0.56f

    invoke-direct {v12, v10, v10, v10, v14}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-direct {v4, v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v12, v12, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v14, "resource_item"

    invoke-virtual {v12, v14}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const v12, 0x443ec000    # 763.0f

    add-float/2addr v12, v3

    const/high16 v14, 0x42200000    # 40.0f

    invoke-virtual {v11, v14, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v15, 0x42c80000    # 100.0f

    invoke-virtual {v11, v15, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v11}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v14, v14, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v10, "speed"

    invoke-virtual {v14, v10}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v10, 0x43a10000    # 322.0f

    invoke-virtual {v11, v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v14, 0x42c00000    # 96.0f

    const/high16 v15, 0x42200000    # 40.0f

    invoke-virtual {v11, v14, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v11, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v1, v11}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v15, v15, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v9, "mined"

    invoke-virtual {v15, v9}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v11, v9, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v4, 0x43db0000    # 438.0f

    invoke-virtual {v11, v4, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v4, 0x42f40000    # 122.0f

    const/high16 v9, 0x42200000    # 40.0f

    invoke-virtual {v11, v4, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/16 v4, 0x10

    invoke-virtual {v11, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v1, v11}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/graphics/Color;

    const v4, 0x303030ff

    invoke-direct {v1, v4}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v9, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v9

    invoke-direct {v4, v9, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v12, 0x18

    invoke-virtual {v11, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v11

    invoke-direct {v9, v11, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    const/4 v7, 0x0

    :goto_0
    sget-object v11, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v12, v11

    if-ge v7, v12, :cond_0

    new-instance v12, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v12}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iget-object v15, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->z:[Lcom/badlogic/gdx/scenes/scene2d/Group;

    aput-object v12, v15, v7

    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    sget-object v15, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v12, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    const/high16 v15, 0x42500000    # 52.0f

    invoke-virtual {v12, v5, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v16, 0x4431c000    # 711.0f

    int-to-float v5, v7

    const/high16 v17, 0x42600000    # 56.0f

    mul-float v5, v5, v17

    sub-float v16, v16, v5

    add-float v5, v16, v3

    invoke-virtual {v12, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->b:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    invoke-virtual {v5, v12}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "blank"

    invoke-virtual {v13, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v13

    invoke-direct {v5, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v13, 0x439f0000    # 318.0f

    invoke-virtual {v5, v13, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v12, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v13, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v13

    invoke-direct {v5, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v5, v14, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setX(F)V

    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v12, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v13, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v6, 0x43320000    # 178.0f

    invoke-virtual {v5, v6, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v6, 0x43d30000    # 422.0f

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setX(F)V

    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v12, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    sget-object v13, Lcom/prineside/tdi2/Resource;->TEXTURE_REGION_NAMES:[Ljava/lang/String;

    aget-object v13, v13, v7

    invoke-virtual {v6, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->A:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aput-object v5, v6, v7

    const/high16 v6, 0x42000000    # 32.0f

    invoke-virtual {v5, v6, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v13, 0x41200000    # 10.0f

    const/high16 v6, 0x42200000    # 40.0f

    invoke-virtual {v5, v6, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v12, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->resourceManager:Lcom/prineside/tdi2/managers/ResourceManager;

    aget-object v11, v11, v7

    invoke-virtual {v6, v11}, Lcom/prineside/tdi2/managers/ResourceManager;->getName(Lcom/prineside/tdi2/enums/ResourceType;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->B:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aput-object v5, v6, v7

    const/high16 v6, 0x42c80000    # 100.0f

    invoke-virtual {v5, v6, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v6, 0x42ac0000    # 86.0f

    const/4 v11, 0x0

    invoke-virtual {v5, v6, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v12, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->C:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string v13, "+0.00"

    invoke-direct {v6, v13, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    aput-object v6, v5, v7

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->C:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v5, v5, v7

    const/high16 v6, 0x434c0000    # 204.0f

    invoke-virtual {v5, v6, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->C:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v5, v5, v7

    const/high16 v6, 0x42c80000    # 100.0f

    invoke-virtual {v5, v6, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->C:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v5, v5, v7

    const/16 v11, 0x10

    invoke-virtual {v5, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->C:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v5, v5, v7

    invoke-virtual {v12, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->D:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string v13, "1.23"

    invoke-direct {v11, v13, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    aput-object v11, v5, v7

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->D:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v5, v5, v7

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->D:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v5, v5, v7

    invoke-virtual {v5, v14, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->D:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v5, v5, v7

    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->D:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v5, v5, v7

    invoke-virtual {v12, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->E:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string v13, "123"

    invoke-direct {v11, v13, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    aput-object v11, v5, v7

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->E:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v5, v5, v7

    const/high16 v11, 0x43db0000    # 438.0f

    const/4 v13, 0x0

    invoke-virtual {v5, v11, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->E:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v5, v5, v7

    const/high16 v11, 0x42f40000    # 122.0f

    invoke-virtual {v5, v11, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->E:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v5, v5, v7

    const/16 v11, 0x10

    invoke-virtual {v5, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->E:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v5, v5, v7

    invoke-virtual {v12, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->F:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v13, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v10, 0x15

    invoke-virtual {v6, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    invoke-direct {v13, v8, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    aput-object v13, v5, v7

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->F:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v5, v5, v7

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->F:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v5, v5, v7

    const v6, 0x43d98000    # 435.0f

    const/4 v10, 0x0

    invoke-virtual {v5, v6, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->F:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v5, v5, v7

    const/high16 v6, 0x428c0000    # 70.0f

    invoke-virtual {v5, v6, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->F:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v5, v5, v7

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->F:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v5, v5, v7

    invoke-virtual {v12, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v7, v7, 0x1

    const/high16 v5, 0x44160000    # 600.0f

    const/4 v6, 0x0

    const/high16 v10, 0x43a10000    # 322.0f

    const/16 v13, 0x15

    goto/16 :goto_0

    :cond_0
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v3, v3, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v4, "mined_items"

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v5, 0x15

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const v3, 0x3f0f5c29    # 0.56f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v4, v4, v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    const/high16 v3, 0x41900000    # 18.0f

    const/high16 v4, 0x44160000    # 600.0f

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v3, 0x43de0000    # 444.0f

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->b:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->y:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const/high16 v3, 0x430c0000    # 140.0f

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->y:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const/high16 v3, 0x43940000    # 296.0f

    invoke-virtual {v1, v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->b:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->y:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;

    invoke-direct {v1}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;-><init>()V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->G:Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;

    new-instance v3, Lcom/prineside/tdi2/ui/components/MinerMenu$1;

    invoke-direct {v3, v0, v2}, Lcom/prineside/tdi2/ui/components/MinerMenu$1;-><init>(Lcom/prineside/tdi2/ui/components/MinerMenu;Lcom/prineside/tdi2/GameSystemProvider;)V

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->addListener(Lcom/prineside/tdi2/ui/components/UpgradeSubmenu$UpgradeSubmenuListener;)V

    const/high16 v3, 0x43040000    # 132.0f

    invoke-virtual {v1, v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->b:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/prineside/tdi2/ui/components/SellButton;

    new-instance v3, Lcom/prineside/tdi2/ui/components/MinerMenu$2;

    invoke-direct {v3, v0, v2}, Lcom/prineside/tdi2/ui/components/MinerMenu$2;-><init>(Lcom/prineside/tdi2/ui/components/MinerMenu;Lcom/prineside/tdi2/GameSystemProvider;)V

    invoke-direct {v1, v3}, Lcom/prineside/tdi2/ui/components/SellButton;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->H:Lcom/prineside/tdi2/ui/components/SellButton;

    const/high16 v2, 0x43b80000    # 368.0f

    const/high16 v3, 0x42200000    # 40.0f

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->b:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/ui/components/MinerMenu;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/components/MinerMenu;->i(Z)V

    return-void
.end method

.method public static synthetic b(Lcom/prineside/tdi2/ui/components/MinerMenu;)Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->G:Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;

    return-object p0
.end method

.method public static synthetic c(Lcom/prineside/tdi2/ui/components/MinerMenu;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/MinerMenu;->j()V

    return-void
.end method

.method public static synthetic d(Lcom/prineside/tdi2/ui/components/MinerMenu;)Lcom/prineside/tdi2/Miner;
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/MinerMenu;->h()Lcom/prineside/tdi2/Miner;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/prineside/tdi2/ui/components/MinerMenu;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/MinerMenu;->k()V

    return-void
.end method

.method public static synthetic f(Lcom/prineside/tdi2/ui/components/MinerMenu;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->d:Z

    return p0
.end method

.method public static synthetic g(Lcom/prineside/tdi2/ui/components/MinerMenu;)Lcom/prineside/tdi2/GameSystemProvider;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->I:Lcom/prineside/tdi2/GameSystemProvider;

    return-object p0
.end method


# virtual methods
.method public dispose()V
    .locals 0

    return-void
.end method

.method public draw(F)V
    .locals 8

    iget-boolean p1, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->d:Z

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/MinerMenu;->h()Lcom/prineside/tdi2/Miner;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/prineside/tdi2/Miner;->isPrepared()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/prineside/tdi2/Miner;->nextMinedResourceType:Lcom/prineside/tdi2/enums/ResourceType;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/prineside/tdi2/Miner;->getVisualMiningProgress()F

    move-result v1

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->q:Lcom/prineside/tdi2/ui/actors/ExpLine;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->resourceManager:Lcom/prineside/tdi2/managers/ResourceManager;

    iget-object v6, p1, Lcom/prineside/tdi2/Miner;->nextMinedResourceType:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/ResourceManager;->getColor(Lcom/prineside/tdi2/enums/ResourceType;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/ui/actors/ExpLine;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->resourceManager:Lcom/prineside/tdi2/managers/ResourceManager;

    iget-object v6, p1, Lcom/prineside/tdi2/Miner;->nextMinedResourceType:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/ResourceManager;->getColor(Lcom/prineside/tdi2/enums/ResourceType;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    sget-object v6, Lcom/prineside/tdi2/Resource;->TEXTURE_REGION_NAMES:[Ljava/lang/String;

    iget-object v7, p1, Lcom/prineside/tdi2/Miner;->nextMinedResourceType:Lcom/prineside/tdi2/enums/ResourceType;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->v:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    sget-object v4, Lcom/prineside/tdi2/ui/components/MinerMenu;->O:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float v5, v5, v1

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v5, 0x25

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v5, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/prineside/tdi2/Miner;->getPreparationProgress()F

    move-result v1

    cmpg-float v4, v1, v0

    if-ltz v4, :cond_3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v1, v4

    if-gtz v4, :cond_3

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->q:Lcom/prineside/tdi2/ui/actors/ExpLine;

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/ui/actors/ExpLine;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->v:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p1}, Lcom/prineside/tdi2/Miner;->getInstallTimeLeft()F

    move-result v5

    float-to-int v5, v5

    invoke-static {v5}, Lcom/prineside/tdi2/utils/StringFormatter;->digestTime(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->q:Lcom/prineside/tdi2/ui/actors/ExpLine;

    invoke-virtual {v4, v1}, Lcom/prineside/tdi2/ui/actors/ExpLine;->setCoeff(F)V

    iget v1, p1, Lcom/prineside/tdi2/Miner;->doubleSpeedTimeLeft:F

    cmpl-float v0, v1, v0

    if-lez v0, :cond_2

    sget-object v0, Lcom/prineside/tdi2/ui/components/MinerMenu;->O:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    const-string v1, "x2: "

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    iget p1, p1, Lcom/prineside/tdi2/Miner;->doubleSpeedTimeLeft:F

    invoke-static {p1}, Ljava/lang/StrictMath;->round(F)I

    move-result p1

    invoke-static {p1}, Lcom/prineside/tdi2/utils/StringFormatter;->digestTime(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->x:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->x:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->x:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preparation progress "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->q:Lcom/prineside/tdi2/ui/actors/ExpLine;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ui/actors/ExpLine;->setCoeff(F)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final h()Lcom/prineside/tdi2/Miner;
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->I:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getSelectedTile()Lcom/prineside/tdi2/Tile;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v2, Lcom/prineside/tdi2/enums/TileType;->SOURCE:Lcom/prineside/tdi2/enums/TileType;

    if-ne v1, v2, :cond_0

    check-cast v0, Lcom/prineside/tdi2/tiles/SourceTile;

    iget-object v0, v0, Lcom/prineside/tdi2/tiles/SourceTile;->miner:Lcom/prineside/tdi2/Miner;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final i(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->d:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->d:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->b:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;->show()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/MinerMenu;->j()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->b:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;->hide()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final j()V
    .locals 12

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->I:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getSelectedTile()Lcom/prineside/tdi2/Tile;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v1, v0, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v2, Lcom/prineside/tdi2/enums/TileType;->SOURCE:Lcom/prineside/tdi2/enums/TileType;

    if-ne v1, v2, :cond_f

    move-object v1, v0

    check-cast v1, Lcom/prineside/tdi2/tiles/SourceTile;

    iget-object v2, v1, Lcom/prineside/tdi2/tiles/SourceTile;->miner:Lcom/prineside/tdi2/Miner;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->b:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    invoke-virtual {v2, v0}, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;->setLabelOverTitleTilePos(Lcom/prineside/tdi2/Tile;)V

    iget-object v0, v1, Lcom/prineside/tdi2/tiles/SourceTile;->miner:Lcom/prineside/tdi2/Miner;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->minerManager:Lcom/prineside/tdi2/managers/MinerManager;

    iget-object v3, v0, Lcom/prineside/tdi2/Miner;->type:Lcom/prineside/tdi2/enums/MinerType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/MinerManager;->getFactory(Lcom/prineside/tdi2/enums/MinerType;)Lcom/prineside/tdi2/Miner$Factory;

    move-result-object v2

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2}, Lcom/prineside/tdi2/Miner$Factory;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->r:Lcom/prineside/tdi2/ui/components/TileResources;

    invoke-virtual {v3, v1}, Lcom/prineside/tdi2/ui/components/TileResources;->setTile(Lcom/prineside/tdi2/tiles/SourceTile;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    sget-object v5, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v6, v5

    const/high16 v7, 0x42700000    # 60.0f

    const/4 v8, 0x1

    if-ge v4, v6, :cond_6

    aget-object v5, v5, v4

    invoke-virtual {v2, v5}, Lcom/prineside/tdi2/Miner$Factory;->canMineResource(Lcom/prineside/tdi2/enums/ResourceType;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->z:[Lcom/badlogic/gdx/scenes/scene2d/Group;

    aget-object v6, v6, v4

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v6, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->D:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v6, v6, v4

    iget-object v9, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->I:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v9, v9, Lcom/prineside/tdi2/GameSystemProvider;->miner:Lcom/prineside/tdi2/systems/MinerSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Miner;->getUpgradeLevel()I

    move-result v10

    invoke-virtual {v9, v0, v5, v10}, Lcom/prineside/tdi2/systems/MinerSystem;->getMiningSpeed(Lcom/prineside/tdi2/Miner;Lcom/prineside/tdi2/enums/ResourceType;I)F

    move-result v9

    mul-float v9, v9, v7

    float-to-double v9, v9

    invoke-static {v9, v10, v8}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/Miner;->getTile()Lcom/prineside/tdi2/tiles/SourceTile;

    move-result-object v6

    iget-object v6, v6, Lcom/prineside/tdi2/tiles/SourceTile;->minedResources:[I

    aget v6, v6, v4

    iget-object v7, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->I:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v7, v7, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v7, v7, Lcom/prineside/tdi2/systems/GameStateSystem;->gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    sget-object v9, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->USER_MAPS:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    if-ne v7, v9, :cond_1

    invoke-virtual {v0}, Lcom/prineside/tdi2/Miner;->getTile()Lcom/prineside/tdi2/tiles/SourceTile;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/prineside/tdi2/tiles/SourceTile;->getResourcesCount(Lcom/prineside/tdi2/enums/ResourceType;)I

    move-result v7

    sub-int v7, v6, v7

    if-gez v7, :cond_0

    goto :goto_1

    :cond_0
    sub-int/2addr v6, v7

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v7, 0x0

    :goto_2
    if-lez v7, :cond_2

    iget-object v9, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->F:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v9, v9, v4

    int-to-double v10, v7

    invoke-static {v10, v11, v3}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v7

    const-string v10, " +"

    invoke-virtual {v7, v10}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v7

    invoke-virtual {v9, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->F:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v7, v7, v4

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_3

    :cond_2
    iget-object v7, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->F:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v7, v7, v4

    invoke-virtual {v7, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :goto_3
    iget-object v7, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->E:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v7, v7, v4

    int-to-double v8, v6

    invoke-static {v8, v9, v3}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v5}, Lcom/prineside/tdi2/tiles/SourceTile;->getResourcesCount(Lcom/prineside/tdi2/enums/ResourceType;)I

    move-result v6

    if-gtz v6, :cond_4

    invoke-virtual {v0}, Lcom/prineside/tdi2/Miner;->getTile()Lcom/prineside/tdi2/tiles/SourceTile;

    move-result-object v6

    iget-object v6, v6, Lcom/prineside/tdi2/tiles/SourceTile;->minedResources:[I

    aget v6, v6, v4

    if-lez v6, :cond_3

    goto :goto_4

    :cond_3
    iget-object v5, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->D:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v5, v5, v4

    const v6, 0x3e0f5c29    # 0.14f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v5, v6, v6, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v5, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->E:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v5, v5, v4

    invoke-virtual {v5, v6, v6, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v5, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->A:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aget-object v5, v5, v4

    invoke-virtual {v5, v6, v6, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v5, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->B:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v5, v5, v4

    invoke-virtual {v5, v6, v6, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    goto :goto_5

    :cond_4
    :goto_4
    iget-object v6, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->D:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v6, v6, v4

    sget-object v7, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v6, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->E:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v6, v6, v4

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v6, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->A:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aget-object v6, v6, v4

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->resourceManager:Lcom/prineside/tdi2/managers/ResourceManager;

    invoke-virtual {v7, v5}, Lcom/prineside/tdi2/managers/ResourceManager;->getColor(Lcom/prineside/tdi2/enums/ResourceType;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v6, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->B:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v6, v6, v4

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->resourceManager:Lcom/prineside/tdi2/managers/ResourceManager;

    invoke-virtual {v7, v5}, Lcom/prineside/tdi2/managers/ResourceManager;->getColor(Lcom/prineside/tdi2/enums/ResourceType;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_5

    :cond_5
    iget-object v5, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->z:[Lcom/badlogic/gdx/scenes/scene2d/Group;

    aget-object v5, v5, v4

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->G:Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->isButtonSelected()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    :goto_6
    sget-object v4, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v5, v4

    if-ge v1, v5, :cond_b

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/Miner$Factory;->canMineResource(Lcom/prineside/tdi2/enums/ResourceType;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v0}, Lcom/prineside/tdi2/Miner;->getUpgradeLevel()I

    move-result v5

    iget-object v6, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->I:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v6, v6, Lcom/prineside/tdi2/GameSystemProvider;->miner:Lcom/prineside/tdi2/systems/MinerSystem;

    iget-object v9, v0, Lcom/prineside/tdi2/Miner;->type:Lcom/prineside/tdi2/enums/MinerType;

    invoke-virtual {v6, v9}, Lcom/prineside/tdi2/systems/MinerSystem;->getMaxUpgradeLevel(Lcom/prineside/tdi2/enums/MinerType;)I

    move-result v6

    if-ge v5, v6, :cond_9

    iget-object v5, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->I:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->miner:Lcom/prineside/tdi2/systems/MinerSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Miner;->getUpgradeLevel()I

    move-result v6

    invoke-virtual {v5, v0, v4, v6}, Lcom/prineside/tdi2/systems/MinerSystem;->getMiningSpeed(Lcom/prineside/tdi2/Miner;Lcom/prineside/tdi2/enums/ResourceType;I)F

    move-result v5

    iget-object v6, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->I:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v6, v6, Lcom/prineside/tdi2/GameSystemProvider;->miner:Lcom/prineside/tdi2/systems/MinerSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Miner;->getUpgradeLevel()I

    move-result v9

    add-int/2addr v9, v8

    invoke-virtual {v6, v0, v4, v9}, Lcom/prineside/tdi2/systems/MinerSystem;->getMiningSpeed(Lcom/prineside/tdi2/Miner;Lcom/prineside/tdi2/enums/ResourceType;I)F

    move-result v4

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_7

    sget-object v5, Lcom/prineside/tdi2/ui/components/MinerMenu;->O:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    const/16 v6, 0x2b

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    mul-float v4, v4, v7

    float-to-double v9, v4

    invoke-static {v9, v10, v8}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->C:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v4, v4, v1

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->C:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v4, v4, v1

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_7

    :cond_7
    iget-object v5, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->C:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v5, v5, v1

    mul-float v4, v4, v7

    float-to-double v9, v4

    invoke-static {v9, v10, v8}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->C:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v4, v4, v1

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_7
    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->C:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v4, v4, v1

    invoke-virtual {v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_8

    :cond_8
    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->C:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v4, v4, v1

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :cond_9
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6

    :cond_a
    const/4 v1, 0x0

    :goto_9
    sget-object v2, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v2, v2

    if-ge v1, v2, :cond_b

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->C:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v2, v2, v1

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_b
    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->y:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->I:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->loot:Lcom/prineside/tdi2/systems/LootSystem;

    iget-object v2, v0, Lcom/prineside/tdi2/Miner;->type:Lcom/prineside/tdi2/enums/MinerType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/systems/LootSystem;->getLootSlots(Lcom/prineside/tdi2/enums/MinerType;)I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_d

    new-instance v4, Lcom/prineside/tdi2/ui/actors/ItemCell;

    invoke-direct {v4}, Lcom/prineside/tdi2/ui/actors/ItemCell;-><init>()V

    invoke-virtual {v4, v2, v3}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setColRow(II)V

    invoke-virtual {v4}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setCompact()V

    iget-object v5, v0, Lcom/prineside/tdi2/Miner;->minedItems:Lcom/badlogic/gdx/utils/Array;

    iget v6, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    if-le v6, v2, :cond_c

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/ui/actors/ItemCell;->setItem(Lcom/prineside/tdi2/ItemStack;)V

    :cond_c
    iget-object v5, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->y:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_d
    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->G:Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Miner;->getUpgradeLevel()I

    move-result v2

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->I:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->miner:Lcom/prineside/tdi2/systems/MinerSystem;

    iget-object v4, v0, Lcom/prineside/tdi2/Miner;->type:Lcom/prineside/tdi2/enums/MinerType;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/systems/MinerSystem;->getMaxUpgradeLevel(Lcom/prineside/tdi2/enums/MinerType;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->B(II)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/Miner;->getUpgradeLevel()I

    move-result v1

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->I:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->miner:Lcom/prineside/tdi2/systems/MinerSystem;

    iget-object v3, v0, Lcom/prineside/tdi2/Miner;->type:Lcom/prineside/tdi2/enums/MinerType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/MinerSystem;->getMaxUpgradeLevel(Lcom/prineside/tdi2/enums/MinerType;)I

    move-result v2

    if-ge v1, v2, :cond_e

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->G:Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->I:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->miner:Lcom/prineside/tdi2/systems/MinerSystem;

    invoke-virtual {v2, v0}, Lcom/prineside/tdi2/systems/MinerSystem;->getUpgradePrice(Lcom/prineside/tdi2/Miner;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->C(I)V

    goto :goto_b

    :cond_e
    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->G:Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->C(I)V

    :goto_b
    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/MinerMenu;->k()V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->H:Lcom/prineside/tdi2/ui/components/SellButton;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Miner;->getSellPrice()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/ui/components/SellButton;->setPrice(I)V

    :cond_f
    return-void
.end method

.method public final k()V
    .locals 4

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/MinerMenu;->h()Lcom/prineside/tdi2/Miner;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->G:Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->I:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/GameStateSystem;->getMoney()I

    move-result v2

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->I:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->miner:Lcom/prineside/tdi2/systems/MinerSystem;

    invoke-virtual {v3, v0}, Lcom/prineside/tdi2/systems/MinerSystem;->getUpgradePrice(Lcom/prineside/tdi2/Miner;)I

    move-result v3

    if-lt v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Miner;->getUpgradeLevel()I

    move-result v2

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/MinerMenu;->I:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->miner:Lcom/prineside/tdi2/systems/MinerSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/Miner;->type:Lcom/prineside/tdi2/enums/MinerType;

    invoke-virtual {v3, v0}, Lcom/prineside/tdi2/systems/MinerSystem;->getMaxUpgradeLevel(Lcom/prineside/tdi2/enums/MinerType;)I

    move-result v0

    if-ge v2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->A(Z)V

    :cond_1
    return-void
.end method
