.class public Lcom/prineside/tdi2/ui/components/TowerMenu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;,
        Lcom/prineside/tdi2/ui/components/TowerMenu$_SideMenuListener;,
        Lcom/prineside/tdi2/ui/components/TowerMenu$_Game_StateSystemListener;,
        Lcom/prineside/tdi2/ui/components/TowerMenu$_MapSystemListener;,
        Lcom/prineside/tdi2/ui/components/TowerMenu$_TowerSystemListener;
    }
.end annotation


# static fields
.field public static final g0:Lcom/badlogic/gdx/math/Rectangle;

.field public static final h0:Lcom/badlogic/gdx/math/Rectangle;

.field public static final i0:Lcom/badlogic/gdx/utils/StringBuilder;

.field public static final j0:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field public final A:Lcom/prineside/tdi2/ui/actors/AimStrategySelector;

.field public final B:Lcom/prineside/tdi2/ui/actors/ComplexButton;

.field public final C:Lcom/prineside/tdi2/ui/components/SellButton;

.field public final D:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public final E:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public F:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field public G:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public H:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public I:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public J:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public K:F

.field public L:F

.field public M:F

.field public N:I

.field public O:Z

.field public P:Z

.field public Q:Z

.field public R:I

.field public S:F

.field public T:Z

.field public U:I

.field public V:Z

.field public W:Z

.field public X:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public Y:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public Z:Lcom/badlogic/gdx/InputProcessor;

.field public final a:Lcom/prineside/tdi2/ui/actors/SideMenu;

.field public a0:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public final b:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

.field public final b0:Lcom/prineside/tdi2/GameSystemProvider;

.field public final c0:Lcom/prineside/tdi2/ui/components/TowerMenu$_SideMenuListener;

.field public final d:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final d0:Lcom/prineside/tdi2/ui/components/TowerMenu$_Game_StateSystemListener;

.field public final e0:Lcom/prineside/tdi2/ui/components/TowerMenu$_MapSystemListener;

.field public final f0:Lcom/prineside/tdi2/ui/components/TowerMenu$_TowerSystemListener;

.field public final k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final r:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final s:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final t:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field public final u:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final v:Lcom/prineside/tdi2/ui/actors/ExpLine;

.field public final w:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final x:[Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;

.field public final y:[Lcom/prineside/tdi2/ui/components/TowerAbilityButton;

.field public final z:Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    const/high16 v1, 0x42200000    # 40.0f

    const/high16 v2, 0x43510000    # 209.0f

    const/high16 v3, 0x44020000    # 520.0f

    const/high16 v4, 0x42840000    # 66.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    sput-object v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->g0:Lcom/badlogic/gdx/math/Rectangle;

    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    const v2, 0x439f8000    # 319.0f

    const/high16 v4, 0x43170000    # 151.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    sput-object v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->h0:Lcom/badlogic/gdx/math/Rectangle;

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->i0:Lcom/badlogic/gdx/utils/StringBuilder;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->j0:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/ui/actors/SideMenu;Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v3, 0x8

    new-array v4, v3, [Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;

    iput-object v4, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->x:[Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;

    const/4 v4, 0x6

    new-array v4, v4, [Lcom/prineside/tdi2/ui/components/TowerAbilityButton;

    iput-object v4, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->y:[Lcom/prineside/tdi2/ui/components/TowerAbilityButton;

    const/4 v4, -0x1

    iput v4, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->R:I

    const/4 v4, 0x0

    iput v4, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->S:F

    const/4 v5, -0x1

    iput v5, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->U:I

    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->W:Z

    new-instance v6, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v6}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v6, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->X:Lcom/badlogic/gdx/utils/ObjectMap;

    new-instance v6, Lcom/prineside/tdi2/ui/components/TowerMenu$_SideMenuListener;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7}, Lcom/prineside/tdi2/ui/components/TowerMenu$_SideMenuListener;-><init>(Lcom/prineside/tdi2/ui/components/TowerMenu;Lcom/prineside/tdi2/ui/components/TowerMenu$1;)V

    iput-object v6, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->c0:Lcom/prineside/tdi2/ui/components/TowerMenu$_SideMenuListener;

    new-instance v6, Lcom/prineside/tdi2/ui/components/TowerMenu$_Game_StateSystemListener;

    invoke-direct {v6, v0, v7}, Lcom/prineside/tdi2/ui/components/TowerMenu$_Game_StateSystemListener;-><init>(Lcom/prineside/tdi2/ui/components/TowerMenu;Lcom/prineside/tdi2/ui/components/TowerMenu$1;)V

    iput-object v6, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->d0:Lcom/prineside/tdi2/ui/components/TowerMenu$_Game_StateSystemListener;

    new-instance v6, Lcom/prineside/tdi2/ui/components/TowerMenu$_MapSystemListener;

    invoke-direct {v6, v0, v7}, Lcom/prineside/tdi2/ui/components/TowerMenu$_MapSystemListener;-><init>(Lcom/prineside/tdi2/ui/components/TowerMenu;Lcom/prineside/tdi2/ui/components/TowerMenu$1;)V

    iput-object v6, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->e0:Lcom/prineside/tdi2/ui/components/TowerMenu$_MapSystemListener;

    new-instance v6, Lcom/prineside/tdi2/ui/components/TowerMenu$_TowerSystemListener;

    invoke-direct {v6, v0, v7}, Lcom/prineside/tdi2/ui/components/TowerMenu$_TowerSystemListener;-><init>(Lcom/prineside/tdi2/ui/components/TowerMenu;Lcom/prineside/tdi2/ui/components/TowerMenu$1;)V

    iput-object v6, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->f0:Lcom/prineside/tdi2/ui/components/TowerMenu$_TowerSystemListener;

    iput-object v2, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->b0:Lcom/prineside/tdi2/GameSystemProvider;

    iput-object v1, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->a:Lcom/prineside/tdi2/ui/actors/SideMenu;

    invoke-virtual/range {p1 .. p1}, Lcom/prineside/tdi2/ui/actors/SideMenu;->createContainer()Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    move-result-object v6

    iput-object v6, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->b:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v7}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v7

    add-int/lit16 v7, v7, -0x438

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {v8, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const/high16 v9, 0x44160000    # 600.0f

    const v10, 0x43a78000    # 335.0f

    invoke-virtual {v8, v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    int-to-float v7, v7

    const v10, 0x443a4000    # 745.0f

    add-float/2addr v10, v7

    invoke-virtual {v8, v4, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v13, 0x24

    invoke-virtual {v12, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v12

    sget-object v13, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v11, v12, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    const-string v12, ""

    invoke-direct {v10, v12, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v10, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v11, 0x44020000    # 520.0f

    const/high16 v14, 0x41d00000    # 26.0f

    invoke-virtual {v10, v11, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v15, 0x42200000    # 40.0f

    const/high16 v9, 0x43790000    # 249.0f

    invoke-virtual {v10, v15, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v8, v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v9, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->D:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const-string v10, "tower_menu_experience"

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    sget-object v10, Lcom/prineside/tdi2/ui/components/TowerMenu;->g0:Lcom/badlogic/gdx/math/Rectangle;

    iget v5, v10, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v11, v10, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-virtual {v9, v5, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget v5, v10, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v11, v10, Lcom/badlogic/gdx/math/Rectangle;->height:F

    invoke-virtual {v9, v5, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget v5, v10, Lcom/badlogic/gdx/math/Rectangle;->width:F

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v5, v11

    iget v10, v10, Lcom/badlogic/gdx/math/Rectangle;->height:F

    div-float/2addr v10, v11

    invoke-virtual {v9, v5, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOrigin(FF)V

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v3, 0x24

    invoke-virtual {v11, v3}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v3

    invoke-direct {v10, v3, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    const-string v3, "L10"

    invoke-direct {v5, v3, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v5, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v5, v15, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v3, 0x43f00000    # 480.0f

    invoke-virtual {v5, v3, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/16 v3, 0x10

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v9, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v5, Lcom/prineside/tdi2/ui/actors/ExpLine;

    invoke-direct {v5}, Lcom/prineside/tdi2/ui/actors/ExpLine;-><init>()V

    iput-object v5, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->v:Lcom/prineside/tdi2/ui/actors/ExpLine;

    invoke-virtual {v5, v4, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v9, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v14, 0x15

    invoke-virtual {v11, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v11

    invoke-direct {v10, v11, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v5, v12, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v5, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const v10, 0x3e8f5c29    # 0.28f

    invoke-virtual {v5, v4, v4, v4, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const/high16 v11, 0x431f0000    # 159.0f

    const/high16 v10, 0x41c00000    # 24.0f

    invoke-virtual {v5, v11, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v11, 0x41200000    # 10.0f

    invoke-virtual {v5, v11, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/16 v11, 0x8

    invoke-virtual {v5, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v9, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v15, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v15

    invoke-direct {v11, v15, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v5, v12, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v5, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v5, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v11, 0x431f0000    # 159.0f

    invoke-virtual {v5, v11, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v11, 0x41000000    # 8.0f

    invoke-virtual {v5, v11, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/16 v15, 0x8

    invoke-virtual {v5, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v9, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v11, 0x18

    invoke-virtual {v15, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v15

    const-string v11, "53 / 90 XP"

    invoke-direct {v5, v11, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v5, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v5, v4, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v11, 0x44020000    # 520.0f

    invoke-virtual {v5, v11, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v9, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v11, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v11

    const-string v15, "+0 XP/s"

    invoke-direct {v5, v15, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v5, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v11, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v11, -0x3e300000    # -26.0f

    invoke-virtual {v5, v4, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v11, 0x44020000    # 520.0f

    invoke-virtual {v5, v11, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v9, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->F:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const/high16 v5, 0x432c0000    # 172.0f

    const/high16 v9, 0x42200000    # 40.0f

    invoke-virtual {v3, v9, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->F:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v3, v11, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->F:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v8, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v9, "icon-mdps"

    invoke-virtual {v5, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$PURPLE;->P300:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v9, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->F:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v9, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v9, 0x41000000    # 8.0f

    invoke-virtual {v3, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v9, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v9

    const-string v11, "0"

    invoke-direct {v3, v11, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->G:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->F:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->G:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v15, "icon-skull-and-bones"

    invoke-virtual {v9, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v9

    invoke-direct {v3, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    sget-object v9, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P300:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v15, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->F:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v15, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v15, 0x41000000    # 8.0f

    invoke-virtual {v3, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v15, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v15

    invoke-direct {v3, v11, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->H:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v3, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->F:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v9, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->H:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v3, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v15, "icon-coin"

    invoke-virtual {v9, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v9

    invoke-direct {v3, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v9, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P300:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->F:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v15, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v3, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v15, 0x41000000    # 8.0f

    invoke-virtual {v3, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v15, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v15

    invoke-direct {v3, v11, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->J:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v3, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->F:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v9, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->J:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v3, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->F:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const/high16 v9, 0x42c60000    # 99.0f

    invoke-virtual {v3, v4, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v9, 0x42800000    # 64.0f

    const/high16 v10, 0x44160000    # 600.0f

    invoke-virtual {v3, v10, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v8, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v9, v9, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v10, "no_tile_effects"

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v15, 0x18

    invoke-virtual {v11, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v11

    invoke-direct {v10, v11, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v3, v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v9, 0x42e60000    # 115.0f

    invoke-virtual {v3, v4, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v9, 0x42800000    # 64.0f

    const/high16 v10, 0x44160000    # 600.0f

    invoke-virtual {v3, v10, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v8, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v8, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v8

    new-instance v10, Lcom/badlogic/gdx/graphics/Color;

    const v11, 0x3e8f5c29    # 0.28f

    invoke-direct {v10, v5, v5, v5, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-direct {v3, v8, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v10, v10, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v11, "characteristics"

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v10, 0x43160000    # 150.0f

    const/high16 v11, 0x41700000    # 15.0f

    invoke-virtual {v8, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v15, 0x44498000    # 806.0f

    add-float/2addr v15, v7

    const/high16 v9, 0x42200000    # 40.0f

    invoke-virtual {v8, v9, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    const/high16 v9, 0x41f00000    # 30.0f

    invoke-virtual {v8, v10, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v9, 0x44480000    # 800.0f

    add-float/2addr v9, v7

    const/high16 v15, 0x43cd0000    # 410.0f

    invoke-virtual {v8, v15, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v8, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v8

    invoke-virtual {v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v8

    invoke-virtual {v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->bottom()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v8

    invoke-virtual {v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->right()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v15, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v14

    invoke-direct {v9, v14, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    const-string v14, "PWR: "

    invoke-direct {v8, v14, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const v9, 0x3f0f5c29    # 0.56f

    invoke-virtual {v8, v5, v5, v5, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const/16 v9, 0x14

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v8

    const/high16 v9, 0x41f00000    # 30.0f

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v8

    invoke-virtual {v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->bottom()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v8

    invoke-virtual {v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->right()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v15, 0x18

    invoke-virtual {v14, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v14

    invoke-direct {v9, v14, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    const-string v13, "000"

    invoke-direct {v8, v13, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v8, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v9, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/16 v9, 0x14

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    const/high16 v8, 0x41f00000    # 30.0f

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->bottom()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->right()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    const/4 v6, 0x0

    :goto_0
    const/16 v8, 0x8

    if-ge v6, v8, :cond_0

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->x:[Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;

    new-instance v9, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;

    invoke-direct {v9, v0}, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;-><init>(Lcom/prineside/tdi2/ui/components/TowerMenu;)V

    aput-object v9, v8, v6

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->x:[Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;

    aget-object v8, v8, v6

    rem-int/lit8 v9, v6, 0x2

    int-to-float v9, v9

    const/high16 v13, 0x43830000    # 262.0f

    mul-float v9, v9, v13

    const/high16 v13, 0x42200000    # 40.0f

    add-float/2addr v9, v13

    const v13, 0x44354000    # 725.0f

    div-int/lit8 v14, v6, 0x2

    int-to-float v14, v14

    const/high16 v15, 0x42880000    # 68.0f

    mul-float v14, v14, v15

    sub-float/2addr v13, v14

    add-float/2addr v13, v7

    invoke-virtual {v8, v9, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->b:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    iget-object v9, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->x:[Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;

    aget-object v9, v9, v6

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v6, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->Y:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->Y:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v7, 0x43040000    # 132.0f

    const/high16 v8, 0x44160000    # 600.0f

    invoke-virtual {v6, v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->Y:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const v7, 0x44024000    # 521.0f

    invoke-virtual {v6, v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->Y:Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v7, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->childrenOnly:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->b:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->Y:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v6, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->E:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    sget-object v7, Lcom/prineside/tdi2/ui/components/TowerMenu;->h0:Lcom/badlogic/gdx/math/Rectangle;

    iget v8, v7, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v9, v7, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-virtual {v6, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget v8, v7, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v9, v7, Lcom/badlogic/gdx/math/Rectangle;->height:F

    invoke-virtual {v6, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget v8, v7, Lcom/badlogic/gdx/math/Rectangle;->width:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    iget v7, v7, Lcom/badlogic/gdx/math/Rectangle;->height:F

    div-float/2addr v7, v9

    invoke-virtual {v6, v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOrigin(FF)V

    const-string v7, "tower_menu_abilities"

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->b:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v8, v8, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v9, "abilities"

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v7, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-static {}, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7, v4, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    goto :goto_1

    :cond_1
    const/high16 v8, 0x43080000    # 136.0f

    invoke-virtual {v7, v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    :goto_1
    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 v7, 0x0

    :goto_2
    const/4 v6, 0x6

    if-ge v7, v6, :cond_9

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->y:[Lcom/prineside/tdi2/ui/components/TowerAbilityButton;

    new-instance v8, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;

    invoke-direct {v8, v7}, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;-><init>(I)V

    aput-object v8, v6, v7

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->y:[Lcom/prineside/tdi2/ui/components/TowerAbilityButton;

    aget-object v6, v6, v7

    int-to-float v8, v7

    const/high16 v9, 0x42b00000    # 88.0f

    mul-float v8, v8, v9

    const/high16 v9, 0x42180000    # 38.0f

    invoke-virtual {v6, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->E:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->y:[Lcom/prineside/tdi2/ui/components/TowerAbilityButton;

    aget-object v8, v8, v7

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->y:[Lcom/prineside/tdi2/ui/components/TowerAbilityButton;

    aget-object v6, v6, v7

    new-instance v8, Lcom/prineside/tdi2/ui/components/TowerMenu$1;

    invoke-direct {v8, v0, v2, v7}, Lcom/prineside/tdi2/ui/components/TowerMenu$1;-><init>(Lcom/prineside/tdi2/ui/components/TowerMenu;Lcom/prineside/tdi2/GameSystemProvider;I)V

    invoke-virtual {v6, v8}, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->addListener(Lcom/prineside/tdi2/ui/components/TowerAbilityButton$AbilityButtonListener;)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->y:[Lcom/prineside/tdi2/ui/components/TowerAbilityButton;

    aget-object v6, v6, v7

    new-instance v8, Lcom/prineside/tdi2/ui/components/TowerMenu$2;

    invoke-direct {v8, v0, v7}, Lcom/prineside/tdi2/ui/components/TowerMenu$2;-><init>(Lcom/prineside/tdi2/ui/components/TowerMenu;I)V

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-static {}, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_8

    sget-object v6, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->TOWER_ABILITY_1:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    if-eqz v7, :cond_7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_6

    const/4 v8, 0x2

    if-eq v7, v8, :cond_5

    const/4 v8, 0x3

    if-eq v7, v8, :cond_4

    const/4 v8, 0x4

    if-eq v7, v8, :cond_3

    const/4 v8, 0x5

    if-eq v7, v8, :cond_2

    goto :goto_3

    :cond_2
    sget-object v6, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->TOWER_ABILITY_6:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    goto :goto_3

    :cond_3
    sget-object v6, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->TOWER_ABILITY_5:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    goto :goto_3

    :cond_4
    sget-object v6, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->TOWER_ABILITY_4:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    goto :goto_3

    :cond_5
    sget-object v6, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->TOWER_ABILITY_3:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    goto :goto_3

    :cond_6
    sget-object v6, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->TOWER_ABILITY_2:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    :cond_7
    :goto_3
    new-instance v8, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v9, v6}, Lcom/prineside/tdi2/managers/SettingsManager;->getHotKey(Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;)[I

    move-result-object v6

    const/high16 v9, 0x42b40000    # 90.0f

    const/high16 v13, 0x42200000    # 40.0f

    invoke-direct {v8, v6, v13, v9}, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;-><init>([IFF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->y:[Lcom/prineside/tdi2/ui/components/TowerAbilityButton;

    aget-object v6, v6, v7

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_9
    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v8, "blank"

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v7, 0x43800000    # 256.0f

    const/high16 v8, 0x40800000    # 4.0f

    invoke-virtual {v6, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v7, 0x3e8f5c29    # 0.28f

    invoke-virtual {v6, v5, v5, v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const/high16 v7, 0x41d00000    # 26.0f

    invoke-virtual {v6, v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->E:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v8, 0x18

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v7

    const-string v8, "L4  /  L7"

    invoke-direct {v6, v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v7, 0x43800000    # 256.0f

    const/high16 v8, 0x41880000    # 17.0f

    invoke-virtual {v6, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v7, 0x3e8f5c29    # 0.28f

    invoke-virtual {v6, v5, v5, v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->E:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v8, "blank"

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v7, 0x42a00000    # 80.0f

    const/high16 v8, 0x40800000    # 4.0f

    invoke-virtual {v6, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v7, 0x3e8f5c29    # 0.28f

    invoke-virtual {v6, v5, v5, v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const/high16 v7, 0x43840000    # 264.0f

    const/high16 v8, 0x41d00000    # 26.0f

    invoke-virtual {v6, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->E:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v8, 0x18

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v7

    const-string v8, "L10"

    invoke-direct {v6, v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v7, 0x42a00000    # 80.0f

    const/high16 v8, 0x41880000    # 17.0f

    invoke-virtual {v6, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v7, 0x43840000    # 264.0f

    invoke-virtual {v6, v7, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const v7, 0x3e8f5c29    # 0.28f

    invoke-virtual {v6, v5, v5, v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->E:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v8, "blank"

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v7, 0x43280000    # 168.0f

    const/high16 v8, 0x40800000    # 4.0f

    invoke-virtual {v6, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v7, 0x3e8f5c29    # 0.28f

    invoke-virtual {v6, v5, v5, v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const/high16 v7, 0x43b00000    # 352.0f

    const/high16 v8, 0x41d00000    # 26.0f

    invoke-virtual {v6, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->E:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v8, 0x18

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v7

    const-string v8, "L20"

    invoke-direct {v6, v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v7, 0x43280000    # 168.0f

    const/high16 v8, 0x41880000    # 17.0f

    invoke-virtual {v6, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v7, 0x43b00000    # 352.0f

    invoke-virtual {v6, v7, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const v7, 0x3e8f5c29    # 0.28f

    invoke-virtual {v6, v5, v5, v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const/4 v5, 0x1

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->E:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const-string v6, "tower_menu_upgrade"

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const/high16 v6, 0x43960000    # 300.0f

    const/high16 v7, 0x44160000    # 600.0f

    invoke-virtual {v5, v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->b:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    invoke-virtual {v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v7, v7, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v8, "upgrade_level"

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v6, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v3, 0x43858000    # 267.0f

    const/high16 v7, 0x42200000    # 40.0f

    invoke-virtual {v6, v7, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;

    invoke-direct {v3}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;-><init>()V

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->z:Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;

    new-instance v6, Lcom/prineside/tdi2/ui/components/TowerMenu$3;

    invoke-direct {v6, v0, v2}, Lcom/prineside/tdi2/ui/components/TowerMenu$3;-><init>(Lcom/prineside/tdi2/ui/components/TowerMenu;Lcom/prineside/tdi2/GameSystemProvider;)V

    invoke-virtual {v3, v6}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->addListener(Lcom/prineside/tdi2/ui/components/UpgradeSubmenu$UpgradeSubmenuListener;)V

    const/high16 v6, 0x43040000    # 132.0f

    invoke-virtual {v3, v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v4, v3, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->upgradeButton:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const-string v6, "tower_menu_upgrade_button"

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;

    invoke-direct {v3}, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;-><init>()V

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->A:Lcom/prineside/tdi2/ui/actors/AimStrategySelector;

    const-string v4, "tower_menu_aim_strategy"

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    const/high16 v4, 0x42200000    # 40.0f

    invoke-virtual {v3, v4, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    new-instance v4, Lcom/prineside/tdi2/ui/components/TowerMenu$4;

    invoke-direct {v4, v0, v2}, Lcom/prineside/tdi2/ui/components/TowerMenu$4;-><init>(Lcom/prineside/tdi2/ui/components/TowerMenu;Lcom/prineside/tdi2/GameSystemProvider;)V

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;->addListener(Lcom/prineside/tdi2/ui/actors/AimStrategySelector$AimStrategySelectorListener;)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->b:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v5, 0x1e

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    new-instance v5, Lcom/prineside/tdi2/ui/components/TowerMenu$5;

    invoke-direct {v5, v0, v2}, Lcom/prineside/tdi2/ui/components/TowerMenu$5;-><init>(Lcom/prineside/tdi2/ui/components/TowerMenu;Lcom/prineside/tdi2/GameSystemProvider;)V

    invoke-direct {v3, v12, v4, v5}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->B:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v6, 0x42a00000    # 80.0f

    const/high16 v7, 0x41a00000    # 20.0f

    const/high16 v8, 0x43480000    # 200.0f

    const/high16 v9, 0x42200000    # 40.0f

    const/16 v10, 0x8

    move-object v5, v3

    invoke-virtual/range {v5 .. v10}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setLabel(FFFFI)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v4, v3, Lcom/prineside/tdi2/ui/actors/ComplexButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    iget-object v4, v3, Lcom/prineside/tdi2/ui/actors/ComplexButton;->icon:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v5, 0x42200000    # 40.0f

    invoke-virtual {v4, v5, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v4, v3, Lcom/prineside/tdi2/ui/actors/ComplexButton;->icon:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-virtual {v4, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v3, v5, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const v4, 0x439a8000    # 309.0f

    const/high16 v5, 0x42a00000    # 80.0f

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    new-instance v6, Lcom/prineside/tdi2/utils/QuadDrawable;

    new-instance v4, Lcom/prineside/tdi2/ui/actors/QuadActor;

    sget-object v5, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    const/16 v7, 0x8

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    invoke-direct {v4, v5, v7}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-direct {v6, v4}, Lcom/prineside/tdi2/utils/QuadDrawable;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x439a8000    # 309.0f

    const/high16 v10, 0x42a00000    # 80.0f

    move-object v5, v3

    invoke-virtual/range {v5 .. v10}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->b:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/prineside/tdi2/ui/components/SellButton;

    new-instance v4, Lcom/prineside/tdi2/ui/components/TowerMenu$6;

    invoke-direct {v4, v0, v2}, Lcom/prineside/tdi2/ui/components/TowerMenu$6;-><init>(Lcom/prineside/tdi2/ui/components/TowerMenu;Lcom/prineside/tdi2/GameSystemProvider;)V

    invoke-direct {v3, v4}, Lcom/prineside/tdi2/ui/components/SellButton;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->C:Lcom/prineside/tdi2/ui/components/SellButton;

    const-string v4, "tower_menu_sell_button"

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    const/high16 v4, 0x43b80000    # 368.0f

    const/high16 v5, 0x42200000    # 40.0f

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->b:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->c0:Lcom/prineside/tdi2/ui/components/TowerMenu$_SideMenuListener;

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/ui/actors/SideMenu;->addListener(Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuListener;)V

    iget-object v1, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->d0:Lcom/prineside/tdi2/ui/components/TowerMenu$_Game_StateSystemListener;

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object v1, v2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->e0:Lcom/prineside/tdi2/ui/components/TowerMenu$_MapSystemListener;

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object v1, v2, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/TowerSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->f0:Lcom/prineside/tdi2/ui/components/TowerMenu$_TowerSystemListener;

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->b:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;->hide()V

    new-instance v1, Lcom/prineside/tdi2/ui/components/TowerMenu$7;

    invoke-direct {v1, v0, v2}, Lcom/prineside/tdi2/ui/components/TowerMenu$7;-><init>(Lcom/prineside/tdi2/ui/components/TowerMenu;Lcom/prineside/tdi2/GameSystemProvider;)V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->Z:Lcom/badlogic/gdx/InputProcessor;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x42a00000    # 80.0f
        0x439a8000    # 309.0f
        0x42a00000    # 80.0f
        0x438d8000    # 283.0f
        0x0
    .end array-data
.end method

.method public static synthetic a(Lcom/prineside/tdi2/ui/components/TowerMenu;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/TowerMenu;->v()V

    return-void
.end method

.method public static synthetic b(Lcom/prineside/tdi2/ui/components/TowerMenu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->P:Z

    return p1
.end method

.method public static synthetic c(Lcom/prineside/tdi2/ui/components/TowerMenu;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/TowerMenu;->s()V

    return-void
.end method

.method public static synthetic d(Lcom/prineside/tdi2/ui/components/TowerMenu;)Lcom/prineside/tdi2/ui/actors/SideMenu;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->a:Lcom/prineside/tdi2/ui/actors/SideMenu;

    return-object p0
.end method

.method public static synthetic e(Lcom/prineside/tdi2/ui/components/TowerMenu;I)I
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->R:I

    return p1
.end method

.method public static synthetic f(Lcom/prineside/tdi2/ui/components/TowerMenu;)Lcom/prineside/tdi2/GameSystemProvider;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->b0:Lcom/prineside/tdi2/GameSystemProvider;

    return-object p0
.end method

.method public static synthetic g(Lcom/prineside/tdi2/ui/components/TowerMenu;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/components/TowerMenu;->q(Z)V

    return-void
.end method

.method public static synthetic h()Lcom/badlogic/gdx/utils/StringBuilder;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->i0:Lcom/badlogic/gdx/utils/StringBuilder;

    return-object v0
.end method

.method public static synthetic i(Lcom/prineside/tdi2/ui/components/TowerMenu;)Lcom/prineside/tdi2/Tower;
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/TowerMenu;->o()Lcom/prineside/tdi2/Tower;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lcom/prineside/tdi2/ui/components/TowerMenu;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/components/TowerMenu;->p(I)V

    return-void
.end method

.method public static synthetic k(Lcom/prineside/tdi2/ui/components/TowerMenu;)Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->z:Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;

    return-object p0
.end method

.method public static synthetic l(Lcom/prineside/tdi2/ui/components/TowerMenu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->O:Z

    return p1
.end method

.method public static synthetic m(Lcom/prineside/tdi2/ui/components/TowerMenu;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->V:Z

    return p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-wide v0, -0x404068db8bac710dL    # -0.1234

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic n()Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->j0:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method


# virtual methods
.method public cancelUsingCustomButton()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->b0:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_input:Lcom/prineside/tdi2/systems/InputSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/InputSystem;->enableAllInput()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->V:Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/TowerMenu;->s()V

    return-void
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public draw(F)V
    .locals 4

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/TowerMenu;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/TowerMenu;->o()Lcom/prineside/tdi2/Tower;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget v2, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->N:I

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tower;->getSellPrice()I

    move-result v3

    if-eq v2, v3, :cond_1

    iput-boolean v1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->O:Z

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    invoke-virtual {v2}, Lcom/prineside/tdi2/ui/shared/Dialog;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    invoke-virtual {v2}, Lcom/prineside/tdi2/ui/shared/Dialog;->getLastConfirmId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sellButton"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/UiManager;->dialog:Lcom/prineside/tdi2/ui/shared/Dialog;

    invoke-virtual {v2}, Lcom/prineside/tdi2/ui/shared/Dialog;->hide()V

    :cond_1
    iget v2, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->S:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->S:F

    const/high16 p1, 0x3f000000    # 0.5f

    cmpl-float p1, v2, p1

    if-lez p1, :cond_2

    const/4 p1, 0x0

    iput p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->S:F

    iput-boolean v1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->Q:Z

    :cond_2
    invoke-virtual {v0}, Lcom/prineside/tdi2/Tower;->getStatCacheState()I

    move-result p1

    iget v2, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->U:I

    if-eq v2, p1, :cond_3

    iput-boolean v1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->O:Z

    iput p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->U:I

    :cond_3
    iget-boolean p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->O:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/TowerMenu;->r()V

    :cond_4
    iget-boolean p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->W:Z

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->b0:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/GameStateSystem;->isDoubleSpeedActive()Z

    move-result v2

    if-eq p1, v2, :cond_5

    iget-boolean p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->W:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->W:Z

    iput-boolean v1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->P:Z

    :cond_5
    iget-boolean p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->P:Z

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/TowerMenu;->t()V

    :cond_6
    iget-boolean p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->Q:Z

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/TowerMenu;->u()V

    :cond_7
    if-eqz v0, :cond_8

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->Y:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->X:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0, p1, v1}, Lcom/prineside/tdi2/Tower;->fillTowerMenu(Lcom/badlogic/gdx/scenes/scene2d/Group;Lcom/badlogic/gdx/utils/ObjectMap;)V

    :cond_8
    return-void
.end method

.method public hideTowerAbilities()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->E:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->E:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    return-void
.end method

.method public hideTowerExperience()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->D:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->D:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    return-void
.end method

.method public isVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->b:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v0

    return v0
.end method

.method public final o()Lcom/prineside/tdi2/Tower;
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->b0:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getSelectedTile()Lcom/prineside/tdi2/Tile;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v3, Lcom/prineside/tdi2/enums/TileType;->PLATFORM:Lcom/prineside/tdi2/enums/TileType;

    if-ne v2, v3, :cond_0

    check-cast v0, Lcom/prineside/tdi2/tiles/PlatformTile;

    iget-object v0, v0, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/prineside/tdi2/Building;->buildingType:Lcom/prineside/tdi2/enums/BuildingType;

    sget-object v3, Lcom/prineside/tdi2/enums/BuildingType;->TOWER:Lcom/prineside/tdi2/enums/BuildingType;

    if-ne v2, v3, :cond_0

    check-cast v0, Lcom/prineside/tdi2/Tower;

    return-object v0

    :cond_0
    return-object v1
.end method

.method public final p(I)V
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->R:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->R:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->O:Z

    :cond_0
    return-void
.end method

.method public final q(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->T:Z

    if-eq v0, p1, :cond_3

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->T:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->b:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;->show()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->O:Z

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->F:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->b0:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/GameValueSystem;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v2

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->EXTENDED_STATISTICS:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getBooleanValue(Lcom/prineside/tdi2/enums/GameValueType;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->b0:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v2, v2, Lcom/prineside/tdi2/systems/GameStateSystem;->dailyQuestLevel:Lcom/prineside/tdi2/managers/DailyQuestManager$DailyQuestLevel;

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->b:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;->hide()V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->z:Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->setButtonSelected(Z)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->a:Lcom/prineside/tdi2/ui/actors/SideMenu;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/actors/SideMenu;->hideSideTooltip()V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/components/TowerMenu;->p(I)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->b0:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/MapSystem;->hideTowerRangeHint()V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->X:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    iget-boolean p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->V:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/TowerMenu;->cancelUsingCustomButton()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final r()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->X:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->Y:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/components/TowerMenu;->o()Lcom/prineside/tdi2/Tower;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->b:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->b0:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v4}, Lcom/prineside/tdi2/systems/MapSystem;->getSelectedTile()Lcom/prineside/tdi2/Tile;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;->setLabelOverTitleTilePos(Lcom/prineside/tdi2/Tile;)V

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v4, v1, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/TowerManager;->getFactory(Lcom/prineside/tdi2/enums/TowerType;)Lcom/prineside/tdi2/Tower$Factory;

    move-result-object v3

    invoke-virtual {v1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    iget-object v6, v1, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/TowerManager;->getStatTypes(Lcom/prineside/tdi2/enums/TowerType;)[Lcom/prineside/tdi2/enums/TowerStatType;

    move-result-object v5

    invoke-virtual {v1}, Lcom/prineside/tdi2/Tower;->getRange()F

    move-result v6

    invoke-virtual {v1}, Lcom/prineside/tdi2/Tower;->getMinRange()F

    move-result v7

    invoke-virtual {v1}, Lcom/prineside/tdi2/Tower;->getPowerCombinedMultiplier()F

    move-result v8

    array-length v9, v5

    new-array v9, v9, [F

    array-length v10, v5

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v11, v10, :cond_0

    aget-object v13, v5, v11

    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v1, v13}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v13

    aput v13, v9, v12

    add-int/lit8 v11, v11, 0x1

    move v12, v14

    goto :goto_0

    :cond_0
    iget-object v10, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->d:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v3}, Lcom/prineside/tdi2/Tower$Factory;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/prineside/tdi2/utils/StringFormatter;->toUpperCase(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/components/TowerMenu;->t()V

    iget-object v10, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    iget-object v10, v4, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    const/4 v11, 0x1

    if-eqz v10, :cond_1

    iget v10, v4, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    if-lez v10, :cond_1

    new-instance v10, Lcom/prineside/tdi2/ui/actors/EffectTooltip;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    iget-object v13, v4, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    invoke-static {v13}, Lcom/prineside/tdi2/SpaceTileBonus;->getIconName(Lcom/prineside/tdi2/enums/SpaceTileBonusType;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v12

    iget-object v13, v4, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    iget v14, v4, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusLevel:I

    invoke-static {v13, v14}, Lcom/prineside/tdi2/SpaceTileBonus;->getDetailedName(Lcom/prineside/tdi2/enums/SpaceTileBonusType;I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v13

    invoke-direct {v10, v12, v13}, Lcom/prineside/tdi2/ui/actors/EffectTooltip;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/CharSequence;)V

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v12, v12, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v13, "tile_effect"

    invoke-virtual {v12, v13}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/prineside/tdi2/ui/actors/EffectTooltip;->setHint(Ljava/lang/CharSequence;)Lcom/prineside/tdi2/ui/actors/EffectTooltip;

    iget-object v4, v4, Lcom/prineside/tdi2/tiles/PlatformTile;->bonusType:Lcom/prineside/tdi2/enums/SpaceTileBonusType;

    invoke-static {v4}, Lcom/prineside/tdi2/SpaceTileBonus;->getBrightColor(Lcom/prineside/tdi2/enums/SpaceTileBonusType;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/prineside/tdi2/ui/actors/EffectTooltip;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->t:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v4, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_1

    :cond_1
    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->u:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v4, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :goto_1
    array-length v4, v5

    const/4 v10, 0x0

    const/4 v12, 0x0

    :goto_2
    if-ge v10, v4, :cond_2

    aget-object v13, v5, v10

    iget-object v14, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->x:[Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;

    aget-object v14, v14, v12

    iget-object v15, v1, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v1, v13}, Lcom/prineside/tdi2/Tower;->getCachedStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v2

    invoke-virtual {v14, v15, v13, v2}, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->r(Lcom/prineside/tdi2/enums/TowerType;Lcom/prineside/tdi2/enums/TowerStatType;F)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->x:[Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;

    aget-object v2, v2, v12

    invoke-virtual {v2, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v10, v10, 0x1

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    array-length v2, v5

    :goto_3
    const/16 v4, 0x8

    if-ge v2, v4, :cond_3

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->x:[Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;

    aget-object v4, v4, v2

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v2

    add-int/lit16 v2, v2, -0x438

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->a0:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()Z

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->a0:Lcom/badlogic/gdx/scenes/scene2d/Group;

    :cond_4
    const/16 v4, 0x64

    const/high16 v10, 0x42c80000    # 100.0f

    if-le v2, v4, :cond_8

    const v13, 0x44354000    # 725.0f

    add-int/2addr v12, v11

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    const/high16 v14, 0x42880000    # 68.0f

    mul-float v12, v12, v14

    sub-float/2addr v13, v12

    int-to-float v2, v2

    add-float/2addr v13, v2

    const/high16 v2, 0x42000000    # 32.0f

    sub-float/2addr v13, v2

    const/high16 v12, 0x41a00000    # 20.0f

    sub-float/2addr v13, v12

    new-instance v12, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v12}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v12, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->a0:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v12, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->a0:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v14, 0x0

    invoke-virtual {v12, v14, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v12, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->a0:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v13, 0x44160000    # 600.0f

    invoke-virtual {v12, v13, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v12, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->b:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    iget-object v15, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->a0:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v12, v15}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v12, v13, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v13, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->a0:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v13, v12}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v13, Lcom/prineside/tdi2/enums/EnemyType;->mainEnemyTypes:[Lcom/prineside/tdi2/enums/EnemyType;

    array-length v15, v13

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v15, :cond_8

    aget-object v14, v13, v4

    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v11}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {v12, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    move/from16 v16, v6

    const/high16 v6, 0x42280000    # 42.0f

    invoke-virtual {v2, v6, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->enemyManager:Lcom/prineside/tdi2/managers/EnemyManager;

    invoke-virtual {v6, v14}, Lcom/prineside/tdi2/managers/EnemyManager;->getFactory(Lcom/prineside/tdi2/enums/EnemyType;)Lcom/prineside/tdi2/Enemy$Factory;

    move-result-object v6

    invoke-virtual {v6}, Lcom/prineside/tdi2/Enemy$Factory;->getTexture()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    const/high16 v6, 0x40a00000    # 5.0f

    const/high16 v10, 0x423c0000    # 47.0f

    invoke-virtual {v2, v6, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v6, 0x42000000    # 32.0f

    invoke-virtual {v2, v6, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v11, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->b0:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    iget-object v2, v2, Lcom/prineside/tdi2/systems/TowerSystem;->towerEnemyDamageMultiplier:[[F

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget-object v2, v2, v10

    iget-object v10, v1, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v2, v2, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float v2, v2, v10

    invoke-static {v2}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v2

    sget-object v10, Lcom/prineside/tdi2/ui/components/TowerMenu;->i0:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    invoke-virtual {v10, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    new-instance v14, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    move/from16 v17, v7

    const/16 v7, 0x12

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    invoke-direct {v14, v10, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/4 v6, 0x1

    invoke-virtual {v14, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    const/high16 v6, 0x41c00000    # 24.0f

    const/high16 v7, 0x42280000    # 42.0f

    invoke-virtual {v14, v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v6, 0x41400000    # 12.0f

    const/4 v7, 0x0

    invoke-virtual {v14, v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v11, v14}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    if-gtz v2, :cond_5

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v14, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/16 v6, 0x64

    goto :goto_5

    :cond_5
    const/16 v6, 0x64

    if-ge v2, v6, :cond_6

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P600:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v14, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_5

    :cond_6
    if-le v2, v6, :cond_7

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v14, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_5

    :cond_7
    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$YELLOW;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v14, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_5
    add-int/lit8 v4, v4, 0x1

    move/from16 v6, v16

    move/from16 v7, v17

    const/high16 v2, 0x42000000    # 32.0f

    const/high16 v10, 0x42c80000    # 100.0f

    const/4 v11, 0x1

    const/4 v14, 0x0

    goto/16 :goto_4

    :cond_8
    move/from16 v16, v6

    move/from16 v17, v7

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->b0:Lcom/prineside/tdi2/GameSystemProvider;

    invoke-virtual {v3, v2, v1}, Lcom/prineside/tdi2/Tower$Factory;->getAbilityConfigs(Lcom/prineside/tdi2/GameSystemProvider;Lcom/prineside/tdi2/Tower;)[Lcom/prineside/tdi2/Tower$AbilityConfig;

    move-result-object v2

    const/4 v4, 0x0

    :goto_6
    const/4 v6, 0x3

    const/4 v7, 0x6

    if-ge v4, v7, :cond_a

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->y:[Lcom/prineside/tdi2/ui/components/TowerAbilityButton;

    aget-object v7, v7, v4

    invoke-virtual {v1, v4}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v10

    invoke-virtual {v7, v10}, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->F(Z)V

    invoke-virtual {v3}, Lcom/prineside/tdi2/Tower$Factory;->getShadowTextures()Lcom/badlogic/gdx/utils/Array;

    move-result-object v10

    invoke-virtual {v3}, Lcom/prineside/tdi2/Tower$Factory;->getBaseTextures()Lcom/badlogic/gdx/utils/Array;

    move-result-object v11

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/Tower$Factory;->getAbilityTextures(I)Lcom/badlogic/gdx/utils/Array;

    move-result-object v12

    invoke-virtual {v7, v10, v11, v12}, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->E(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Array;)V

    if-eq v4, v6, :cond_9

    invoke-virtual {v1, v4}, Lcom/prineside/tdi2/Tower;->canAbilityBeInstalled(I)Z

    move-result v6

    invoke-virtual {v7, v6}, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->setEnabled(Z)V

    const/4 v10, 0x0

    goto :goto_7

    :cond_9
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->setEnabled(Z)V

    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_a
    const/4 v10, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v7, :cond_b

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->y:[Lcom/prineside/tdi2/ui/components/TowerAbilityButton;

    aget-object v4, v4, v3

    invoke-virtual {v4, v10}, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->setSelected(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_b
    iget v3, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->R:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_d

    sget-object v3, Lcom/prineside/tdi2/ui/components/TowerMenu;->i0:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v3, v10}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    const-string v7, "[#FFC107]"

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v10

    iget v11, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->R:I

    aget-object v11, v2, v11

    invoke-virtual {v11}, Lcom/prineside/tdi2/Tower$AbilityConfig;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v10

    const-string v11, "[]\n"

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    iget v10, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->R:I

    aget-object v2, v2, v10

    invoke-virtual {v2}, Lcom/prineside/tdi2/Tower$AbilityConfig;->getDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/CharSequence;)Lcom/badlogic/gdx/utils/StringBuilder;

    iget v2, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->R:I

    if-ne v2, v6, :cond_c

    const-string v2, "\n"

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v6, v6, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const/4 v7, 0x1

    new-array v10, v7, [Ljava/lang/Object;

    const/16 v7, 0xa

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v11, 0x0

    aput-object v7, v10, v11

    const-string v7, "unlocks_at_lvl"

    invoke-virtual {v6, v7, v10}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v2

    const-string v6, "[]"

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_c
    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->a:Lcom/prineside/tdi2/ui/actors/SideMenu;

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->E:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v6

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->y:[Lcom/prineside/tdi2/ui/components/TowerAbilityButton;

    iget v10, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->R:I

    aget-object v7, v7, v10

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v7

    add-float/2addr v6, v7

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->y:[Lcom/prineside/tdi2/ui/components/TowerAbilityButton;

    iget v10, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->R:I

    aget-object v7, v7, v10

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v7

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float v7, v7, v10

    add-float/2addr v6, v7

    invoke-virtual {v2, v3, v6}, Lcom/prineside/tdi2/ui/actors/SideMenu;->showSideTooltip(Ljava/lang/CharSequence;F)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->y:[Lcom/prineside/tdi2/ui/components/TowerAbilityButton;

    iget v3, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->R:I

    aget-object v2, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/ui/components/TowerAbilityButton;->setSelected(Z)V

    goto :goto_9

    :cond_d
    const/4 v3, 0x1

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->a:Lcom/prineside/tdi2/ui/actors/SideMenu;

    invoke-virtual {v2}, Lcom/prineside/tdi2/ui/actors/SideMenu;->hideSideTooltip()V

    :goto_9
    iget v2, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->R:I

    if-eq v2, v4, :cond_f

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/Tower;->isAbilityInstalled(I)Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, v1, Lcom/prineside/tdi2/Tower;->installedAbilities:[Z

    iget v6, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->R:I

    aput-boolean v3, v2, v6

    invoke-virtual {v1}, Lcom/prineside/tdi2/Tower;->updateCache()V

    invoke-virtual {v1}, Lcom/prineside/tdi2/Tower;->getRange()F

    move-result v6

    invoke-virtual {v1}, Lcom/prineside/tdi2/Tower;->getMinRange()F

    move-result v7

    invoke-virtual {v1}, Lcom/prineside/tdi2/Tower;->getPowerCombinedMultiplier()F

    move-result v8

    array-length v2, v5

    const/4 v3, 0x0

    const/4 v10, 0x0

    :goto_a
    if-ge v3, v2, :cond_e

    aget-object v11, v5, v3

    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v1, v11}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v11

    aput v11, v9, v10

    add-int/lit8 v3, v3, 0x1

    move v10, v12

    goto :goto_a

    :cond_e
    iget-object v2, v1, Lcom/prineside/tdi2/Tower;->installedAbilities:[Z

    iget v3, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->R:I

    const/4 v10, 0x0

    aput-boolean v10, v2, v3

    invoke-virtual {v1}, Lcom/prineside/tdi2/Tower;->updateCache()V

    goto :goto_b

    :cond_f
    move/from16 v6, v16

    move/from16 v7, v17

    :goto_b
    invoke-virtual {v1}, Lcom/prineside/tdi2/Tower;->getMaxUpgradeLevel()I

    move-result v2

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->z:Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;

    invoke-virtual {v1}, Lcom/prineside/tdi2/Tower;->getUpgradeLevel()I

    move-result v10

    invoke-virtual {v3, v10, v2}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->B(II)V

    invoke-virtual {v1}, Lcom/prineside/tdi2/Tower;->getUpgradeLevel()I

    move-result v3

    if-ge v3, v2, :cond_10

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->b0:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/systems/TowerSystem;->getUpgradePrice(Lcom/prineside/tdi2/Tower;)I

    move-result v2

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->z:Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;

    invoke-virtual {v3, v2}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->C(I)V

    goto :goto_c

    :cond_10
    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->z:Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->C(I)V

    :goto_c
    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->z:Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;

    invoke-virtual {v2}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->isButtonSelected()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v1}, Lcom/prineside/tdi2/Tower;->getUpgradeLevel()I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/Tower;->upgrade(I)V

    invoke-virtual {v1}, Lcom/prineside/tdi2/Tower;->getRange()F

    move-result v6

    invoke-virtual {v1}, Lcom/prineside/tdi2/Tower;->getMinRange()F

    move-result v7

    invoke-virtual {v1}, Lcom/prineside/tdi2/Tower;->getPowerCombinedMultiplier()F

    move-result v8

    array-length v3, v5

    const/4 v4, 0x0

    const/4 v10, 0x0

    :goto_d
    if-ge v4, v3, :cond_11

    aget-object v11, v5, v4

    add-int/lit8 v12, v10, 0x1

    invoke-virtual {v1, v11}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v11

    aput v11, v9, v10

    add-int/lit8 v4, v4, 0x1

    move v10, v12

    goto :goto_d

    :cond_11
    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/Tower;->upgrade(I)V

    goto :goto_f

    :cond_12
    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->x:[Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v3, :cond_13

    aget-object v10, v2, v4

    invoke-virtual {v10}, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->q()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_13
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/components/TowerMenu;->v()V

    invoke-virtual {v1}, Lcom/prineside/tdi2/Tower;->getPowerCombinedMultiplier()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const-string v4, "+"

    cmpl-float v2, v2, v8

    if-eqz v2, :cond_14

    sget-object v2, Lcom/prineside/tdi2/ui/components/TowerMenu;->i0:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/prineside/tdi2/Tower;->getPowerCombinedMultiplier()F

    move-result v11

    sub-float/2addr v11, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v11, v11, v3

    float-to-double v11, v11

    const/4 v13, 0x1

    invoke-static {v11, v12, v13, v10}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DIZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    const-string v11, "[#4CAF50] +"

    invoke-virtual {v4, v11}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/prineside/tdi2/Tower;->getPowerCombinedMultiplier()F

    move-result v11

    sub-float/2addr v8, v11

    mul-float v8, v8, v3

    float-to-double v11, v8

    invoke-static {v11, v12, v13, v10}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DIZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    const-string v4, "[]%"

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10

    :cond_14
    const/4 v10, 0x0

    sget-object v2, Lcom/prineside/tdi2/ui/components/TowerMenu;->i0:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v2, v10}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/prineside/tdi2/Tower;->getPowerCombinedMultiplier()F

    move-result v8

    sub-float/2addr v8, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v8, v8, v3

    float-to-double v11, v8

    const/4 v3, 0x1

    invoke-static {v11, v12, v3, v10}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DIZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v3, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    :goto_10
    array-length v2, v5

    const/4 v3, 0x0

    const/4 v10, 0x0

    :goto_11
    if-ge v10, v2, :cond_18

    aget-object v4, v5, v10

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->x:[Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;

    array-length v11, v8

    const/4 v12, 0x0

    :goto_12
    if-ge v12, v11, :cond_17

    aget-object v13, v8, v12

    invoke-static {v13}, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->p(Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;)Lcom/prineside/tdi2/enums/TowerStatType;

    move-result-object v14

    if-ne v14, v4, :cond_16

    aget v14, v9, v3

    invoke-virtual {v1, v4}, Lcom/prineside/tdi2/Tower;->getStatBuffed(Lcom/prineside/tdi2/enums/TowerStatType;)F

    move-result v15

    cmpl-float v14, v14, v15

    if-eqz v14, :cond_15

    aget v14, v9, v3

    invoke-virtual {v13, v14}, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->s(F)V

    goto :goto_13

    :cond_15
    invoke-virtual {v13}, Lcom/prineside/tdi2/ui/components/TowerMenu$CharacteristicCell;->q()V

    :cond_16
    :goto_13
    add-int/lit8 v12, v12, 0x1

    goto :goto_12

    :cond_17
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_11

    :cond_18
    invoke-virtual {v1}, Lcom/prineside/tdi2/Tower;->getRange()F

    move-result v2

    cmpl-float v2, v6, v2

    if-nez v2, :cond_1a

    invoke-virtual {v1}, Lcom/prineside/tdi2/Tower;->getMinRange()F

    move-result v2

    cmpl-float v2, v7, v2

    if-eqz v2, :cond_19

    goto :goto_14

    :cond_19
    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->b0:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/MapSystem;->hideTowerRangeHint()V

    goto :goto_15

    :cond_1a
    :goto_14
    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->b0:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v3

    iget-object v3, v3, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v1}, Lcom/prineside/tdi2/Building;->getTile()Lcom/prineside/tdi2/tiles/PlatformTile;

    move-result-object v4

    iget-object v4, v4, Lcom/prineside/tdi2/Tile;->center:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v5, 0x43000000    # 128.0f

    mul-float v7, v7, v5

    mul-float v6, v6, v5

    invoke-virtual {v2, v3, v4, v7, v6}, Lcom/prineside/tdi2/systems/MapSystem;->showTowerRangeHint(FFFF)V

    :goto_15
    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/components/TowerMenu;->s()V

    invoke-virtual {v1}, Lcom/prineside/tdi2/Tower;->isSellFullRefundStillActive()Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->C:Lcom/prineside/tdi2/ui/components/SellButton;

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P900:Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P700:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v3, v4, v5}, Lcom/prineside/tdi2/ui/components/SellButton;->setColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_16

    :cond_1b
    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->C:Lcom/prineside/tdi2/ui/components/SellButton;

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P900:Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P700:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v3, v4, v5}, Lcom/prineside/tdi2/ui/components/SellButton;->setColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    :goto_16
    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->C:Lcom/prineside/tdi2/ui/components/SellButton;

    invoke-virtual {v1}, Lcom/prineside/tdi2/Tower;->getSellPrice()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/ui/components/SellButton;->setPrice(I)V

    invoke-virtual {v1}, Lcom/prineside/tdi2/Tower;->getSellPrice()I

    move-result v1

    iput v1, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->N:I

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/components/TowerMenu;->u()V

    :cond_1c
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/prineside/tdi2/ui/components/TowerMenu;->O:Z

    return-void
.end method

.method public final s()V
    .locals 4

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/TowerMenu;->o()Lcom/prineside/tdi2/Tower;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->B:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tower;->canAim()Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->A:Lcom/prineside/tdi2/ui/actors/AimStrategySelector;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tower;->hasCustomButton()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->B:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->B:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-boolean v2, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->V:Z

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/Tower;->updateCustomButton(Lcom/prineside/tdi2/ui/actors/ComplexButton;Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->A:Lcom/prineside/tdi2/ui/actors/AimStrategySelector;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->A:Lcom/prineside/tdi2/ui/actors/AimStrategySelector;

    iget-object v0, v0, Lcom/prineside/tdi2/Tower;->aimStrategy:Lcom/prineside/tdi2/Tower$AimStrategy;

    invoke-virtual {v1, v0, v3, v2}, Lcom/prineside/tdi2/ui/actors/AimStrategySelector;->setStrategy(Lcom/prineside/tdi2/Tower$AimStrategy;ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public showTowerAbilities(ZLjava/lang/Runnable;)V
    .locals 6

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->E:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->E:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->E:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->b0:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    iget-object v0, p1, Lcom/prineside/tdi2/systems/GraphicsSystem;->uiElementsEmphasizer:Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->E:Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v2, Lcom/prineside/tdi2/ui/components/TowerMenu;->h0:Lcom/badlogic/gdx/math/Rectangle;

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "tower_menu_ui_abilities_title"

    invoke-virtual {p1, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v4, "tower_menu_ui_abilities_description"

    invoke-virtual {p1, v4}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->show(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/math/Rectangle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method public showTowerExperience(ZLjava/lang/Runnable;)V
    .locals 6

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->D:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->D:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->D:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->b0:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    iget-object v0, p1, Lcom/prineside/tdi2/systems/GraphicsSystem;->uiElementsEmphasizer:Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->D:Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v2, Lcom/prineside/tdi2/ui/components/TowerMenu;->g0:Lcom/badlogic/gdx/math/Rectangle;

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "tower_menu_ui_experience_title"

    invoke-virtual {p1, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v4, "tower_menu_ui_experience_description"

    invoke-virtual {p1, v4}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->show(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/math/Rectangle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method public startUsingCustomButton()V
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "TowerMenu"

    const-string v1, "been using custom button, canceling"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/TowerMenu;->cancelUsingCustomButton()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->V:Z

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->b0:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_input:Lcom/prineside/tdi2/systems/InputSystem;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->Z:Lcom/badlogic/gdx/InputProcessor;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/InputSystem;->setCustomMapInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/TowerMenu;->s()V

    return-void
.end method

.method public final t()V
    .locals 10

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/TowerMenu;->o()Lcom/prineside/tdi2/Tower;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    sget-object v2, Lcom/prineside/tdi2/ui/components/TowerMenu;->i0:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    const/16 v3, 0x4c

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tower;->getLevel()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget v3, v0, Lcom/prineside/tdi2/Tower;->nextLevelExperience:F

    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    if-nez v5, :cond_0

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->v:Lcom/prineside/tdi2/ui/actors/ExpLine;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v5}, Lcom/prineside/tdi2/ui/actors/ExpLine;->setCoeff(F)V

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->v:Lcom/prineside/tdi2/ui/actors/ExpLine;

    iget v6, v0, Lcom/prineside/tdi2/Tower;->currentLevelExperience:F

    div-float/2addr v6, v3

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/ui/actors/ExpLine;->setCoeff(F)V

    :goto_0
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    iget v3, v0, Lcom/prineside/tdi2/Tower;->nextLevelExperience:F

    const/4 v5, 0x1

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/prineside/tdi2/Tower;->currentLevelExperience:F

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    const-string v6, " / "

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    iget v6, v0, Lcom/prineside/tdi2/Tower;->nextLevelExperience:F

    float-to-int v6, v6

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    const-string v6, " XP"

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const-string v6, "MAX XP"

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    const-string v3, "+"

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    iget v3, v0, Lcom/prineside/tdi2/Tower;->experience:F

    float-to-int v3, v3

    sget-object v6, Lcom/prineside/tdi2/Tower;->LEVEL_EXPERIENCE:[I

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tower;->getLevel()I

    move-result v7

    aget v6, v6, v7

    sub-int/2addr v3, v6

    int-to-long v6, v3

    const-wide/32 v8, 0x3b9aca00

    cmp-long v3, v6, v8

    if-lez v3, :cond_2

    const-string v3, "bazillion"

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_1

    :cond_2
    invoke-static {v6, v7}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    :goto_1
    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :goto_2
    iget v3, v0, Lcom/prineside/tdi2/Tower;->experienceGeneration:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_3

    :cond_3
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    const/16 v3, 0x2b

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    iget v0, v0, Lcom/prineside/tdi2/Tower;->experienceGeneration:F

    float-to-double v3, v0

    invoke-static {v3, v4, v5}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->b0:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/GameStateSystem;->isDoubleSpeedActive()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, " [#BBBBBB]x2[]"

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    :cond_4
    const-string v0, " XP/s"

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->s:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :cond_5
    :goto_3
    iput-boolean v1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->P:Z

    return-void
.end method

.method public final u()V
    .locals 6

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->F:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/TowerMenu;->o()Lcom/prineside/tdi2/Tower;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v2, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->K:F

    iget v3, v0, Lcom/prineside/tdi2/Tower;->mdps:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->L:F

    iget v4, v0, Lcom/prineside/tdi2/Tower;->enemiesKilled:I

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    iget v2, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->M:F

    iget v4, v0, Lcom/prineside/tdi2/Tower;->bonusCoinsBrought:F

    float-to-int v4, v4

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_3

    :cond_0
    iput v3, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->K:F

    iget v2, v0, Lcom/prineside/tdi2/Tower;->enemiesKilled:I

    int-to-float v2, v2

    iput v2, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->L:F

    iget v2, v0, Lcom/prineside/tdi2/Tower;->bonusCoinsBrought:F

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->M:F

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->G:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    float-to-double v3, v3

    invoke-static {v3, v4, v1}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget v2, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->M:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->J:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/prineside/tdi2/ui/components/TowerMenu;->i0:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    iget v4, v0, Lcom/prineside/tdi2/Tower;->bonusCoinsBrought:F

    cmpl-float v3, v4, v3

    if-lez v3, :cond_2

    const/16 v3, 0x2b

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/prineside/tdi2/Tower;->bonusCoinsBrought:F

    float-to-int v4, v4

    int-to-double v4, v4

    invoke-static {v4, v5, v1}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_0

    :cond_2
    float-to-int v3, v4

    int-to-double v3, v3

    invoke-static {v3, v4, v1}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Lcom/badlogic/gdx/utils/StringBuilder;)Lcom/badlogic/gdx/utils/StringBuilder;

    :goto_0
    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->J:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->J:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :goto_1
    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->H:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget v0, v0, Lcom/prineside/tdi2/Tower;->enemiesKilled:I

    int-to-double v3, v0

    invoke-static {v3, v4, v1}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iput-boolean v1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->Q:Z

    return-void
.end method

.method public final v()V
    .locals 5

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/TowerMenu;->o()Lcom/prineside/tdi2/Tower;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tower;->getUpgradeLevel()I

    move-result v1

    invoke-virtual {v0}, Lcom/prineside/tdi2/Tower;->getMaxUpgradeLevel()I

    move-result v2

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->z:Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;

    invoke-virtual {v0, v3}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->A(Z)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->z:Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->b0:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/GameStateSystem;->getMoney()I

    move-result v2

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/TowerMenu;->b0:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    invoke-virtual {v4, v0}, Lcom/prineside/tdi2/systems/TowerSystem;->getUpgradePrice(Lcom/prineside/tdi2/Tower;)I

    move-result v0

    if-lt v2, v0, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/ui/components/UpgradeSubmenu;->A(Z)V

    :cond_2
    :goto_0
    return-void
.end method
