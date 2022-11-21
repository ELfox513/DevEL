.class public Lcom/prineside/tdi2/ui/components/SpawnMenu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/ui/components/SpawnMenu$_SideMenuListener;,
        Lcom/prineside/tdi2/ui/components/SpawnMenu$_MapSystemListener;,
        Lcom/prineside/tdi2/ui/components/SpawnMenu$_WaveSystemListener;
    }
.end annotation


# static fields
.field public static final A:Lcom/badlogic/gdx/utils/StringBuilder;

.field public static final y:Lcom/badlogic/gdx/graphics/Color;

.field public static final z:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field public final a:Lcom/prineside/tdi2/ui/actors/SideMenu;

.field public final b:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

.field public d:Z

.field public k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public p:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public q:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public r:Lcom/prineside/tdi2/ui/actors/ComplexButton;

.field public s:F

.field public t:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Lcom/prineside/tdi2/EnemyGroup;",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Label;",
            ">;"
        }
    .end annotation
.end field

.field public final u:Lcom/prineside/tdi2/GameSystemProvider;

.field public final v:Lcom/prineside/tdi2/ui/components/SpawnMenu$_SideMenuListener;

.field public final w:Lcom/prineside/tdi2/ui/components/SpawnMenu$_MapSystemListener;

.field public final x:Lcom/prineside/tdi2/ui/components/SpawnMenu$_WaveSystemListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x303030ff

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    sput-object v0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->y:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x252525ff

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    sput-object v0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->z:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->A:Lcom/badlogic/gdx/utils/StringBuilder;

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/ui/actors/SideMenu;Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->t:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v3, Lcom/prineside/tdi2/ui/components/SpawnMenu$_SideMenuListener;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/prineside/tdi2/ui/components/SpawnMenu$_SideMenuListener;-><init>(Lcom/prineside/tdi2/ui/components/SpawnMenu;Lcom/prineside/tdi2/ui/components/SpawnMenu$1;)V

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->v:Lcom/prineside/tdi2/ui/components/SpawnMenu$_SideMenuListener;

    new-instance v5, Lcom/prineside/tdi2/ui/components/SpawnMenu$_MapSystemListener;

    invoke-direct {v5, v0, v4}, Lcom/prineside/tdi2/ui/components/SpawnMenu$_MapSystemListener;-><init>(Lcom/prineside/tdi2/ui/components/SpawnMenu;Lcom/prineside/tdi2/ui/components/SpawnMenu$1;)V

    iput-object v5, v0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->w:Lcom/prineside/tdi2/ui/components/SpawnMenu$_MapSystemListener;

    new-instance v6, Lcom/prineside/tdi2/ui/components/SpawnMenu$_WaveSystemListener;

    invoke-direct {v6, v0, v4}, Lcom/prineside/tdi2/ui/components/SpawnMenu$_WaveSystemListener;-><init>(Lcom/prineside/tdi2/ui/components/SpawnMenu;Lcom/prineside/tdi2/ui/components/SpawnMenu$1;)V

    iput-object v6, v0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->x:Lcom/prineside/tdi2/ui/components/SpawnMenu$_WaveSystemListener;

    iput-object v2, v0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->u:Lcom/prineside/tdi2/GameSystemProvider;

    iput-object v1, v0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->a:Lcom/prineside/tdi2/ui/actors/SideMenu;

    invoke-virtual/range {p1 .. p1}, Lcom/prineside/tdi2/ui/actors/SideMenu;->createContainer()Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    move-result-object v4

    iput-object v4, v0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->b:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v7}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v7

    add-int/lit16 v7, v7, -0x438

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v9, v9, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v10, "tile_name_SPAWN"

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v12, 0x24

    invoke-virtual {v11, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v11

    sget-object v13, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v10, v11, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v8, v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v9, 0x43e60000    # 460.0f

    const/high16 v10, 0x41d00000    # 26.0f

    invoke-virtual {v8, v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    int-to-float v7, v7

    const v11, 0x44788000    # 994.0f

    add-float/2addr v11, v7

    const/high16 v14, 0x42200000    # 40.0f

    invoke-virtual {v8, v14, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v14, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v12

    invoke-direct {v15, v12, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    const-string v12, "250%"

    invoke-direct {v8, v12, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v8, v0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v12, 0x42c80000    # 100.0f

    invoke-virtual {v8, v12, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/16 v10, 0x10

    invoke-virtual {v8, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v8, v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v10, v10, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v11, "tile_description_SPAWN"

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v15, 0x18

    invoke-virtual {v14, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v14

    invoke-direct {v11, v14, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v8, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v10, 0x43d20000    # 420.0f

    invoke-virtual {v8, v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v10, 0x445d0000    # 884.0f

    add-float/2addr v10, v7

    const/high16 v11, 0x42200000    # 40.0f

    invoke-virtual {v8, v11, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/16 v11, 0xa

    invoke-virtual {v8, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    invoke-virtual {v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v14, v14, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v11, "difficulty"

    invoke-virtual {v14, v11}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    new-instance v14, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v9, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v9

    invoke-direct {v14, v9, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v8, v11, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v8, v12, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v9, 0x43e60000    # 460.0f

    invoke-virtual {v8, v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/16 v9, 0x12

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3e8f5c29    # 0.28f

    invoke-virtual {v8, v9, v9, v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const-string v14, "spawn_menu_details"

    invoke-virtual {v8, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v14, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v15, v15, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v11, "enemies_that_can_be_spawned"

    invoke-virtual {v15, v11}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v9, 0x15

    invoke-virtual {v12, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v12

    invoke-direct {v15, v12, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v14, v11, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v14, v11, v11, v11, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const v11, 0x44628000    # 906.0f

    add-float/2addr v11, v7

    const/high16 v12, 0x42200000    # 40.0f

    invoke-virtual {v14, v12, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v11, 0x41880000    # 17.0f

    const/high16 v12, 0x42c80000    # 100.0f

    invoke-virtual {v14, v12, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v8, v14}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v12, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v12}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v12, v0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v12, v0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v14, 0x44520000    # 840.0f

    add-float/2addr v14, v7

    const/4 v15, 0x0

    invoke-virtual {v12, v15, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v12, v0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v14, 0x44160000    # 600.0f

    const/high16 v15, 0x42800000    # 64.0f

    invoke-virtual {v12, v14, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v12, v0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v8, v12}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v15, v15, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v14, "enemies_by_wave"

    invoke-virtual {v15, v14}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v11, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v11

    invoke-direct {v15, v11, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v12, v14, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v12, v11, v11, v11, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const/high16 v10, 0x444d0000    # 820.0f

    add-float/2addr v10, v7

    const/high16 v11, 0x42200000    # 40.0f

    invoke-virtual {v12, v11, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v10, 0x41880000    # 17.0f

    const/high16 v11, 0x42c80000    # 100.0f

    invoke-virtual {v12, v11, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v8, v12}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v11, v11, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v12, "density"

    invoke-virtual {v11, v12}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v14, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v9

    invoke-direct {v12, v9, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v10, v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const v9, 0x3f0f5c29    # 0.56f

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v10, v11, v11, v11, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const v11, 0x44418000    # 774.0f

    add-float/2addr v11, v7

    const/high16 v12, 0x43870000    # 270.0f

    invoke-virtual {v10, v12, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v12, 0x42dc0000    # 110.0f

    const/high16 v13, 0x42000000    # 32.0f

    invoke-virtual {v10, v12, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v8, v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v14, "icon-heart"

    invoke-virtual {v12, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v10, v12, v12, v12, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v10, v13, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v14, 0x43d18000    # 419.0f

    invoke-virtual {v10, v14, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v8, v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v15, "icon-count"

    invoke-virtual {v14, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v14

    invoke-direct {v10, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v10, v12, v12, v12, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v10, v13, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v9, 0x44040000    # 528.0f

    invoke-virtual {v10, v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v8, v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v9, v0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v9, v0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v9, v0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const v10, 0x443f8000    # 766.0f

    add-float/2addr v7, v10

    const/high16 v10, 0x44160000    # 600.0f

    invoke-virtual {v9, v10, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v9, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v7, v7, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v10, "waves"

    invoke-virtual {v7, v10}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v11, 0x1e

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v10

    new-instance v11, Lcom/prineside/tdi2/ui/components/SpawnMenu$1;

    invoke-direct {v11, v0, v2}, Lcom/prineside/tdi2/ui/components/SpawnMenu$1;-><init>(Lcom/prineside/tdi2/ui/components/SpawnMenu;Lcom/prineside/tdi2/GameSystemProvider;)V

    invoke-direct {v9, v7, v10, v11}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    iput-object v9, v0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->r:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v10, "blank"

    invoke-virtual {v7, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/high16 v13, 0x43940000    # 296.0f

    const/high16 v14, 0x42a00000    # 80.0f

    invoke-virtual/range {v9 .. v14}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->r:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v9, 0x43940000    # 296.0f

    const/high16 v10, 0x42a00000    # 80.0f

    invoke-virtual {v7, v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->r:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v10, "icon-wave"

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v17

    const/high16 v18, 0x41a00000    # 20.0f

    const/high16 v19, 0x41800000    # 16.0f

    const/high16 v20, 0x42200000    # 40.0f

    const/high16 v21, 0x42200000    # 40.0f

    move-object/from16 v16, v7

    invoke-virtual/range {v16 .. v21}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v9, v0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->r:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v10, 0x42980000    # 76.0f

    const/high16 v11, 0x41a00000    # 20.0f

    const/high16 v12, 0x42c80000    # 100.0f

    const/high16 v13, 0x42200000    # 40.0f

    const/16 v14, 0x8

    invoke-virtual/range {v9 .. v14}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setLabel(FFFFI)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->r:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v9, 0x43980000    # 304.0f

    const/high16 v10, 0x42200000    # 40.0f

    invoke-virtual {v7, v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->r:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/ui/actors/SideMenu;->addListener(Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuListener;)V

    iget-object v1, v2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1, v5}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object v1, v2, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/WaveSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1, v6}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    invoke-virtual {v4}, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;->hide()V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/ui/components/SpawnMenu;F)F
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->s:F

    return p1
.end method

.method public static synthetic b(Lcom/prineside/tdi2/ui/components/SpawnMenu;)Lcom/prineside/tdi2/GameSystemProvider;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->u:Lcom/prineside/tdi2/GameSystemProvider;

    return-object p0
.end method

.method public static synthetic c(Lcom/prineside/tdi2/ui/components/SpawnMenu;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->d:Z

    return p0
.end method

.method public static synthetic d(Lcom/prineside/tdi2/ui/components/SpawnMenu;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/SpawnMenu;->g()V

    return-void
.end method

.method public static synthetic e(Lcom/prineside/tdi2/ui/components/SpawnMenu;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/components/SpawnMenu;->f(Z)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    return-void
.end method

.method public final f(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->d:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->d:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->b:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;->show()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/SpawnMenu;->update()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->b:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;->hide()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final g()V
    .locals 7

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->u:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v0, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/WaveSystem;->wave:Lcom/prineside/tdi2/Wave;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getSelectedTile()Lcom/prineside/tdi2/Tile;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v2, Lcom/prineside/tdi2/enums/TileType;->SPAWN:Lcom/prineside/tdi2/enums/TileType;

    if-ne v1, v2, :cond_2

    check-cast v0, Lcom/prineside/tdi2/tiles/SpawnTile;

    iget-object v0, v0, Lcom/prineside/tdi2/tiles/SpawnTile;->enemySpawnQueues:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v2, 0x0

    :goto_0
    iget v3, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/EnemyGroup;

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->t:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    if-eqz v4, :cond_1

    iget v5, v3, Lcom/prineside/tdi2/EnemyGroup;->count:I

    invoke-virtual {v3}, Lcom/prineside/tdi2/EnemyGroup;->getSpawnedCount()I

    move-result v3

    sub-int/2addr v5, v3

    int-to-double v5, v5

    invoke-static {v5, v6, v1}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public update()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->u:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/MapSystem;->getSelectedTile()Lcom/prineside/tdi2/Tile;

    move-result-object v1

    if-eqz v1, :cond_14

    iget-object v2, v1, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v3, Lcom/prineside/tdi2/enums/TileType;->SPAWN:Lcom/prineside/tdi2/enums/TileType;

    if-ne v2, v3, :cond_14

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->b:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;->setLabelOverTitleTilePos(Lcom/prineside/tdi2/Tile;)V

    check-cast v1, Lcom/prineside/tdi2/tiles/SpawnTile;

    iget v2, v1, Lcom/prineside/tdi2/tiles/SpawnTile;->difficulty:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/StrictMath;->round(F)I

    move-result v2

    sget-object v3, Lcom/prineside/tdi2/ui/components/SpawnMenu;->A:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v5

    const/16 v6, 0x25

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x64

    if-ge v2, v3, :cond_0

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_0
    if-le v2, v3, :cond_1

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    const/high16 v2, 0x44020000    # 520.0f

    invoke-virtual {v1}, Lcom/prineside/tdi2/tiles/SpawnTile;->getAllowedEnemies()Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    int-to-float v5, v3

    const/high16 v6, 0x42800000    # 64.0f

    mul-float v5, v5, v6

    const/high16 v7, 0x42200000    # 40.0f

    const/4 v8, 0x1

    cmpg-float v9, v5, v2

    if-gtz v9, :cond_2

    sub-float/2addr v2, v5

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v2, v7

    goto :goto_1

    :cond_2
    const/high16 v2, 0x43e40000    # 456.0f

    sub-int/2addr v3, v8

    int-to-float v3, v3

    div-float v6, v2, v3

    const/high16 v2, 0x42200000    # 40.0f

    :goto_1
    invoke-virtual {v1}, Lcom/prineside/tdi2/tiles/SpawnTile;->getAllowedEnemies()Lcom/badlogic/gdx/utils/Array;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/high16 v9, 0x42000000    # 32.0f

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object v12, v5, Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;->enemyType:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v11, v12}, Lcom/prineside/tdi2/managers/EnemyManager;->getFactory(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/Enemy$Factory;

    move-result-object v11

    invoke-virtual {v11}, Lcom/prineside/tdi2/Enemy$Factory;->getTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {v10, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v9, 0x41800000    # 16.0f

    add-float v11, v2, v9

    invoke-virtual {v10, v11, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v9, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v10, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance v9, Lcom/prineside/tdi2/ui/components/SpawnMenu$2;

    invoke-direct {v9, v0, v5}, Lcom/prineside/tdi2/ui/components/SpawnMenu$2;-><init>(Lcom/prineside/tdi2/ui/components/SpawnMenu;Lcom/prineside/tdi2/tiles/SpawnTile$AllowedEnemyConfig;)V

    invoke-virtual {v10, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-float/2addr v2, v6

    goto :goto_2

    :cond_3
    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->t:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->u:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    iget-object v2, v2, Lcom/prineside/tdi2/systems/WaveSystem;->wave:Lcom/prineside/tdi2/Wave;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    iget v2, v2, Lcom/prineside/tdi2/Wave;->waveNumber:I

    :goto_3
    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v3

    const/4 v5, 0x0

    :goto_4
    const/16 v6, 0xa

    if-gt v5, v6, :cond_12

    const/high16 v6, 0x42c80000    # 100.0f

    cmpg-float v10, v3, v6

    if-gez v10, :cond_5

    goto/16 :goto_d

    :cond_5
    add-int v10, v5, v2

    if-ge v10, v8, :cond_6

    :goto_5
    move-object/from16 v18, v1

    goto/16 :goto_c

    :cond_6
    if-ne v10, v2, :cond_7

    const/4 v11, 0x1

    goto :goto_6

    :cond_7
    const/4 v11, 0x0

    :goto_6
    new-instance v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v14, "icon-wave"

    invoke-virtual {v13, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v13, 0x42280000    # 42.0f

    sub-float v14, v3, v13

    invoke-virtual {v12, v7, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v12, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v15, v0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v15, v12}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v12, Lcom/prineside/tdi2/ui/components/SpawnMenu;->A:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v12, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    invoke-virtual {v12, v10}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v13, 0x1e

    invoke-virtual {v4, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v4

    sget-object v13, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v15, v4, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v10, v12, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v10, v6, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v4, 0x42a00000    # 80.0f

    invoke-virtual {v10, v4, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v12, v0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v12, v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 v10, 0x0

    const/16 v12, 0x15

    if-nez v5, :cond_8

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v14, v14, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v15, "current"

    invoke-virtual {v14, v15}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v6, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v6

    invoke-direct {v15, v6, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v10, v14, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    goto :goto_7

    :cond_8
    if-ne v5, v8, :cond_9

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v14, "next"

    invoke-virtual {v6, v14}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v14, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v15, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v15

    invoke-direct {v14, v15, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v10, v6, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    :cond_9
    :goto_7
    if-eqz v10, :cond_a

    invoke-virtual {v10, v4, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v4, 0x42980000    # 76.0f

    sub-float v4, v3, v4

    invoke-virtual {v10, v7, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_a
    iget-object v4, v1, Lcom/prineside/tdi2/tiles/SpawnTile;->enemySpawnQueues:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/utils/Array;

    iget v6, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    const/high16 v10, 0x43200000    # 160.0f

    const/high16 v14, 0x43dc0000    # 440.0f

    const-string v15, "blank"

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x42500000    # 52.0f

    if-nez v6, :cond_c

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v6, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v4, v14, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sub-float v6, v3, v9

    invoke-virtual {v4, v10, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    if-eqz v11, :cond_b

    sget-object v10, Lcom/prineside/tdi2/ui/components/SpawnMenu;->y:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_8

    :cond_b
    sget-object v10, Lcom/prineside/tdi2/ui/components/SpawnMenu;->z:Lcom/badlogic/gdx/graphics/Color;

    :goto_8
    invoke-virtual {v4, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v10, v0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v10, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v10, v10, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v11, "no_enemies"

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v14, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v12

    invoke-direct {v11, v12, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v4, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v10, 0x42c80000    # 100.0f

    invoke-virtual {v4, v10, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v9, 0x43300000    # 176.0f

    invoke-virtual {v4, v9, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const v6, 0x3f0f5c29    # 0.56f

    invoke-virtual {v4, v8, v8, v8, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/high16 v4, 0x42d80000    # 108.0f

    sub-float/2addr v3, v4

    goto/16 :goto_5

    :cond_c
    const/4 v6, 0x0

    :goto_9
    iget v12, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v6, v12, :cond_11

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/prineside/tdi2/EnemyGroup;

    new-instance v13, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v8, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v8

    invoke-direct {v13, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v13, v14, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sub-float v8, v3, v9

    invoke-virtual {v13, v10, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    if-eqz v11, :cond_d

    sget-object v17, Lcom/prineside/tdi2/ui/components/SpawnMenu;->y:Lcom/badlogic/gdx/graphics/Color;

    goto :goto_a

    :cond_d
    sget-object v17, Lcom/prineside/tdi2/ui/components/SpawnMenu;->z:Lcom/badlogic/gdx/graphics/Color;

    :goto_a
    move-object/from16 v10, v17

    invoke-virtual {v13, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v10, v0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v10, v13}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object v14, v12, Lcom/prineside/tdi2/EnemyGroup;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v13, v14}, Lcom/prineside/tdi2/managers/EnemyManager;->getFactory(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/Enemy$Factory;

    move-result-object v13

    invoke-virtual {v13}, Lcom/prineside/tdi2/Enemy$Factory;->getTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v13

    invoke-direct {v10, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {v10, v7, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v13, 0x43370000    # 183.0f

    const/high16 v14, 0x42380000    # 46.0f

    sub-float v14, v3, v14

    invoke-virtual {v10, v13, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v13, v0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v13, v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget v10, v12, Lcom/prineside/tdi2/EnemyGroup;->interval:F

    const/high16 v13, 0x3e800000    # 0.25f

    cmpg-float v13, v10, v13

    if-gtz v13, :cond_e

    const-string v10, "icon-density-high"

    const/high16 v13, 0x3f800000    # 1.0f

    goto :goto_b

    :cond_e
    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v13

    if-ltz v10, :cond_f

    const-string v10, "icon-density-low"

    goto :goto_b

    :cond_f
    const-string v10, "icon-density-medium"

    :goto_b
    new-instance v14, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v7, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v7

    invoke-direct {v14, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v7, 0x42000000    # 32.0f

    invoke-virtual {v14, v7, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v10, 0x439a8000    # 309.0f

    const/high16 v16, 0x42280000    # 42.0f

    sub-float v7, v3, v16

    invoke-virtual {v14, v10, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v7, v14}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget v10, v12, Lcom/prineside/tdi2/EnemyGroup;->health:F

    float-to-double v13, v10

    const/4 v10, 0x0

    invoke-static {v13, v14, v10}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v13

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v9, 0x18

    invoke-virtual {v14, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v14

    sget-object v9, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v10, v14, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v7, v13, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v10, 0x42dc0000    # 110.0f

    const/high16 v13, 0x42500000    # 52.0f

    invoke-virtual {v7, v10, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    const/high16 v13, 0x43be0000    # 380.0f

    invoke-virtual {v7, v13, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v13, v0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v13, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget v13, v12, Lcom/prineside/tdi2/EnemyGroup;->count:I

    invoke-virtual {v12}, Lcom/prineside/tdi2/EnemyGroup;->getSpawnedCount()I

    move-result v14

    sub-int/2addr v13, v14

    int-to-double v13, v13

    const/4 v10, 0x0

    invoke-static {v13, v14, v10}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v13

    new-instance v14, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    move-object/from16 v18, v1

    const/16 v1, 0x18

    invoke-virtual {v10, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v1

    invoke-direct {v14, v1, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v7, v13, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v1, 0x42c80000    # 100.0f

    const/high16 v9, 0x42500000    # 52.0f

    invoke-virtual {v7, v1, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/16 v10, 0x10

    invoke-virtual {v7, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    const/high16 v10, 0x43e60000    # 460.0f

    invoke-virtual {v7, v10, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    if-eqz v11, :cond_10

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->t:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v8, v12, v7}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    const/high16 v7, 0x42600000    # 56.0f

    sub-float/2addr v3, v7

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, v18

    const/high16 v7, 0x42200000    # 40.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v10, 0x43200000    # 160.0f

    const/high16 v14, 0x43dc0000    # 440.0f

    goto/16 :goto_9

    :cond_11
    move-object/from16 v18, v1

    const/high16 v7, 0x42600000    # 56.0f

    sub-float/2addr v3, v7

    :goto_c
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, v18

    const/4 v4, 0x0

    const/high16 v7, 0x42200000    # 40.0f

    const/4 v8, 0x1

    const/high16 v9, 0x42000000    # 32.0f

    goto/16 :goto_4

    :cond_12
    :goto_d
    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->r:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/SpawnMenu;->u:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/WaveSystem;->getWaveGenerator()Lcom/prineside/tdi2/systems/WaveSystem$WaveGenerator;

    move-result-object v2

    if-nez v2, :cond_13

    const/4 v4, 0x1

    goto :goto_e

    :cond_13
    const/4 v4, 0x0

    :goto_e
    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :cond_14
    return-void
.end method
