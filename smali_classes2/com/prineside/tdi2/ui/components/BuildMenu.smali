.class public Lcom/prineside/tdi2/ui/components/BuildMenu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;,
        Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;,
        Lcom/prineside/tdi2/ui/components/BuildMenu$_TowerSystemListener;,
        Lcom/prineside/tdi2/ui/components/BuildMenu$_MinerSystemListener;,
        Lcom/prineside/tdi2/ui/components/BuildMenu$_ModifierSystemListener;,
        Lcom/prineside/tdi2/ui/components/BuildMenu$_SideMenuListener;,
        Lcom/prineside/tdi2/ui/components/BuildMenu$_Game_StateSystemListener;,
        Lcom/prineside/tdi2/ui/components/BuildMenu$_MapSystemListener;
    }
.end annotation


# static fields
.field public static final f0:Lcom/badlogic/gdx/graphics/Color;

.field public static final g0:Lcom/badlogic/gdx/graphics/Color;

.field public static final h0:Lcom/badlogic/gdx/graphics/Color;

.field public static final i0:Lcom/badlogic/gdx/graphics/Color;

.field public static final j0:Lcom/badlogic/gdx/graphics/Color;

.field public static final k0:Lcom/badlogic/gdx/graphics/Color;

.field public static final l0:Lcom/badlogic/gdx/graphics/Color;

.field public static final m0:Lcom/badlogic/gdx/utils/StringBuilder;

.field public static final n0:Lcom/badlogic/gdx/utils/ObjectSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectSet<",
            "Lcom/prineside/tdi2/enums/SpaceTileBonusType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final B:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public final C:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public final D:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public E:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public F:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public G:Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;

.field public H:Z

.field public I:Z

.field public J:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public K:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public L:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public M:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public N:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public O:[Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public P:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public Q:[[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public R:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public S:[Lcom/prineside/tdi2/Enemy;

.field public T:Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;

.field public U:Z

.field public final V:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Lcom/prineside/tdi2/enums/TowerType;",
            "Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;",
            ">;"
        }
    .end annotation
.end field

.field public final W:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Lcom/prineside/tdi2/enums/ModifierType;",
            "Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;",
            ">;"
        }
    .end annotation
.end field

.field public final X:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Lcom/prineside/tdi2/enums/MinerType;",
            "Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;",
            ">;"
        }
    .end annotation
.end field

.field public final Y:Lcom/prineside/tdi2/GameSystemProvider;

.field public final Z:Lcom/prineside/tdi2/ui/components/BuildMenu$_TowerSystemListener;

.field public final a:Lcom/prineside/tdi2/ui/actors/SideMenu;

.field public final a0:Lcom/prineside/tdi2/ui/components/BuildMenu$_MinerSystemListener;

.field public b:Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;

.field public final b0:Lcom/prineside/tdi2/ui/components/BuildMenu$_ModifierSystemListener;

.field public final c0:Lcom/prineside/tdi2/ui/components/BuildMenu$_SideMenuListener;

.field public d:Z

.field public final d0:Lcom/prineside/tdi2/ui/components/BuildMenu$_Game_StateSystemListener;

.field public final e0:Lcom/prineside/tdi2/ui/components/BuildMenu$_MapSystemListener;

.field public final k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final q:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field public final r:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

.field public final s:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public final t:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public final u:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public final v:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public final w:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public x:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

.field public final y:Lcom/prineside/tdi2/ui/actors/AimStrategySelector;

.field public final z:Lcom/prineside/tdi2/ui/components/TileResources;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3d8f5c29    # 0.07f

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->f0:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->g0:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P400:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->h0:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P800:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->i0:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P700:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->j0:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P900:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->k0:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P800:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->l0:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->m0:Lcom/badlogic/gdx/utils/StringBuilder;

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->n0:Lcom/badlogic/gdx/utils/ObjectSet;

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/ui/actors/SideMenu;Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v3, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v4, v3

    new-array v4, v4, [Lcom/badlogic/gdx/scenes/scene2d/Group;

    iput-object v4, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->O:[Lcom/badlogic/gdx/scenes/scene2d/Group;

    array-length v3, v3

    new-array v3, v3, [Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->P:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v3, Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;->values:[Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;

    array-length v3, v3

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x1

    const/4 v6, 0x5

    aput v6, v4, v5

    const/4 v6, 0x0

    aput v3, v4, v6

    const-class v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->Q:[[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v3, Lcom/prineside/tdi2/enums/EnemyType;->mainEnemyTypes:[Lcom/prineside/tdi2/enums/EnemyType;

    array-length v4, v3

    new-array v4, v4, [Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iput-object v4, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->R:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    array-length v3, v3

    new-array v3, v3, [Lcom/prineside/tdi2/Enemy;

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->S:[Lcom/prineside/tdi2/Enemy;

    new-instance v3, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->V:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v3, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->W:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v3, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->X:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v3, Lcom/prineside/tdi2/ui/components/BuildMenu$_TowerSystemListener;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/prineside/tdi2/ui/components/BuildMenu$_TowerSystemListener;-><init>(Lcom/prineside/tdi2/ui/components/BuildMenu;Lcom/prineside/tdi2/ui/components/BuildMenu$1;)V

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->Z:Lcom/prineside/tdi2/ui/components/BuildMenu$_TowerSystemListener;

    new-instance v3, Lcom/prineside/tdi2/ui/components/BuildMenu$_MinerSystemListener;

    invoke-direct {v3, v0, v4}, Lcom/prineside/tdi2/ui/components/BuildMenu$_MinerSystemListener;-><init>(Lcom/prineside/tdi2/ui/components/BuildMenu;Lcom/prineside/tdi2/ui/components/BuildMenu$1;)V

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->a0:Lcom/prineside/tdi2/ui/components/BuildMenu$_MinerSystemListener;

    new-instance v3, Lcom/prineside/tdi2/ui/components/BuildMenu$_ModifierSystemListener;

    invoke-direct {v3, v0, v4}, Lcom/prineside/tdi2/ui/components/BuildMenu$_ModifierSystemListener;-><init>(Lcom/prineside/tdi2/ui/components/BuildMenu;Lcom/prineside/tdi2/ui/components/BuildMenu$1;)V

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->b0:Lcom/prineside/tdi2/ui/components/BuildMenu$_ModifierSystemListener;

    new-instance v3, Lcom/prineside/tdi2/ui/components/BuildMenu$_SideMenuListener;

    invoke-direct {v3, v0, v4}, Lcom/prineside/tdi2/ui/components/BuildMenu$_SideMenuListener;-><init>(Lcom/prineside/tdi2/ui/components/BuildMenu;Lcom/prineside/tdi2/ui/components/BuildMenu$1;)V

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->c0:Lcom/prineside/tdi2/ui/components/BuildMenu$_SideMenuListener;

    new-instance v3, Lcom/prineside/tdi2/ui/components/BuildMenu$_Game_StateSystemListener;

    invoke-direct {v3, v0, v4}, Lcom/prineside/tdi2/ui/components/BuildMenu$_Game_StateSystemListener;-><init>(Lcom/prineside/tdi2/ui/components/BuildMenu;Lcom/prineside/tdi2/ui/components/BuildMenu$1;)V

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->d0:Lcom/prineside/tdi2/ui/components/BuildMenu$_Game_StateSystemListener;

    new-instance v3, Lcom/prineside/tdi2/ui/components/BuildMenu$_MapSystemListener;

    invoke-direct {v3, v0, v4}, Lcom/prineside/tdi2/ui/components/BuildMenu$_MapSystemListener;-><init>(Lcom/prineside/tdi2/ui/components/BuildMenu;Lcom/prineside/tdi2/ui/components/BuildMenu$1;)V

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->e0:Lcom/prineside/tdi2/ui/components/BuildMenu$_MapSystemListener;

    iput-object v1, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->a:Lcom/prineside/tdi2/ui/actors/SideMenu;

    iput-object v2, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->Y:Lcom/prineside/tdi2/GameSystemProvider;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v3

    add-int/lit16 v3, v3, -0x438

    invoke-virtual/range {p1 .. p1}, Lcom/prineside/tdi2/ui/actors/SideMenu;->createContainer()Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    move-result-object v4

    iput-object v4, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->r:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    const-string v7, "build_menu_container"

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const/high16 v8, 0x44160000    # 600.0f

    const v9, 0x43a78000    # 335.0f

    invoke-virtual {v7, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v10}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v10, v9

    const/4 v11, 0x0

    invoke-virtual {v7, v11, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v12, "blank"

    invoke-virtual {v10, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v10

    invoke-direct {v4, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v4, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->v:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v10, Lcom/badlogic/gdx/graphics/Color;

    const v12, 0x242424ff

    invoke-direct {v10, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v4, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    sget-object v10, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v4, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v4, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v7, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v14, 0x24

    invoke-virtual {v13, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v13

    sget-object v14, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v12, v13, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    const-string v13, ""

    invoke-direct {v4, v13, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v4, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v12, 0x44020000    # 520.0f

    const/high16 v15, 0x41d00000    # 26.0f

    invoke-virtual {v4, v12, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v12, 0x42200000    # 40.0f

    const/high16 v15, 0x43790000    # 249.0f

    invoke-virtual {v4, v12, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v7, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v6, 0x18

    invoke-virtual {v9, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v9

    invoke-direct {v15, v9, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v4, v13, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v4, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v9, 0x44020000    # 520.0f

    const/high16 v15, 0x42c80000    # 100.0f

    invoke-virtual {v4, v9, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v9, 0x430b0000    # 139.0f

    invoke-virtual {v4, v12, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/16 v9, 0xa

    invoke-virtual {v4, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    invoke-virtual {v7, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const/high16 v9, 0x42c60000    # 99.0f

    invoke-virtual {v4, v11, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v9, 0x42800000    # 64.0f

    invoke-virtual {v4, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v7, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/prineside/tdi2/ui/components/TileResources;

    invoke-direct {v4, v8}, Lcom/prineside/tdi2/ui/components/TileResources;-><init>(F)V

    iput-object v4, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->z:Lcom/prineside/tdi2/ui/components/TileResources;

    const/high16 v15, 0x42ce0000    # 103.0f

    invoke-virtual {v4, v11, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v7, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->F:Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v15, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->childrenOnly:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v4, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->F:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v15, 0x0

    invoke-virtual {v4, v15}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->F:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v15, -0x3cf40000    # -140.0f

    const/high16 v8, 0x43280000    # 168.0f

    invoke-virtual {v4, v15, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual/range {p1 .. p1}, Lcom/prineside/tdi2/ui/actors/SideMenu;->getBackgroundContainer()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v4

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->F:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v15, "ui-tile-menu-details-toggle-button"

    invoke-virtual {v8, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v19

    new-instance v8, Lcom/prineside/tdi2/ui/components/BuildMenu$1;

    invoke-direct {v8, v0}, Lcom/prineside/tdi2/ui/components/BuildMenu$1;-><init>(Lcom/prineside/tdi2/ui/components/BuildMenu;)V

    sget-object v21, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v22, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P700:Lcom/badlogic/gdx/graphics/Color;

    sget-object v23, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P900:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v18, v4

    move-object/from16 v20, v8

    invoke-direct/range {v18 .. v23}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->F:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v8, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v15, "icon-info"

    invoke-virtual {v8, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v4, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v4, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v8, 0x42080000    # 34.0f

    const/high16 v15, 0x42e40000    # 114.0f

    invoke-virtual {v4, v8, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v4, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->F:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v8, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->E:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->E:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v8, 0x43560000    # 214.0f

    invoke-virtual {v4, v11, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->E:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v8, 0x43ec0000    # 472.0f

    const v15, 0x443e4000    # 761.0f

    invoke-virtual {v4, v8, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->E:Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v8, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual/range {p1 .. p1}, Lcom/prineside/tdi2/ui/actors/SideMenu;->getBackgroundContainer()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v4

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->E:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v15, "ui-tile-menu-details-top"

    invoke-virtual {v8, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v8, 0x43e10000    # 450.0f

    const/high16 v15, 0x41300000    # 11.0f

    invoke-virtual {v4, v8, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v15, 0x443b8000    # 750.0f

    invoke-virtual {v4, v11, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v4, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v15, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->E:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v15, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v9, "ui-tile-menu-details-center"

    invoke-virtual {v15, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v9

    invoke-direct {v4, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const v9, 0x4433c000    # 719.0f

    invoke-virtual {v4, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v9, 0x41f80000    # 31.0f

    invoke-virtual {v4, v11, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v4, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v9, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->E:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v9, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v15, "ui-tile-menu-details-bottom"

    invoke-virtual {v9, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v9

    invoke-direct {v4, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v9, 0x41f80000    # 31.0f

    invoke-virtual {v4, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v4, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v9, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->E:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v9, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v15, "ui-tile-menu-details-right"

    invoke-virtual {v9, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v9

    invoke-direct {v4, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v9, 0x41b00000    # 22.0f

    const/high16 v15, 0x44100000    # 576.0f

    invoke-virtual {v4, v9, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v4, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    const/high16 v9, 0x41f80000    # 31.0f

    invoke-virtual {v4, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v9, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->E:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v9, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v15, 0x24

    invoke-virtual {v10, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v10

    invoke-direct {v9, v10, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v4, v13, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v4, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->J:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const v9, 0x44294000    # 677.0f

    invoke-virtual {v4, v12, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->J:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v9, 0x43960000    # 300.0f

    invoke-virtual {v4, v9, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->E:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v9, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->J:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v4, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v10, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v10

    invoke-direct {v9, v10, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v4, v13, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v4, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->K:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3f0f5c29    # 0.56f

    invoke-virtual {v4, v9, v9, v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->K:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const v10, 0x4413c000    # 591.0f

    invoke-virtual {v4, v12, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->K:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v10, 0x43b90000    # 370.0f

    const/high16 v15, 0x42980000    # 76.0f

    invoke-virtual {v4, v10, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->K:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/16 v10, 0xa

    invoke-virtual {v4, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->K:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->E:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v10, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->K:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v4, v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->L:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->E:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v10, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->L:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v10, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v10

    invoke-direct {v4, v10, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    const/4 v10, 0x0

    :goto_0
    sget-object v14, Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;->values:[Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;

    array-length v15, v14

    if-ge v10, v15, :cond_1

    const/high16 v15, 0x440a0000    # 552.0f

    int-to-float v11, v10

    const/high16 v20, 0x41e00000    # 28.0f

    mul-float v11, v11, v20

    sub-float/2addr v15, v11

    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    aget-object v5, v14, v10

    invoke-virtual {v8, v5}, Lcom/prineside/tdi2/managers/TowerManager;->getGeneralizedTowerStatName(Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v11, v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v11, v12, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v5, 0x43480000    # 200.0f

    const/high16 v8, 0x41c00000    # 24.0f

    invoke-virtual {v11, v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->L:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v5, v11}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    aget-object v8, v14, v10

    invoke-virtual {v5, v8}, Lcom/prineside/tdi2/managers/TowerManager;->getGeneralizedTowerStatColor(Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->Q:[[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/4 v11, 0x5

    new-array v11, v11, [Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aput-object v11, v8, v10

    const/4 v8, 0x0

    :goto_1
    const/4 v11, 0x5

    if-ge v8, v11, :cond_0

    iget-object v11, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->Q:[[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aget-object v11, v11, v10

    new-instance v14, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v9, "blank"

    invoke-virtual {v12, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v9

    invoke-direct {v14, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    aput-object v14, v11, v8

    iget-object v9, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->Q:[[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aget-object v9, v9, v10

    aget-object v9, v9, v8

    const/high16 v11, 0x43c10000    # 386.0f

    int-to-float v12, v8

    const/high16 v14, 0x41e00000    # 28.0f

    mul-float v12, v12, v14

    sub-float/2addr v11, v12

    invoke-virtual {v9, v11, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v9, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->Q:[[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aget-object v9, v9, v10

    aget-object v9, v9, v8

    const/high16 v11, 0x41c00000    # 24.0f

    const/high16 v12, 0x41c00000    # 24.0f

    invoke-virtual {v9, v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v9, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->Q:[[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aget-object v9, v9, v10

    aget-object v9, v9, v8

    invoke-virtual {v9, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v9, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->L:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v11, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->Q:[[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aget-object v11, v11, v10

    aget-object v11, v11, v8

    invoke-virtual {v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v8, v8, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v12, 0x42200000    # 40.0f

    goto :goto_1

    :cond_0
    add-int/lit8 v10, v10, 0x1

    const/4 v5, 0x1

    const/high16 v8, 0x43e10000    # 450.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/high16 v12, 0x42200000    # 40.0f

    goto/16 :goto_0

    :cond_1
    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v8, "build_menu_effectiveness_against_enemies"

    invoke-virtual {v5, v8}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v9, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v9

    sget-object v10, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v4, v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const v5, 0x3f0f5c29    # 0.56f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v4, v8, v8, v8, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const v5, 0x43a78000    # 335.0f

    const/high16 v8, 0x42200000    # 40.0f

    invoke-virtual {v4, v8, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v5, 0x43b90000    # 370.0f

    const/high16 v8, 0x42980000    # 76.0f

    invoke-virtual {v4, v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->L:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v5

    invoke-direct {v4, v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    const/4 v5, 0x0

    :goto_2
    sget-object v8, Lcom/prineside/tdi2/enums/EnemyType;->mainEnemyTypes:[Lcom/prineside/tdi2/enums/EnemyType;

    array-length v9, v8

    if-ge v5, v9, :cond_2

    aget-object v8, v8, v5

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    invoke-virtual {v9, v8}, Lcom/prineside/tdi2/managers/EnemyManager;->getFactory(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/Enemy$Factory;

    move-result-object v8

    invoke-virtual {v8}, Lcom/prineside/tdi2/Enemy$Factory;->obtain()Lcom/prineside/tdi2/Enemy;

    move-result-object v8

    iput-object v2, v8, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v9, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->S:[Lcom/prineside/tdi2/Enemy;

    aput-object v8, v9, v5

    sget-object v9, Lcom/prineside/tdi2/enums/EnemyType;->values:[Lcom/prineside/tdi2/enums/EnemyType;

    array-length v9, v9

    new-array v9, v9, [Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    iget-object v8, v8, Lcom/prineside/tdi2/Enemy;->type:Lcom/prineside/tdi2/enums/EnemyType;

    invoke-virtual {v11, v8}, Lcom/prineside/tdi2/managers/EnemyManager;->getFactory(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/Enemy$Factory;

    move-result-object v8

    invoke-virtual {v8}, Lcom/prineside/tdi2/Enemy$Factory;->getTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v8

    invoke-direct {v10, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    aput-object v10, v9, v5

    const/high16 v8, 0x42200000    # 40.0f

    invoke-virtual {v10, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    aget-object v8, v9, v5

    const/high16 v10, 0x42000000    # 32.0f

    rem-int/lit8 v11, v5, 0x3

    int-to-float v11, v11

    const/high16 v12, 0x43000000    # 128.0f

    mul-float v11, v11, v12

    add-float/2addr v10, v11

    const/high16 v12, 0x41400000    # 12.0f

    add-float/2addr v10, v12

    const/high16 v12, 0x43a00000    # 320.0f

    div-int/lit8 v14, v5, 0x3

    int-to-float v14, v14

    const/high16 v15, 0x42400000    # 48.0f

    mul-float v14, v14, v15

    sub-float/2addr v12, v14

    const/high16 v14, 0x41400000    # 12.0f

    add-float/2addr v14, v12

    invoke-virtual {v8, v10, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->L:Lcom/badlogic/gdx/scenes/scene2d/Group;

    aget-object v9, v9, v5

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->R:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string v10, "100"

    invoke-direct {v9, v10, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    aput-object v9, v8, v5

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->R:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v8, v8, v5

    const/high16 v9, 0x42800000    # 64.0f

    invoke-virtual {v8, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->R:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v8, v8, v5

    const/high16 v10, 0x42d00000    # 104.0f

    add-float/2addr v11, v10

    invoke-virtual {v8, v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->L:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v10, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->R:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v10, v10, v5

    invoke-virtual {v8, v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_2
    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->M:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->E:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->M:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v8, "resource_item"

    invoke-virtual {v5, v8}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v10, 0x15

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v9

    new-instance v11, Lcom/badlogic/gdx/graphics/Color;

    const v12, 0x3e0f5c29    # 0.14f

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct {v11, v14, v14, v14, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-direct {v8, v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v4, v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v5, 0x43030000    # 131.0f

    const/high16 v8, 0x42000000    # 32.0f

    invoke-virtual {v4, v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v5, 0x440e8000    # 570.0f

    const/high16 v8, 0x42200000    # 40.0f

    invoke-virtual {v4, v8, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->M:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v8, "speed"

    invoke-virtual {v5, v8}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v9

    new-instance v11, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct {v11, v14, v14, v14, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-direct {v8, v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v4, v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v5, 0x43030000    # 131.0f

    const/high16 v8, 0x42000000    # 32.0f

    invoke-virtual {v4, v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v5, 0x438b8000    # 279.0f

    const v8, 0x440e8000    # 570.0f

    invoke-virtual {v4, v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/16 v5, 0x10

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->M:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    const v5, 0x303030ff

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    const/4 v5, 0x0

    :goto_3
    sget-object v8, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v9, v8

    const/high16 v11, 0x42500000    # 52.0f

    const/high16 v14, 0x41200000    # 10.0f

    if-ge v5, v9, :cond_3

    aget-object v8, v8, v5

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iget-object v15, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->O:[Lcom/badlogic/gdx/scenes/scene2d/Group;

    aput-object v9, v15, v5

    const/high16 v15, 0x43e10000    # 450.0f

    invoke-virtual {v9, v15, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v15, 0x44008000    # 514.0f

    int-to-float v12, v5

    const/high16 v24, 0x42600000    # 56.0f

    mul-float v12, v12, v24

    sub-float/2addr v15, v12

    const/4 v12, 0x0

    invoke-virtual {v9, v12, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v12, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->M:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v12, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "blank"

    invoke-virtual {v15, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v6

    invoke-direct {v12, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v6, 0x43a20000    # 324.0f

    invoke-virtual {v12, v6, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v12, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v9, v12}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v15, "blank"

    invoke-virtual {v12, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v12

    invoke-direct {v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v12, 0x42f40000    # 122.0f

    invoke-virtual {v6, v12, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v12, 0x43a40000    # 328.0f

    const/4 v15, 0x0

    invoke-virtual {v6, v12, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v9, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    sget-object v15, Lcom/prineside/tdi2/Resource;->TEXTURE_REGION_NAMES:[Ljava/lang/String;

    aget-object v15, v15, v5

    invoke-virtual {v12, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v12

    invoke-direct {v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v12, 0x42000000    # 32.0f

    const/high16 v15, 0x42000000    # 32.0f

    invoke-virtual {v6, v12, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v12, 0x42200000    # 40.0f

    invoke-virtual {v6, v12, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->resourceManager:Lcom/prineside/tdi2/managers/ResourceManager;

    invoke-virtual {v12, v8}, Lcom/prineside/tdi2/managers/ResourceManager;->getColor(Lcom/prineside/tdi2/enums/ResourceType;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v9, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->resourceManager:Lcom/prineside/tdi2/managers/ResourceManager;

    invoke-virtual {v12, v8}, Lcom/prineside/tdi2/managers/ResourceManager;->getName(Lcom/prineside/tdi2/enums/ResourceType;)Ljava/lang/String;

    move-result-object v12

    new-instance v14, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v15, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v15

    sget-object v10, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v14, v15, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v6, v12, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v12, 0x42c80000    # 100.0f

    invoke-virtual {v6, v12, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v12, 0x42a40000    # 82.0f

    const/4 v14, 0x0

    invoke-virtual {v6, v12, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->resourceManager:Lcom/prineside/tdi2/managers/ResourceManager;

    invoke-virtual {v12, v8}, Lcom/prineside/tdi2/managers/ResourceManager;->getColor(Lcom/prineside/tdi2/enums/ResourceType;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v9, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v14, 0x18

    invoke-virtual {v12, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v12

    invoke-direct {v8, v12, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    const-string v10, "1.23"

    invoke-direct {v6, v10, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->P:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aput-object v6, v8, v5

    const/high16 v8, 0x42a40000    # 82.0f

    invoke-virtual {v6, v8, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v8, 0x43a40000    # 328.0f

    const/4 v10, 0x0

    invoke-virtual {v6, v8, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/16 v8, 0x10

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v9, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x18

    const/16 v10, 0x15

    const v12, 0x3e0f5c29    # 0.14f

    goto/16 :goto_3

    :cond_3
    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->N:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->E:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->N:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    sget-object v5, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    const/high16 v6, 0x42640000    # 57.0f

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v6, 0x43e10000    # 450.0f

    const/high16 v8, 0x42200000    # 40.0f

    invoke-virtual {v4, v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v6, 0x437a0000    # 250.0f

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-virtual {v4, v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOrigin(FF)V

    const/high16 v6, 0x40a00000    # 5.0f

    const v9, 0x3e4ccccd    # 0.2f

    sget-object v10, Lcom/badlogic/gdx/math/Interpolation;->pow2:Lcom/badlogic/gdx/math/Interpolation$Pow;

    invoke-static {v6, v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->rotateTo(FFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;

    move-result-object v6

    const/high16 v9, -0x3f600000    # -5.0f

    const v12, 0x3e4ccccd    # 0.2f

    invoke-static {v9, v12, v10}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->rotateTo(FFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;

    move-result-object v9

    const/4 v15, 0x0

    invoke-static {v15, v12, v10}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->rotateTo(FFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/RotateToAction;

    move-result-object v10

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v12}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->delay(F)Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    move-result-object v12

    invoke-static {v6, v9, v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v6

    invoke-static {v6}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->forever(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->E:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v10, "icon-info-circle"

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v9

    invoke-direct {v6, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    sget-object v9, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    const/high16 v10, 0x42200000    # 40.0f

    invoke-virtual {v6, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v10, v10, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v12, "tap_again_to_build"

    invoke-virtual {v10, v12}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v14, 0x15

    invoke-virtual {v15, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v15

    sget-object v14, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v12, v15, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v6, v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v6, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v4, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v9, "icon-times"

    invoke-virtual {v6, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v27

    new-instance v6, Lcom/prineside/tdi2/ui/components/BuildMenu$2;

    invoke-direct {v6, v0}, Lcom/prineside/tdi2/ui/components/BuildMenu$2;-><init>(Lcom/prineside/tdi2/ui/components/BuildMenu;)V

    sget-object v9, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v10, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P700:Lcom/badlogic/gdx/graphics/Color;

    sget-object v12, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P900:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v26, v4

    move-object/from16 v28, v6

    move-object/from16 v29, v9

    move-object/from16 v30, v10

    move-object/from16 v31, v12

    invoke-direct/range {v26 .. v31}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v6, 0x42c00000    # 96.0f

    const/high16 v15, 0x42f00000    # 120.0f

    invoke-virtual {v4, v6, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v6, 0x43b10000    # 354.0f

    const/4 v15, 0x0

    invoke-virtual {v4, v6, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v6, 0x42200000    # 40.0f

    invoke-virtual {v4, v6, v6}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/high16 v6, 0x41800000    # 16.0f

    const/high16 v15, 0x42820000    # 65.0f

    invoke-virtual {v4, v6, v15}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconPosition(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->E:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->H:Z

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/prineside/tdi2/ui/components/BuildMenu;->v(Z)V

    iput-boolean v4, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->I:Z

    invoke-virtual {v0, v6}, Lcom/prineside/tdi2/ui/components/BuildMenu;->w(Z)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v4, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->B:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const/high16 v6, 0x42a00000    # 80.0f

    const/high16 v15, 0x44160000    # 600.0f

    invoke-virtual {v4, v15, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v7, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v15, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v11, "ui-tile-menu-tab-inactive-left"

    invoke-virtual {v8, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v29

    new-instance v8, Lcom/prineside/tdi2/ui/components/BuildMenu$3;

    invoke-direct {v8, v0}, Lcom/prineside/tdi2/ui/components/BuildMenu$3;-><init>(Lcom/prineside/tdi2/ui/components/BuildMenu;)V

    move-object/from16 v28, v15

    move-object/from16 v30, v8

    move-object/from16 v31, v9

    move-object/from16 v32, v10

    move-object/from16 v33, v12

    invoke-direct/range {v28 .. v33}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v15, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->x:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const-string v8, "build_menu_modifiers_tab_button"

    invoke-virtual {v15, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->x:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/high16 v11, 0x42280000    # 42.0f

    const/high16 v15, 0x40800000    # 4.0f

    invoke-virtual {v8, v11, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->x:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/high16 v11, 0x43640000    # 228.0f

    const/high16 v15, 0x42900000    # 72.0f

    invoke-virtual {v8, v11, v15}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->x:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v8, v11, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->x:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v15, "icon-modifier"

    invoke-virtual {v11, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v11

    invoke-direct {v8, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v11, 0x42580000    # 54.0f

    invoke-virtual {v8, v11, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v15, 0x42ae0000    # 87.0f

    const/high16 v11, 0x41100000    # 9.0f

    invoke-virtual {v8, v15, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v8, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v11, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->x:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v11, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v15, "ui-tile-menu-tab-active"

    invoke-virtual {v11, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v11, 0x439c0000    # 312.0f

    invoke-virtual {v8, v11, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v11, 0x43780000    # 248.0f

    const/4 v15, 0x0

    invoke-virtual {v8, v11, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v15, "icon-tower-top"

    invoke-virtual {v11, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v11

    invoke-direct {v4, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v8, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v11, 0x42580000    # 54.0f

    invoke-virtual {v4, v11, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v11, 0x41800000    # 16.0f

    invoke-virtual {v4, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v11, v11, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v15, "towers"

    invoke-virtual {v11, v15}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    new-instance v15, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v1, 0x18

    invoke-virtual {v6, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v6

    invoke-direct {v15, v6, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v4, v11, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v8, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v4, 0x40800000    # 4.0f

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->C:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const/high16 v4, 0x42a00000    # 80.0f

    const/high16 v6, 0x44160000    # 600.0f

    invoke-virtual {v1, v6, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v11, "ui-tile-menu-tab-active"

    invoke-virtual {v8, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v8, 0x439c0000    # 312.0f

    invoke-virtual {v6, v8, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v4, 0x0

    const/high16 v8, 0x42200000    # 40.0f

    invoke-virtual {v6, v8, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v11, "icon-modifier"

    invoke-virtual {v8, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v8, 0x42580000    # 54.0f

    invoke-virtual {v4, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v8, 0x41800000    # 16.0f

    invoke-virtual {v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v8, v8, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v11, "modifiers"

    invoke-virtual {v8, v11}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v2, 0x18

    invoke-virtual {v15, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v15

    invoke-direct {v11, v15, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v4, v8, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v4, 0x40800000    # 4.0f

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v2, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "ui-tile-menu-tab-inactive-right"

    invoke-virtual {v4, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v29

    new-instance v4, Lcom/prineside/tdi2/ui/components/BuildMenu$4;

    invoke-direct {v4, v0}, Lcom/prineside/tdi2/ui/components/BuildMenu$4;-><init>(Lcom/prineside/tdi2/ui/components/BuildMenu;)V

    move-object/from16 v28, v2

    move-object/from16 v30, v4

    invoke-direct/range {v28 .. v33}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v4, 0x43a50000    # 330.0f

    const/high16 v6, 0x40800000    # 4.0f

    invoke-virtual {v2, v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v4, 0x43640000    # 228.0f

    const/high16 v6, 0x42900000    # 72.0f

    invoke-virtual {v2, v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v2, v4, v6}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "icon-tower-top"

    invoke-virtual {v4, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v4, 0x42580000    # 54.0f

    invoke-virtual {v1, v4, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v4, 0x42ae0000    # 87.0f

    const/high16 v6, 0x41100000    # 9.0f

    invoke-virtual {v1, v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->D:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const/high16 v2, 0x42a00000    # 80.0f

    const/high16 v4, 0x44160000    # 600.0f

    invoke-virtual {v1, v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v7, "ui-tile-menu-tab-active"

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v6, 0x439c0000    # 312.0f

    invoke-virtual {v4, v6, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v2, 0x43780000    # 248.0f

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "icon-miner-top"

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v2, 0x42580000    # 54.0f

    invoke-virtual {v1, v2, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v6, "miners"

    invoke-virtual {v2, v6}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v8, 0x18

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v7

    invoke-direct {v6, v7, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v1, v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v4, "ui-tile-menu-tab-background"

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v2

    int-to-float v2, v2

    const v4, 0x43a78000    # 335.0f

    sub-float/2addr v2, v4

    const/high16 v4, 0x44160000    # 600.0f

    invoke-virtual {v1, v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->r:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v4}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v4

    int-to-float v4, v4

    const v6, 0x43a78000    # 335.0f

    sub-float/2addr v4, v6

    const/high16 v6, 0x44160000    # 600.0f

    invoke-virtual {v1, v6, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->r:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const-string v2, "build_menu_default_aim_strategy"

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    const/high16 v2, 0x441d0000    # 628.0f

    int-to-float v6, v3

    add-float/2addr v2, v6

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v2, 0x428c0000    # 70.0f

    const/high16 v7, 0x44160000    # 600.0f

    invoke-virtual {v4, v7, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v7, v7, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v8, "default_target"

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v10, 0x15

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v9

    invoke-direct {v8, v9, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v2, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const v7, 0x3f0f5c29    # 0.56f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v2, v8, v8, v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const/high16 v7, 0x42500000    # 52.0f

    const/high16 v8, 0x42200000    # 40.0f

    invoke-virtual {v2, v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v7, 0x43520000    # 210.0f

    const/high16 v8, 0x41900000    # 18.0f

    invoke-virtual {v2, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v9, 0x1e

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v8

    invoke-direct {v7, v8, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v2, v13, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->A:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v7, 0x41900000    # 18.0f

    const/high16 v8, 0x42200000    # 40.0f

    invoke-virtual {v2, v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v7, 0x43520000    # 210.0f

    const/high16 v8, 0x41b80000    # 23.0f

    invoke-virtual {v2, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;

    invoke-direct {v2}, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;-><init>()V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->y:Lcom/prineside/tdi2/ui/actors/AimStrategySelector;

    const/high16 v7, 0x437a0000    # 250.0f

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    new-instance v7, Lcom/prineside/tdi2/ui/components/BuildMenu$5;

    move-object/from16 v8, p2

    invoke-direct {v7, v0, v8}, Lcom/prineside/tdi2/ui/components/BuildMenu$5;-><init>(Lcom/prineside/tdi2/ui/components/BuildMenu;Lcom/prineside/tdi2/GameSystemProvider;)V

    invoke-virtual {v2, v7}, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;->addListener(Lcom/prineside/tdi2/ui/actors/AimStrategySelector$AimStrategySelectorListener;)V

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    const-string v4, "build_menu_tower_build_buttons"

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    sget-object v4, Lcom/prineside/tdi2/enums/TowerType;->values:[Lcom/prineside/tdi2/enums/TowerType;

    array-length v7, v4

    const/4 v9, 0x1

    sub-int/2addr v7, v9

    const/4 v10, 0x4

    div-int/2addr v7, v10

    add-int/2addr v7, v9

    int-to-float v9, v7

    const/high16 v11, 0x43030000    # 131.0f

    mul-float v9, v9, v11

    const/high16 v11, 0x42200000    # 40.0f

    add-float/2addr v9, v11

    const/high16 v11, 0x40800000    # 4.0f

    sub-float/2addr v9, v11

    add-int/lit16 v3, v3, 0x258

    int-to-float v3, v3

    cmpl-float v11, v9, v3

    if-lez v11, :cond_4

    const/4 v11, 0x1

    goto :goto_4

    :cond_4
    const/4 v11, 0x0

    :goto_4
    if-eqz v11, :cond_5

    const/high16 v12, 0x41a00000    # 20.0f

    goto :goto_5

    :cond_5
    const/high16 v12, 0x42200000    # 40.0f

    :goto_5
    new-instance v13, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v14}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-virtual {v13, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    const/high16 v5, 0x44160000    # 600.0f

    invoke-virtual {v13, v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    new-instance v14, Lcom/badlogic/gdx/graphics/Color;

    const v15, 0x2b2b2bff

    invoke-direct {v14, v15}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v13, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v13}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v13, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/high16 v15, 0x41a00000    # 20.0f

    invoke-virtual {v14, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getScrollPaneStyle(F)Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    move-result-object v14

    invoke-direct {v13, v2, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;)V

    invoke-virtual {v13, v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v5, 0x0

    invoke-virtual {v13, v5, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setOverscroll(ZZ)V

    invoke-virtual {v13, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setSmoothScrolling(Z)V

    invoke-virtual {v13, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setFadeScrollBars(Z)V

    new-instance v5, Lcom/prineside/tdi2/ui/components/BuildMenu$6;

    invoke-direct {v5, v0, v13}, Lcom/prineside/tdi2/ui/components/BuildMenu$6;-><init>(Lcom/prineside/tdi2/ui/components/BuildMenu;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;)V

    invoke-virtual {v13, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v1, v13}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v14, "gradient-top"

    invoke-virtual {v13, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v13

    invoke-direct {v5, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    if-eqz v11, :cond_6

    const/high16 v11, 0x44110000    # 580.0f

    goto :goto_6

    :cond_6
    const/high16 v11, 0x44160000    # 600.0f

    :goto_6
    const/high16 v13, 0x41200000    # 10.0f

    invoke-virtual {v5, v11, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v11, 0x3e0f5c29    # 0.14f

    const/4 v14, 0x0

    invoke-virtual {v5, v14, v14, v14, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    sub-float v11, v3, v13

    invoke-virtual {v5, v14, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    array-length v1, v4

    const/4 v5, 0x0

    const/4 v11, 0x0

    :goto_7
    if-ge v5, v1, :cond_c

    aget-object v14, v4, v5

    new-instance v15, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    invoke-virtual {v10, v14}, Lcom/prineside/tdi2/managers/TowerManager;->getFactory(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/Tower$Factory;

    move-result-object v10

    const/high16 v13, 0x43000000    # 128.0f

    invoke-virtual {v10, v13}, Lcom/prineside/tdi2/Tower$Factory;->createIconActor(F)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v10

    invoke-direct {v15, v0, v10}, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;-><init>(Lcom/prineside/tdi2/ui/components/BuildMenu;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "build_menu_tower_build_button_"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    const/4 v10, 0x0

    invoke-virtual {v15, v10}, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->setPrice(I)V

    const/4 v10, -0x1

    invoke-virtual {v15, v10}, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->setCount(I)V

    sget-object v10, Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;->TOWERS:Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;

    iput-object v10, v15, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->T:Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;

    iput-object v14, v15, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->U:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v2, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    const/high16 v13, 0x42fe0000    # 127.0f

    invoke-virtual {v10, v13, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    const/high16 v13, 0x40800000    # 4.0f

    invoke-virtual {v10, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    invoke-virtual {v10, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    const/4 v13, 0x1

    add-int/2addr v11, v13

    const/4 v13, 0x4

    if-gt v11, v13, :cond_7

    const/high16 v13, 0x42200000    # 40.0f

    invoke-virtual {v10, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    goto :goto_8

    :cond_7
    const/high16 v13, 0x42200000    # 40.0f

    :goto_8
    move/from16 v25, v1

    rem-int/lit8 v1, v11, 0x4

    move-object/from16 v27, v4

    const/4 v4, 0x1

    if-ne v1, v4, :cond_8

    invoke-virtual {v10, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    :cond_8
    if-nez v1, :cond_9

    invoke-virtual {v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    :cond_9
    add-int/lit8 v1, v11, -0x1

    const/4 v4, 0x4

    div-int/2addr v1, v4

    const/4 v4, 0x1

    add-int/2addr v1, v4

    if-ne v1, v7, :cond_a

    sub-float v1, v3, v9

    const/high16 v4, 0x42200000    # 40.0f

    invoke-static {v1, v4}, Ljava/lang/StrictMath;->max(FF)F

    move-result v1

    invoke-virtual {v10, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    :cond_a
    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->V:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, v14, v15}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/prineside/tdi2/ui/components/BuildMenu$7;

    invoke-direct {v1, v0, v15, v8}, Lcom/prineside/tdi2/ui/components/BuildMenu$7;-><init>(Lcom/prineside/tdi2/ui/components/BuildMenu;Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;Lcom/prineside/tdi2/GameSystemProvider;)V

    invoke-virtual {v15, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-static {}, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_TOWER_BASIC:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    sget-object v4, Lcom/prineside/tdi2/ui/components/BuildMenu$12;->a:[I

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v4, v4, v10

    packed-switch v4, :pswitch_data_0

    goto :goto_9

    :pswitch_0
    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_TOWER_FLAMETHROWER:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    goto :goto_9

    :pswitch_1
    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_TOWER_CRUSHER:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    goto :goto_9

    :pswitch_2
    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_TOWER_GAUSS:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    goto :goto_9

    :pswitch_3
    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_TOWER_LASER:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    goto :goto_9

    :pswitch_4
    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_TOWER_MISSILE:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    goto :goto_9

    :pswitch_5
    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_TOWER_TESLA:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    goto :goto_9

    :pswitch_6
    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_TOWER_VENOM:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    goto :goto_9

    :pswitch_7
    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_TOWER_MINIGUN:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    goto :goto_9

    :pswitch_8
    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_TOWER_MULTISHOT:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    goto :goto_9

    :pswitch_9
    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_TOWER_BLAST:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    goto :goto_9

    :pswitch_a
    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_TOWER_SPLASH:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    goto :goto_9

    :pswitch_b
    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_TOWER_AIR:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    goto :goto_9

    :pswitch_c
    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_TOWER_FREEZING:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    goto :goto_9

    :pswitch_d
    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_TOWER_CANNON:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    goto :goto_9

    :pswitch_e
    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_TOWER_SNIPER:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    :goto_9
    :pswitch_f
    new-instance v4, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v10, v1}, Lcom/prineside/tdi2/managers/SettingsManager;->getHotKey(Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;)[I

    move-result-object v1

    const/high16 v10, 0x41400000    # 12.0f

    const/high16 v13, 0x42cc0000    # 102.0f

    const/16 v14, 0x8

    invoke-direct {v4, v1, v10, v13, v14}, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;-><init>([IFFI)V

    invoke-virtual {v15, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_b
    add-int/lit8 v5, v5, 0x1

    move/from16 v1, v25

    move-object/from16 v4, v27

    const/4 v10, 0x4

    goto/16 :goto_7

    :cond_c
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->t:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x43a78000    # 335.0f

    sub-float/2addr v2, v3

    const/high16 v3, 0x44160000    # 600.0f

    invoke-virtual {v1, v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->r:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    const-string v3, "build_menu_modifier_build_buttons"

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    sget-object v3, Lcom/prineside/tdi2/enums/ModifierType;->values:[Lcom/prineside/tdi2/enums/ModifierType;

    array-length v3, v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const/4 v5, 0x4

    div-int/2addr v3, v5

    add-int/2addr v3, v4

    int-to-float v4, v3

    const/high16 v5, 0x43030000    # 131.0f

    mul-float v4, v4, v5

    const/high16 v5, 0x42200000    # 40.0f

    add-float/2addr v4, v5

    const/high16 v5, 0x40800000    # 4.0f

    sub-float/2addr v4, v5

    const v5, 0x44354000    # 725.0f

    add-float/2addr v6, v5

    cmpl-float v5, v4, v6

    if-lez v5, :cond_d

    const/4 v5, 0x1

    goto :goto_a

    :cond_d
    const/4 v5, 0x0

    :goto_a
    if-eqz v5, :cond_e

    const/high16 v7, 0x41a00000    # 20.0f

    goto :goto_b

    :cond_e
    const/high16 v7, 0x42200000    # 40.0f

    :goto_b
    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v10}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    sget-object v10, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    const/high16 v10, 0x44160000    # 600.0f

    invoke-virtual {v9, v10, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    new-instance v11, Lcom/badlogic/gdx/graphics/Color;

    const v12, 0x2b2b2bff

    invoke-direct {v11, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/high16 v12, 0x41a00000    # 20.0f

    invoke-virtual {v11, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getScrollPaneStyle(F)Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    move-result-object v11

    invoke-direct {v9, v2, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;)V

    invoke-virtual {v9, v10, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setOverscroll(ZZ)V

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setSmoothScrolling(Z)V

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setFadeScrollBars(Z)V

    new-instance v10, Lcom/prineside/tdi2/ui/components/BuildMenu$8;

    invoke-direct {v10, v0, v9}, Lcom/prineside/tdi2/ui/components/BuildMenu$8;-><init>(Lcom/prineside/tdi2/ui/components/BuildMenu;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;)V

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v1, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v11, "gradient-top"

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    if-eqz v5, :cond_f

    const/high16 v5, 0x44110000    # 580.0f

    goto :goto_c

    :cond_f
    const/high16 v5, 0x44160000    # 600.0f

    :goto_c
    const/high16 v10, 0x41200000    # 10.0f

    invoke-virtual {v9, v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v5, 0x3e0f5c29    # 0.14f

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v11, v11, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    sub-float v5, v6, v10

    invoke-virtual {v9, v11, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v1, Lcom/prineside/tdi2/enums/ModifierType;->values:[Lcom/prineside/tdi2/enums/ModifierType;

    array-length v9, v1

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_d
    if-ge v10, v9, :cond_15

    aget-object v12, v1, v10

    new-instance v13, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->modifierManager:Lcom/prineside/tdi2/managers/ModifierManager;

    invoke-virtual {v14, v12}, Lcom/prineside/tdi2/managers/ModifierManager;->getFactory(Lcom/prineside/tdi2/enums/ModifierType;)Lcom/prineside/tdi2/Modifier$Factory;

    move-result-object v14

    const/high16 v15, 0x43000000    # 128.0f

    invoke-virtual {v14, v15}, Lcom/prineside/tdi2/Modifier$Factory;->createIconActor(F)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v14

    invoke-direct {v13, v0, v14}, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;-><init>(Lcom/prineside/tdi2/ui/components/BuildMenu;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "build_menu_modifier_build_button_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    sget-object v14, Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;->MODIFIERS:Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;

    iput-object v14, v13, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->T:Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;

    iput-object v12, v13, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->W:Lcom/prineside/tdi2/enums/ModifierType;

    iget-object v14, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->W:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v14, v12, v13}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Lcom/prineside/tdi2/ui/components/BuildMenu$9;

    invoke-direct {v14, v0, v13, v8}, Lcom/prineside/tdi2/ui/components/BuildMenu$9;-><init>(Lcom/prineside/tdi2/ui/components/BuildMenu;Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;Lcom/prineside/tdi2/GameSystemProvider;)V

    invoke-virtual {v13, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v2, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v14

    const/high16 v15, 0x42fe0000    # 127.0f

    invoke-virtual {v14, v15, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v14

    const/high16 v15, 0x40800000    # 4.0f

    invoke-virtual {v14, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v14

    invoke-virtual {v14, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v14

    invoke-static {}, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->isEnabled()Z

    move-result v15

    if-eqz v15, :cond_10

    sget-object v15, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_MODIFIER_BALANCE:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    sget-object v16, Lcom/prineside/tdi2/ui/components/BuildMenu$12;->b:[I

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v12, v16, v12

    packed-switch v12, :pswitch_data_1

    goto :goto_e

    :pswitch_10
    sget-object v15, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_MODIFIER_EXPERIENCE:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    goto :goto_e

    :pswitch_11
    sget-object v15, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_MODIFIER_BOUNTY:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    goto :goto_e

    :pswitch_12
    sget-object v15, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_MODIFIER_MINING_SPEED:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    goto :goto_e

    :pswitch_13
    sget-object v15, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_MODIFIER_ATTACK_SPEED:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    goto :goto_e

    :pswitch_14
    sget-object v15, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_MODIFIER_DAMAGE:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    goto :goto_e

    :pswitch_15
    sget-object v15, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_MODIFIER_POWER:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    goto :goto_e

    :pswitch_16
    sget-object v15, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_MODIFIER_SEARCH:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    :goto_e
    :pswitch_17
    new-instance v12, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;

    move-object/from16 v16, v1

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v1, v15}, Lcom/prineside/tdi2/managers/SettingsManager;->getHotKey(Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;)[I

    move-result-object v1

    const/high16 v15, 0x41400000    # 12.0f

    move/from16 v25, v9

    const/high16 v9, 0x42cc0000    # 102.0f

    const/16 v8, 0x8

    invoke-direct {v12, v1, v15, v9, v8}, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;-><init>([IFFI)V

    invoke-virtual {v13, v12}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_f

    :cond_10
    move-object/from16 v16, v1

    move/from16 v25, v9

    :goto_f
    const/4 v1, 0x1

    add-int/2addr v11, v1

    const/4 v8, 0x4

    if-gt v11, v8, :cond_11

    const/high16 v8, 0x42200000    # 40.0f

    invoke-virtual {v14, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    goto :goto_10

    :cond_11
    const/high16 v8, 0x42200000    # 40.0f

    :goto_10
    rem-int/lit8 v9, v11, 0x4

    if-ne v9, v1, :cond_12

    invoke-virtual {v14, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    :cond_12
    if-nez v9, :cond_13

    invoke-virtual {v14, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    :cond_13
    add-int/lit8 v1, v11, -0x1

    const/4 v8, 0x4

    div-int/2addr v1, v8

    const/4 v8, 0x1

    add-int/2addr v1, v8

    if-ne v1, v3, :cond_14

    sub-float v1, v6, v4

    const/high16 v8, 0x42200000    # 40.0f

    invoke-static {v1, v8}, Ljava/lang/StrictMath;->max(FF)F

    move-result v1

    invoke-virtual {v14, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    :cond_14
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v8, p2

    move-object/from16 v1, v16

    move/from16 v9, v25

    goto/16 :goto_d

    :cond_15
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->u:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const v2, 0x443a4000    # 745.0f

    const/high16 v3, 0x44160000    # 600.0f

    invoke-virtual {v1, v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->r:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    const-string v3, "build_menu_miner_build_buttons"

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    sget-object v3, Lcom/prineside/tdi2/enums/MinerType;->values:[Lcom/prineside/tdi2/enums/MinerType;

    array-length v4, v3

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    const/4 v8, 0x4

    div-int/2addr v4, v8

    add-int/2addr v4, v7

    int-to-float v7, v4

    const/high16 v8, 0x43030000    # 131.0f

    mul-float v7, v7, v8

    const/high16 v8, 0x42200000    # 40.0f

    add-float/2addr v7, v8

    const/high16 v8, 0x40800000    # 4.0f

    sub-float/2addr v7, v8

    cmpl-float v8, v7, v6

    if-lez v8, :cond_16

    const/4 v15, 0x1

    goto :goto_11

    :cond_16
    const/4 v15, 0x0

    :goto_11
    if-eqz v15, :cond_17

    const/high16 v8, 0x41a00000    # 20.0f

    goto :goto_12

    :cond_17
    const/high16 v8, 0x42200000    # 40.0f

    :goto_12
    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v10}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    sget-object v10, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    const/high16 v10, 0x44160000    # 600.0f

    invoke-virtual {v9, v10, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    new-instance v11, Lcom/badlogic/gdx/graphics/Color;

    const v12, 0x2b2b2bff

    invoke-direct {v11, v12}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    invoke-virtual {v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/high16 v12, 0x41a00000    # 20.0f

    invoke-virtual {v11, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getScrollPaneStyle(F)Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;

    move-result-object v11

    invoke-direct {v9, v2, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;)V

    invoke-virtual {v9, v10, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setOverscroll(ZZ)V

    invoke-virtual {v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setSmoothScrolling(Z)V

    invoke-virtual {v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->setFadeScrollBars(Z)V

    new-instance v12, Lcom/prineside/tdi2/ui/components/BuildMenu$10;

    invoke-direct {v12, v0, v9}, Lcom/prineside/tdi2/ui/components/BuildMenu$10;-><init>(Lcom/prineside/tdi2/ui/components/BuildMenu;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;)V

    invoke-virtual {v9, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v1, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v13, "gradient-top"

    invoke-virtual {v12, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v12

    invoke-direct {v9, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    if-eqz v15, :cond_18

    const/high16 v10, 0x44110000    # 580.0f

    :cond_18
    const/high16 v12, 0x41200000    # 10.0f

    invoke-virtual {v9, v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v10, 0x3e0f5c29    # 0.14f

    const/4 v12, 0x0

    invoke-virtual {v9, v12, v12, v12, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v9, v12, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    array-length v1, v3

    const/4 v5, 0x0

    :goto_13
    if-ge v11, v1, :cond_23

    aget-object v9, v3, v11

    new-instance v10, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->minerManager:Lcom/prineside/tdi2/managers/MinerManager;

    invoke-virtual {v12, v9}, Lcom/prineside/tdi2/managers/MinerManager;->getFactory(Lcom/prineside/tdi2/enums/MinerType;)Lcom/prineside/tdi2/Miner$Factory;

    move-result-object v12

    const/high16 v13, 0x43000000    # 128.0f

    invoke-virtual {v12, v13}, Lcom/prineside/tdi2/Miner$Factory;->createIconActor(F)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v12

    invoke-direct {v10, v0, v12}, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;-><init>(Lcom/prineside/tdi2/ui/components/BuildMenu;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "build_menu_miner_build_button_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    sget-object v12, Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;->MINERS:Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;

    iput-object v12, v10, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->T:Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;

    iput-object v9, v10, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->V:Lcom/prineside/tdi2/enums/MinerType;

    iget-object v12, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->X:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v12, v9, v10}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v12, Lcom/prineside/tdi2/ui/components/BuildMenu$11;

    move-object/from16 v13, p2

    invoke-direct {v12, v0, v10, v13}, Lcom/prineside/tdi2/ui/components/BuildMenu$11;-><init>(Lcom/prineside/tdi2/ui/components/BuildMenu;Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;Lcom/prineside/tdi2/GameSystemProvider;)V

    invoke-virtual {v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v2, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v12

    const/high16 v14, 0x42fe0000    # 127.0f

    invoke-virtual {v12, v14, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v12

    const/high16 v15, 0x40800000    # 4.0f

    invoke-virtual {v12, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v12

    invoke-virtual {v12, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v12

    invoke-static {}, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->isEnabled()Z

    move-result v16

    if-eqz v16, :cond_1e

    sget-object v16, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_MODIFIER_BALANCE:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    sget-object v17, Lcom/prineside/tdi2/ui/components/BuildMenu$12;->c:[I

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v9, v17, v9

    const/4 v14, 0x1

    if-eq v9, v14, :cond_1d

    const/4 v14, 0x2

    if-eq v9, v14, :cond_1c

    const/4 v14, 0x3

    if-eq v9, v14, :cond_1b

    const/4 v14, 0x4

    if-eq v9, v14, :cond_1a

    const/4 v14, 0x5

    if-eq v9, v14, :cond_19

    :goto_14
    move-object/from16 v9, v16

    goto :goto_15

    :cond_19
    sget-object v16, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_MINER_INFIAR:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    goto :goto_14

    :cond_1a
    sget-object v16, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_MINER_TENSOR:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    goto :goto_14

    :cond_1b
    sget-object v16, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_MINER_MATRIX:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    goto :goto_14

    :cond_1c
    sget-object v16, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_MINER_VECTOR:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    goto :goto_14

    :cond_1d
    sget-object v16, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->BUILD_MINER_SCALAR:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    goto :goto_14

    :goto_15
    new-instance v14, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v15, v9}, Lcom/prineside/tdi2/managers/SettingsManager;->getHotKey(Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;)[I

    move-result-object v9

    const/high16 v15, 0x41400000    # 12.0f

    move/from16 v16, v1

    const/high16 v1, 0x42cc0000    # 102.0f

    move-object/from16 v17, v3

    const/16 v3, 0x8

    invoke-direct {v14, v9, v15, v1, v3}, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;-><init>([IFFI)V

    invoke-virtual {v10, v14}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_16

    :cond_1e
    move/from16 v16, v1

    move-object/from16 v17, v3

    :goto_16
    const/4 v1, 0x1

    add-int/2addr v5, v1

    const/4 v3, 0x4

    if-gt v5, v3, :cond_1f

    const/high16 v3, 0x42200000    # 40.0f

    invoke-virtual {v12, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    goto :goto_17

    :cond_1f
    const/high16 v3, 0x42200000    # 40.0f

    :goto_17
    rem-int/lit8 v9, v5, 0x4

    if-ne v9, v1, :cond_20

    invoke-virtual {v12, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    :cond_20
    if-nez v9, :cond_21

    invoke-virtual {v12, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->row()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    :cond_21
    add-int/lit8 v1, v5, -0x1

    const/4 v3, 0x4

    div-int/2addr v1, v3

    const/4 v9, 0x1

    add-int/2addr v1, v9

    if-ne v1, v4, :cond_22

    sub-float v1, v6, v7

    const/high16 v10, 0x42200000    # 40.0f

    invoke-static {v1, v10}, Ljava/lang/StrictMath;->max(FF)F

    move-result v1

    invoke-virtual {v12, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    goto :goto_18

    :cond_22
    const/high16 v10, 0x42200000    # 40.0f

    :goto_18
    add-int/lit8 v11, v11, 0x1

    move/from16 v1, v16

    move-object/from16 v3, v17

    goto/16 :goto_13

    :cond_23
    move-object/from16 v13, p2

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->c0:Lcom/prineside/tdi2/ui/components/BuildMenu$_SideMenuListener;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/ui/actors/SideMenu;->addListener(Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuListener;)V

    iget-object v1, v13, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->Z:Lcom/prineside/tdi2/ui/components/BuildMenu$_TowerSystemListener;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object v1, v13, Lcom/prineside/tdi2/GameSystemProvider;->miner:Lcom/prineside/tdi2/systems/MinerSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/MinerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->a0:Lcom/prineside/tdi2/ui/components/BuildMenu$_MinerSystemListener;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object v1, v13, Lcom/prineside/tdi2/GameSystemProvider;->modifier:Lcom/prineside/tdi2/systems/ModifierSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/ModifierSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->b0:Lcom/prineside/tdi2/ui/components/BuildMenu$_ModifierSystemListener;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object v1, v13, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->d0:Lcom/prineside/tdi2/ui/components/BuildMenu$_Game_StateSystemListener;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object v1, v13, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->e0:Lcom/prineside/tdi2/ui/components/BuildMenu$_MapSystemListener;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->r:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;->hide()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public static synthetic a()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->f0:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public static synthetic b()Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->m0:Lcom/badlogic/gdx/utils/StringBuilder;

    return-object v0
.end method

.method public static synthetic c()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->k0:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public static synthetic d()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->j0:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public static synthetic e()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->i0:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public static synthetic f()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->l0:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public static synthetic g()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->g0:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public static synthetic h()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->h0:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public static synthetic i(Lcom/prineside/tdi2/ui/components/BuildMenu;)Lcom/prineside/tdi2/GameSystemProvider;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->Y:Lcom/prineside/tdi2/GameSystemProvider;

    return-object p0
.end method

.method public static synthetic j(Lcom/prineside/tdi2/ui/components/BuildMenu;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/components/BuildMenu;->y(Z)V

    return-void
.end method

.method public static synthetic k(Lcom/prineside/tdi2/ui/components/BuildMenu;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/BuildMenu;->t()V

    return-void
.end method

.method public static synthetic l(Lcom/prineside/tdi2/ui/components/BuildMenu;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/BuildMenu;->C()V

    return-void
.end method

.method public static synthetic m(Lcom/prineside/tdi2/ui/components/BuildMenu;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/BuildMenu;->B()V

    return-void
.end method

.method public static synthetic n(Lcom/prineside/tdi2/ui/components/BuildMenu;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/BuildMenu;->A()V

    return-void
.end method

.method public static synthetic o(Lcom/prineside/tdi2/ui/components/BuildMenu;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/components/BuildMenu;->w(Z)V

    return-void
.end method

.method public static synthetic p(Lcom/prineside/tdi2/ui/components/BuildMenu;Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/components/BuildMenu;->u(Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;)V

    return-void
.end method

.method public static synthetic q(Lcom/prineside/tdi2/ui/components/BuildMenu;)Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->T:Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;

    return-object p0
.end method

.method public static synthetic r(Lcom/prineside/tdi2/ui/components/BuildMenu;Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/components/BuildMenu;->x(Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;)V

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->A:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->Y:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/TowerSystem;->getDefaultAimStrategy()Lcom/prineside/tdi2/Tower$AimStrategy;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/TowerManager;->getAimStrategyName(Lcom/prineside/tdi2/Tower$AimStrategy;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->y:Lcom/prineside/tdi2/ui/actors/AimStrategySelector;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->Y:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/TowerSystem;->getDefaultAimStrategy()Lcom/prineside/tdi2/Tower$AimStrategy;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;->setStrategy(Lcom/prineside/tdi2/Tower$AimStrategy;ZZ)V

    return-void
.end method

.method public final B()V
    .locals 10

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->Y:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/GameStateSystem;->getMoney()I

    move-result v0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->b:Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;

    sget-object v2, Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;->TOWERS:Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_6

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ProgressManager;->areModifiersOpened()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v2, Lcom/prineside/tdi2/enums/ModifierType;->values:[Lcom/prineside/tdi2/enums/ModifierType;

    array-length v5, v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v2, v6

    iget-object v8, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->Y:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v8, v8, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->modifierManager:Lcom/prineside/tdi2/managers/ModifierManager;

    invoke-virtual {v9, v7}, Lcom/prineside/tdi2/managers/ModifierManager;->getCountGameValue(Lcom/prineside/tdi2/enums/ModifierType;)Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result v7

    if-lez v7, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->x:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->x:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->getIcon()Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->MODIFIER_TAB_HINT_SHOWN:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmpl-double v7, v1, v5

    if-nez v7, :cond_2

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->x:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->getIcon()Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v1

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P800:Lcom/badlogic/gdx/graphics/Color;

    const v5, 0x3ecccccd    # 0.4f

    invoke-static {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->color(Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;

    move-result-object v2

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P600:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->color(Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v2

    invoke-static {v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->forever(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->x:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->updateColors()V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->x:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :goto_2
    sget-object v1, Lcom/prineside/tdi2/enums/TowerType;->values:[Lcom/prineside/tdi2/enums/TowerType;

    array-length v2, v1

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v2, :cond_11

    aget-object v6, v1, v5

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    invoke-virtual {v7, v6}, Lcom/prineside/tdi2/managers/TowerManager;->getFactory(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/Tower$Factory;

    move-result-object v7

    iget-object v8, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->Y:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/Tower$Factory;->getBuildPrice(Lcom/prineside/tdi2/GameSystemProvider;)I

    move-result v7

    iget-object v8, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->V:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v8, v6}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;

    if-nez v8, :cond_4

    goto :goto_5

    :cond_4
    invoke-virtual {v8, v7}, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->setPrice(I)V

    if-ge v0, v7, :cond_5

    invoke-virtual {v8, v3}, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->u(Z)V

    goto :goto_4

    :cond_5
    invoke-virtual {v8, v4}, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->u(Z)V

    :goto_4
    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    invoke-virtual {v7, v6}, Lcom/prineside/tdi2/managers/TowerManager;->getFactory(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/Tower$Factory;

    move-result-object v6

    iget-object v7, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->Y:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v7, v7, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/Tower$Factory;->isAvailable(Lcom/prineside/tdi2/GameValueProvider;)Z

    move-result v6

    invoke-virtual {v8, v6}, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->t(Z)V

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    sget-object v2, Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;->MINERS:Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;

    if-ne v1, v2, :cond_c

    sget-object v1, Lcom/prineside/tdi2/enums/MinerType;->values:[Lcom/prineside/tdi2/enums/MinerType;

    array-length v2, v1

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v2, :cond_11

    aget-object v6, v1, v5

    iget-object v7, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->Y:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v7, v7, Lcom/prineside/tdi2/GameSystemProvider;->miner:Lcom/prineside/tdi2/systems/MinerSystem;

    invoke-virtual {v7, v6}, Lcom/prineside/tdi2/systems/MinerSystem;->getBuildPrice(Lcom/prineside/tdi2/enums/MinerType;)I

    move-result v7

    iget-object v8, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->X:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v8, v6}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;

    if-nez v8, :cond_7

    goto :goto_a

    :cond_7
    invoke-virtual {v8, v7}, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->setPrice(I)V

    iget-object v9, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->Y:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v9, v9, Lcom/prineside/tdi2/GameSystemProvider;->miner:Lcom/prineside/tdi2/systems/MinerSystem;

    invoke-virtual {v9, v6}, Lcom/prineside/tdi2/systems/MinerSystem;->getBuildableMinersCount(Lcom/prineside/tdi2/enums/MinerType;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->setCount(I)V

    iget-object v9, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->Y:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v9, v9, Lcom/prineside/tdi2/GameSystemProvider;->miner:Lcom/prineside/tdi2/systems/MinerSystem;

    invoke-virtual {v9, v6}, Lcom/prineside/tdi2/systems/MinerSystem;->getMaxMinersCount(Lcom/prineside/tdi2/enums/MinerType;)I

    move-result v9

    if-eqz v9, :cond_8

    const/4 v9, 0x1

    goto :goto_7

    :cond_8
    const/4 v9, 0x0

    :goto_7
    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->t(Z)V

    if-lt v0, v7, :cond_a

    invoke-static {v8}, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->p(Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;)I

    move-result v7

    if-nez v7, :cond_9

    goto :goto_8

    :cond_9
    invoke-virtual {v8, v4}, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->u(Z)V

    goto :goto_9

    :cond_a
    :goto_8
    invoke-virtual {v8, v3}, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->u(Z)V

    :goto_9
    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->minerManager:Lcom/prineside/tdi2/managers/MinerManager;

    iget-object v9, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->Y:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v9, v9, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    invoke-virtual {v7, v6, v9}, Lcom/prineside/tdi2/managers/MinerManager;->isMinerOpened(Lcom/prineside/tdi2/enums/MinerType;Lcom/prineside/tdi2/GameValueProvider;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v8, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_a

    :cond_b
    invoke-virtual {v8, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :goto_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_c
    sget-object v2, Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;->MODIFIERS:Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;

    if-ne v1, v2, :cond_11

    sget-object v1, Lcom/prineside/tdi2/enums/ModifierType;->values:[Lcom/prineside/tdi2/enums/ModifierType;

    array-length v2, v1

    const/4 v5, 0x0

    :goto_b
    if-ge v5, v2, :cond_11

    aget-object v6, v1, v5

    iget-object v7, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->Y:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v7, v7, Lcom/prineside/tdi2/GameSystemProvider;->modifier:Lcom/prineside/tdi2/systems/ModifierSystem;

    invoke-virtual {v7, v6}, Lcom/prineside/tdi2/systems/ModifierSystem;->getBuildPrice(Lcom/prineside/tdi2/enums/ModifierType;)I

    move-result v7

    iget-object v8, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->W:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v8, v6}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;

    if-nez v8, :cond_d

    goto :goto_f

    :cond_d
    invoke-virtual {v8, v7}, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->setPrice(I)V

    iget-object v9, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->Y:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v9, v9, Lcom/prineside/tdi2/GameSystemProvider;->modifier:Lcom/prineside/tdi2/systems/ModifierSystem;

    invoke-virtual {v9, v6}, Lcom/prineside/tdi2/systems/ModifierSystem;->getBuildableModifiersCount(Lcom/prineside/tdi2/enums/ModifierType;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->setCount(I)V

    iget-object v9, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->Y:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v9, v9, Lcom/prineside/tdi2/GameSystemProvider;->modifier:Lcom/prineside/tdi2/systems/ModifierSystem;

    invoke-virtual {v9, v6}, Lcom/prineside/tdi2/systems/ModifierSystem;->getMaxModifiersCount(Lcom/prineside/tdi2/enums/ModifierType;)I

    move-result v9

    if-eqz v9, :cond_e

    const/4 v9, 0x1

    goto :goto_c

    :cond_e
    const/4 v9, 0x0

    :goto_c
    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->t(Z)V

    if-lt v0, v7, :cond_10

    invoke-static {v8}, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->p(Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;)I

    move-result v7

    if-nez v7, :cond_f

    goto :goto_d

    :cond_f
    invoke-virtual {v8, v4}, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->u(Z)V

    goto :goto_e

    :cond_10
    :goto_d
    invoke-virtual {v8, v3}, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->u(Z)V

    :goto_e
    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->modifierManager:Lcom/prineside/tdi2/managers/ModifierManager;

    invoke-virtual {v7, v6}, Lcom/prineside/tdi2/managers/ModifierManager;->getFactory(Lcom/prineside/tdi2/enums/ModifierType;)Lcom/prineside/tdi2/Modifier$Factory;

    move-result-object v6

    iget-object v7, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->Y:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v7, v7, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/Modifier$Factory;->isAvailable(Lcom/prineside/tdi2/GameValueProvider;)Z

    move-result v6

    invoke-virtual {v8, v6}, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->t(Z)V

    :goto_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_11
    return-void
.end method

.method public final C()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->a:Lcom/prineside/tdi2/ui/actors/SideMenu;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/actors/SideMenu;->isOffscreen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->U:Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/BuildMenu;->D()V

    return-void
.end method

.method public final D()V
    .locals 8

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->Y:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->hideTowerRangeHint()V

    sget-object v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->n0:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectSet;->clear()V

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->U:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->T:Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->T:Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;

    sget-object v2, Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;->TOWERS:Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->Y:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getSelectedTile()Lcom/prineside/tdi2/Tile;

    move-result-object v0

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->T:Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;

    iget-object v3, v3, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->U:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/TowerManager;->getFactory(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/Tower$Factory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/tdi2/Tower$Factory;->create()Lcom/prineside/tdi2/Tower;

    move-result-object v2

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->Y:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/Tower;->setRegistered(Lcom/prineside/tdi2/GameSystemProvider;)V

    iget-object v3, v0, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v4, Lcom/prineside/tdi2/enums/TileType;->PLATFORM:Lcom/prineside/tdi2/enums/TileType;

    if-ne v3, v4, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/prineside/tdi2/tiles/PlatformTile;

    iget-object v4, v3, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-nez v4, :cond_0

    iget v4, v2, Lcom/prineside/tdi2/Tower;->rangeInPixels:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/Tower;->setTile(Lcom/prineside/tdi2/tiles/PlatformTile;)V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->Y:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v5, v2, Lcom/prineside/tdi2/Tower;->minRangeInPixels:F

    iget v6, v2, Lcom/prineside/tdi2/Tower;->rangeInPixels:F

    invoke-virtual {v3, v4, v0, v5, v6}, Lcom/prineside/tdi2/systems/MapSystem;->showTowerRangeHint(FFFF)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/prineside/tdi2/Tower;->setTile(Lcom/prineside/tdi2/tiles/PlatformTile;)V

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/enums/SpaceTileBonusType;->values:[Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v7, v2, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/TowerManager;->getFactory(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/Tower$Factory;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/prineside/tdi2/Tower$Factory;->receivesSpaceTileBonus(Lcom/prineside/tdi2/enums/SpaceTileBonusType;)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/prineside/tdi2/ui/components/BuildMenu;->n0:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/prineside/tdi2/Tower;->setUnregistered()V

    :cond_3
    sget-object v0, Lcom/prineside/tdi2/ui/components/BuildMenu;->n0:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectSet;->iterator()Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    iget-object v5, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->Y:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->_mapRendering:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    iget-object v5, v5, Lcom/prineside/tdi2/systems/MapRenderingSystem;->spaceTileBonusesToDrawColoredOnFreeTiles:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/utils/ObjectSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->Y:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->_mapRendering:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    iget-object v2, v2, Lcom/prineside/tdi2/systems/MapRenderingSystem;->spaceTileBonusesToDrawColoredOnFreeTiles:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->Y:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_mapRendering:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/MapRenderingSystem;->spaceTileBonusesToDrawColoredOnFreeTiles:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectSet;->iterator()Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->iterator()Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    move-result-object v3

    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    sget-object v6, Lcom/prineside/tdi2/ui/components/BuildMenu;->n0:Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/utils/ObjectSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->remove()V

    const/4 v2, 0x1

    goto :goto_2

    :cond_7
    if-eqz v2, :cond_8

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->Y:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_mapRendering:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->forceTilesRedraw(Z)V

    :cond_8
    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/BuildMenu;->s()V

    return-void
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public postSetup()V
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/BuildMenu;->B()V

    sget-object v0, Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;->TOWERS:Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/ui/components/BuildMenu;->u(Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/BuildMenu;->A()V

    return-void
.end method

.method public final s()V
    .locals 8

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->F:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->E:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->H:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->U:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v3, 0x3dcccccd    # 0.1f

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    iget-boolean v5, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->I:Z

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->F:Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v6, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->childrenOnly:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v5, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->F:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v5, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/SettingsManager;->isUiAnimationsEnabled()Z

    move-result v5

    const/high16 v6, 0x43280000    # 168.0f

    const/high16 v7, -0x3cf40000    # -140.0f

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->F:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-static {v7, v6, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->F:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->F:Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v6, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/SettingsManager;->isUiAnimationsEnabled()Z

    move-result v5

    const/high16 v6, 0x43160000    # 150.0f

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->F:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-static {v4, v6, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v3

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->hide()Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->F:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->F:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :goto_2
    const v3, 0x3e19999a    # 0.15f

    const/high16 v5, 0x43560000    # 214.0f

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->I:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->E:Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->E:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isUiAnimationsEnabled()Z

    move-result v0

    const/high16 v1, -0x3c140000    # -472.0f

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->E:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-static {v1, v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->E:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->E:Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->isUiAnimationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->E:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-static {v4, v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v1

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->hide()Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->E:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->E:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :goto_3
    return-void
.end method

.method public final t()V
    .locals 6

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->Y:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getSelectedTile()Lcom/prineside/tdi2/Tile;

    move-result-object v0

    if-eqz v0, :cond_7

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->minerManager:Lcom/prineside/tdi2/managers/MinerManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/MinerManager;->minersAndEnergyAvailable()Z

    move-result v1

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->Y:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->MINER_COUNT_SCALAR:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->Y:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v4, Lcom/prineside/tdi2/enums/GameValueType;->MINER_COUNT_VECTOR:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->Y:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v4, Lcom/prineside/tdi2/enums/GameValueType;->MINER_COUNT_MATRIX:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->Y:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v4, Lcom/prineside/tdi2/enums/GameValueType;->MINER_COUNT_TENSOR:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->Y:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v4, Lcom/prineside/tdi2/enums/GameValueType;->MINER_COUNT_INFIAR:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/systems/GameValueSystem;->getIntValue(Lcom/prineside/tdi2/enums/GameValueType;)I

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    iget-object v2, v0, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v4, Lcom/prineside/tdi2/enums/TileType;->SOURCE:Lcom/prineside/tdi2/enums/TileType;

    const/4 v5, 0x0

    if-ne v2, v4, :cond_2

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "unknown"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v2, "description_not_available"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/ui/components/BuildMenu;->u(Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Lcom/prineside/tdi2/utils/StringFormatter;->toUpperCase(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tile;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v2, Lcom/prineside/tdi2/enums/TileType;->PLATFORM:Lcom/prineside/tdi2/enums/TileType;

    if-ne v1, v2, :cond_5

    check-cast v0, Lcom/prineside/tdi2/tiles/PlatformTile;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->b:Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;

    sget-object v2, Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;->TOWERS:Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;

    if-eq v1, v2, :cond_3

    sget-object v4, Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;->MODIFIERS:Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;

    if-eq v1, v4, :cond_3

    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/ui/components/BuildMenu;->u(Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;)V

    :cond_3
    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->z:Lcom/prineside/tdi2/ui/components/TileResources;

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    iget-object v1, v0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    if-eqz v1, :cond_4

    iget v1, v0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    if-lez v1, :cond_4

    new-instance v1, Lcom/prineside/tdi2/ui/actors/EffectTooltip;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    iget-object v3, v0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    invoke-static {v3}, Lcom/prineside/tdi2/SpaceTileBonus;->getIconName(Lcom/prineside/tdi2/enums/SpaceTileBonusType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    iget-object v3, v0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    iget v4, v0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    invoke-static {v3, v4}, Lcom/prineside/tdi2/SpaceTileBonus;->getDetailedName(Lcom/prineside/tdi2/enums/SpaceTileBonusType;I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/prineside/tdi2/ui/actors/EffectTooltip;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/CharSequence;)V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "tile_effect"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ui/actors/EffectTooltip;->setHint(Ljava/lang/CharSequence;)Lcom/prineside/tdi2/ui/actors/EffectTooltip;

    iget-object v0, v0, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    invoke-static {v0}, Lcom/prineside/tdi2/SpaceTileBonus;->getBrightColor(Lcom/prineside/tdi2/enums/SpaceTileBonusType;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/ui/actors/EffectTooltip;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    :cond_4
    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/BuildMenu;->D()V

    goto :goto_0

    :cond_5
    if-ne v1, v4, :cond_7

    check-cast v0, Lcom/prineside/tdi2/tiles/SourceTile;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->b:Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;

    sget-object v2, Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;->MINERS:Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;

    if-eq v1, v2, :cond_6

    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/ui/components/BuildMenu;->u(Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;)V

    :cond_6
    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->z:Lcom/prineside/tdi2/ui/components/TileResources;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->z:Lcom/prineside/tdi2/ui/components/TileResources;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/ui/components/TileResources;->setTile(Lcom/prineside/tdi2/tiles/SourceTile;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/BuildMenu;->D()V

    :cond_7
    :goto_0
    return-void
.end method

.method public final u(Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;)V
    .locals 8

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->t:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->u:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->B:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->C:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->D:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    sget-object v0, Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;->TOWERS:Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->B:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;->MODIFIERS:Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->t:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->C:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v3, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->MODIFIER_TAB_HINT_SHOWN:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v0, v3}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v0, v4, v6

    if-nez v0, :cond_2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v3, v4, v5}, Lcom/prineside/tdi2/managers/SettingsManager;->setCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;D)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;->MINERS:Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->u:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->D:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->v:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    if-eqz p1, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->b:Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/components/BuildMenu;->x(Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/BuildMenu;->B()V

    return-void
.end method

.method public final v(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->H:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->H:Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/BuildMenu;->s()V

    :cond_0
    return-void
.end method

.method public final w(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->I:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->I:Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/BuildMenu;->s()V

    :cond_0
    return-void
.end method

.method public final x(Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->T:Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->setSelected(Z)V

    :cond_0
    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->T:Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->setSelected(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/BuildMenu;->D()V

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->T:Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/components/BuildMenu;->z(Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;)V

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/ui/components/BuildMenu;->v(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/ui/components/BuildMenu;->v(Z)V

    :goto_0
    return-void
.end method

.method public final y(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->d:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->d:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/BuildMenu;->B()V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->r:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;->show()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->r:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;->hide()V

    :goto_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/BuildMenu;->C()V

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->r:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->Y:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getSelectedTile()Lcom/prineside/tdi2/Tile;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;->setLabelOverTitleTilePos(Lcom/prineside/tdi2/Tile;)V

    return-void
.end method

.method public final z(Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->G:Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;

    if-eq v0, p1, :cond_b

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->L:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->M:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->N:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p1, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->T:Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;

    sget-object v2, Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;->TOWERS:Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->L:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v2, p1, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->U:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/managers/TowerManager;->getFactory(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/Tower$Factory;

    move-result-object v0

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->J:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tower$Factory;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->K:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tower$Factory;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->L:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    sget-object v2, Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;->values:[Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;

    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v2, v5

    invoke-virtual {v0, v6}, Lcom/prineside/tdi2/Tower$Factory;->getGeneralizedStat(Lcom/prineside/tdi2/enums/GeneralizedTowerStatType;)I

    move-result v7

    const/4 v8, 0x0

    :goto_1
    const/4 v9, 0x5

    if-ge v8, v9, :cond_2

    iget-object v9, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->Q:[[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget-object v9, v9, v10

    aget-object v9, v9, v8

    add-int/lit8 v8, v8, 0x1

    if-gt v8, v7, :cond_1

    const/4 v10, 0x1

    goto :goto_2

    :cond_1
    const/4 v10, 0x0

    :goto_2
    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/prineside/tdi2/enums/EnemyType;->mainEnemyTypes:[Lcom/prineside/tdi2/enums/EnemyType;

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_3
    if-ge v3, v2, :cond_a

    aget-object v5, v0, v3

    iget-object v5, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->S:[Lcom/prineside/tdi2/Enemy;

    aget-object v5, v5, v4

    iget-object v6, p1, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->U:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/Enemy;->getTowerDamageMultiplier(Lcom/prineside/tdi2/enums/TowerType;)F

    move-result v5

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float v5, v5, v6

    float-to-int v5, v5

    sget-object v6, Lcom/prineside/tdi2/ui/components/BuildMenu;->m0:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v7, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->R:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v7, v7, v4

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    if-gtz v5, :cond_4

    iget-object v5, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->R:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v5, v5, v4

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_4

    :cond_4
    const/16 v6, 0x64

    if-ge v5, v6, :cond_5

    iget-object v5, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->R:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v5, v5, v4

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P600:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_4

    :cond_5
    if-le v5, v6, :cond_6

    iget-object v5, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->R:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v5, v5, v4

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_4

    :cond_6
    iget-object v5, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->R:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    aget-object v5, v5, v4

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$YELLOW;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_4
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    sget-object v2, Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;->MINERS:Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;

    if-ne v0, v2, :cond_9

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->minerManager:Lcom/prineside/tdi2/managers/MinerManager;

    iget-object v2, p1, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->V:Lcom/prineside/tdi2/enums/MinerType;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/managers/MinerManager;->getFactory(Lcom/prineside/tdi2/enums/MinerType;)Lcom/prineside/tdi2/Miner$Factory;

    move-result-object v0

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->J:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Miner$Factory;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->K:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Miner$Factory;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->M:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    sget-object v2, Lcom/prineside/tdi2/enums/ResourceType;->values:[Lcom/prineside/tdi2/enums/ResourceType;

    array-length v4, v2

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v4, :cond_a

    aget-object v6, v2, v5

    invoke-virtual {v0, v6}, Lcom/prineside/tdi2/Miner$Factory;->canMineResource(Lcom/prineside/tdi2/enums/ResourceType;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->O:[Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v7, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v7, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->P:[Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget-object v7, v7, v8

    iget-object v8, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->Y:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v8, v8, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    invoke-virtual {v0, v6, v8}, Lcom/prineside/tdi2/Miner$Factory;->getBaseMiningSpeed(Lcom/prineside/tdi2/enums/ResourceType;Lcom/prineside/tdi2/GameValueProvider;)F

    move-result v6

    float-to-double v8, v6

    invoke-static {v8, v9, v3}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_8
    iget-object v7, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->O:[Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-object v6, v7, v6

    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_9
    sget-object v1, Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;->MODIFIERS:Lcom/prineside/tdi2/ui/components/BuildMenu$TabType;

    if-ne v0, v1, :cond_a

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->modifierManager:Lcom/prineside/tdi2/managers/ModifierManager;

    iget-object v1, p1, Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;->W:Lcom/prineside/tdi2/enums/ModifierType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/ModifierManager;->getFactory(Lcom/prineside/tdi2/enums/ModifierType;)Lcom/prineside/tdi2/Modifier$Factory;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->J:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Modifier$Factory;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->K:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->Y:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/Modifier$Factory;->getDescription(Lcom/prineside/tdi2/GameValueProvider;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->N:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :cond_a
    iput-object p1, p0, Lcom/prineside/tdi2/ui/components/BuildMenu;->G:Lcom/prineside/tdi2/ui/components/BuildMenu$BuildButton;

    :cond_b
    return-void
.end method
