.class public Lcom/prineside/tdi2/ui/components/CoreMenu;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/ui/components/CoreMenu$_SideMenuListener;,
        Lcom/prineside/tdi2/ui/components/CoreMenu$_MapSystemListener;
    }
.end annotation


# static fields
.field public static final A:Ljava/lang/StringBuilder;

.field public static final B:Lcom/badlogic/gdx/graphics/Color;

.field public static final C:Lcom/badlogic/gdx/graphics/Color;

.field public static final D:Lcom/badlogic/gdx/graphics/Color;

.field public static final x:Lcom/badlogic/gdx/graphics/Color;

.field public static final y:Lcom/badlogic/gdx/graphics/Color;

.field public static final z:Lcom/badlogic/gdx/math/Rectangle;


# instance fields
.field public final a:Lcom/prineside/tdi2/ui/actors/SideMenu;

.field public final b:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

.field public c:Z

.field public d:Lcom/prineside/tdi2/ui/actors/QuadActor;

.field public e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

.field public f:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public h:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public i:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public j:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public l:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public m:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public n:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public o:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

.field public p:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

.field public q:Lcom/prineside/tdi2/ui/actors/ExpLine;

.field public r:I

.field public s:I

.field public t:I

.field public u:Lcom/prineside/tdi2/GameSystemProvider;

.field public final v:Lcom/prineside/tdi2/ui/components/CoreMenu$_SideMenuListener;

.field public final w:Lcom/prineside/tdi2/ui/components/CoreMenu$_MapSystemListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x252525ff

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    sput-object v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->x:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const v1, 0x2b2b2bff

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(I)V

    sput-object v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->y:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    const/high16 v1, 0x42200000    # 40.0f

    const v2, 0x446e8000    # 954.0f

    const/high16 v3, 0x44020000    # 520.0f

    const/high16 v4, 0x42840000    # 66.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    sput-object v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->z:Lcom/badlogic/gdx/math/Rectangle;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->A:Ljava/lang/StringBuilder;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->B:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->C:Lcom/badlogic/gdx/graphics/Color;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->D:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/ui/actors/SideMenu;Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, -0x1

    iput v3, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->r:I

    iput v3, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->s:I

    iput v3, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->t:I

    new-instance v3, Lcom/prineside/tdi2/ui/components/CoreMenu$_SideMenuListener;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/prineside/tdi2/ui/components/CoreMenu$_SideMenuListener;-><init>(Lcom/prineside/tdi2/ui/components/CoreMenu;Lcom/prineside/tdi2/ui/components/CoreMenu$1;)V

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->v:Lcom/prineside/tdi2/ui/components/CoreMenu$_SideMenuListener;

    new-instance v5, Lcom/prineside/tdi2/ui/components/CoreMenu$_MapSystemListener;

    invoke-direct {v5, v0, v4}, Lcom/prineside/tdi2/ui/components/CoreMenu$_MapSystemListener;-><init>(Lcom/prineside/tdi2/ui/components/CoreMenu;Lcom/prineside/tdi2/ui/components/CoreMenu$1;)V

    iput-object v5, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->w:Lcom/prineside/tdi2/ui/components/CoreMenu$_MapSystemListener;

    iput-object v2, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->u:Lcom/prineside/tdi2/GameSystemProvider;

    iput-object v1, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->a:Lcom/prineside/tdi2/ui/actors/SideMenu;

    invoke-virtual/range {p1 .. p1}, Lcom/prineside/tdi2/ui/actors/SideMenu;->createContainer()Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    move-result-object v4

    iput-object v4, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->b:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v6}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v6

    add-int/lit16 v6, v6, -0x438

    new-instance v7, Lcom/prineside/tdi2/ui/actors/QuadActor;

    const/16 v8, 0x8

    new-array v9, v8, [F

    fill-array-data v9, :array_0

    sget-object v10, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v7, v9, v10}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>([FLcom/badlogic/gdx/graphics/Color;)V

    iput-object v7, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->d:Lcom/prineside/tdi2/ui/actors/QuadActor;

    const/high16 v9, 0x44160000    # 600.0f

    const/high16 v11, 0x431c0000    # 156.0f

    invoke-virtual {v7, v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->d:Lcom/prineside/tdi2/ui/actors/QuadActor;

    int-to-float v6, v6

    const/high16 v11, 0x44670000    # 924.0f

    add-float/2addr v11, v6

    const/4 v12, 0x0

    invoke-virtual {v7, v12, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->d:Lcom/prineside/tdi2/ui/actors/QuadActor;

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    iput-object v7, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const v11, 0x44788000    # 994.0f

    add-float/2addr v11, v6

    const/high16 v13, 0x42200000    # 40.0f

    invoke-virtual {v7, v13, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    const/high16 v11, 0x44020000    # 520.0f

    const/high16 v14, 0x41d00000    # 26.0f

    invoke-virtual {v7, v11, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v7, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->f:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const-string v15, "core_menu_experience"

    invoke-virtual {v7, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->f:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v15, 0x0

    invoke-virtual {v7, v15}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->f:Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v15, Lcom/prineside/tdi2/ui/components/CoreMenu;->z:Lcom/badlogic/gdx/math/Rectangle;

    iget v9, v15, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v11, v15, Lcom/badlogic/gdx/math/Rectangle;->y:F

    add-float/2addr v11, v6

    invoke-virtual {v7, v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->f:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget v9, v15, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v11, v15, Lcom/badlogic/gdx/math/Rectangle;->height:F

    invoke-virtual {v7, v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->f:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget v9, v15, Lcom/badlogic/gdx/math/Rectangle;->width:F

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v9, v11

    iget v15, v15, Lcom/badlogic/gdx/math/Rectangle;->height:F

    div-float/2addr v15, v11

    invoke-virtual {v7, v9, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOrigin(FF)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->f:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v13, 0x15

    invoke-virtual {v15, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v15

    invoke-direct {v9, v15, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    const-string v15, ""

    invoke-direct {v7, v15, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v7, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const v9, 0x3e8f5c29    # 0.28f

    invoke-virtual {v7, v12, v12, v12, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v9, 0x431f0000    # 159.0f

    const/high16 v12, 0x41c00000    # 24.0f

    invoke-virtual {v7, v9, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const v16, 0x446e8000    # 954.0f

    add-float v14, v6, v16

    sub-float v11, v14, v11

    const/high16 v9, 0x42480000    # 50.0f

    invoke-virtual {v7, v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v11, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v11

    invoke-direct {v9, v11, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v7, v15, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v7, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v7, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v9, 0x431f0000    # 159.0f

    invoke-virtual {v7, v9, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v9, 0x42400000    # 48.0f

    invoke-virtual {v7, v9, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v11, 0x24

    invoke-virtual {v9, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v9

    invoke-direct {v8, v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    const-string v9, "L10"

    invoke-direct {v7, v9, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v7, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v8, 0x41d00000    # 26.0f

    const/high16 v9, 0x42200000    # 40.0f

    invoke-virtual {v7, v9, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v8, 0x43f00000    # 480.0f

    invoke-virtual {v7, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/16 v8, 0x10

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->f:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v9, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v7, Lcom/prineside/tdi2/ui/actors/ExpLine;

    invoke-direct {v7}, Lcom/prineside/tdi2/ui/actors/ExpLine;-><init>()V

    iput-object v7, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->q:Lcom/prineside/tdi2/ui/actors/ExpLine;

    const/4 v9, 0x0

    invoke-virtual {v7, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->f:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v9, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->q:Lcom/prineside/tdi2/ui/actors/ExpLine;

    invoke-virtual {v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v13, 0x18

    invoke-virtual {v11, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v11

    invoke-direct {v9, v11, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    const-string v10, "53 / 90 XP"

    invoke-direct {v7, v10, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v7, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v9, 0x3f800000    # 1.0f

    const v10, 0x3f0f5c29    # 0.56f

    invoke-virtual {v7, v9, v9, v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/4 v11, 0x0

    invoke-virtual {v7, v11, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v11, 0x44020000    # 520.0f

    invoke-virtual {v7, v11, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->f:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v11, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v7, v11}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v12, "blank"

    invoke-virtual {v11, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v11

    invoke-direct {v7, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v11, 0x42500000    # 52.0f

    const/high16 v12, 0x44160000    # 600.0f

    invoke-virtual {v7, v12, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v12, 0x3e8f5c29    # 0.28f

    const/4 v14, 0x0

    invoke-virtual {v7, v14, v14, v14, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const/high16 v12, 0x445a0000    # 872.0f

    add-float/2addr v6, v12

    invoke-virtual {v7, v14, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v12, v12, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v14, "tower_stat_EXPERIENCE_GENERATION"

    invoke-virtual {v12, v14}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v14, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v14

    invoke-direct {v7, v12, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v12, 0x42200000    # 40.0f

    invoke-virtual {v7, v12, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v12, 0x42c80000    # 100.0f

    invoke-virtual {v7, v12, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v12, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v12

    const-string v14, "/s"

    invoke-direct {v7, v14, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/4 v12, 0x0

    invoke-virtual {v7, v12, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v7, v9, v9, v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    const/high16 v9, 0x440c0000    # 560.0f

    invoke-virtual {v7, v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v10, 0x1e

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v9

    const-string v10, "2.5"

    invoke-direct {v7, v10, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v7, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/4 v9, 0x0

    invoke-virtual {v7, v9, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v7, 0x44040000    # 528.0f

    invoke-virtual {v6, v7, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v6, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->n:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->n:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->n:Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v7}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x43480000    # 200.0f

    sub-float/2addr v7, v8

    const/high16 v8, 0x44160000    # 600.0f

    invoke-virtual {v6, v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->n:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v8, 0x3c

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v7

    invoke-direct {v6, v15, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v6, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v7, 0x430e0000    # 142.0f

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v7, 0x42300000    # 44.0f

    const/high16 v8, 0x44160000    # 600.0f

    invoke-virtual {v6, v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v8, v8, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v9, "upgrade_points"

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v9, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v6, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v8, 0x42d00000    # 104.0f

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v8, 0x41a00000    # 20.0f

    const/high16 v9, 0x44160000    # 600.0f

    invoke-virtual {v6, v9, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-direct {v6}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;-><init>()V

    iput-object v6, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->p:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    sget-object v7, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v8, "particles/core-menu-upgrade-points-highlight.prt"

    invoke-interface {v7, v8}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v9, "particle-triangle"

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v8

    invoke-virtual {v8}, Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;->getAtlas()Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->load(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->p:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setEmittersCleanUpBlendFunction(Z)V

    new-instance v6, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    invoke-direct {v6}, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;-><init>()V

    iput-object v6, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->o:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    const/high16 v7, 0x42800000    # 64.0f

    const/high16 v8, 0x44160000    # 600.0f

    invoke-virtual {v6, v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->o:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    const/high16 v7, 0x43040000    # 132.0f

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->o:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->o:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->p:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    const/high16 v8, 0x43960000    # 300.0f

    const/high16 v9, 0x42000000    # 32.0f

    invoke-virtual {v6, v7, v8, v9}, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;FF)Lcom/prineside/tdi2/ui/actors/ParticlesCanvas$ParticleConfig;

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->o:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/ui/actors/SideMenu;->addListener(Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuListener;)V

    iget-object v1, v2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1, v5}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    invoke-virtual {v4}, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;->hide()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static synthetic a(Lcom/prineside/tdi2/ui/components/CoreMenu;)I
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/ui/components/CoreMenu;->r:I

    return p0
.end method

.method public static synthetic b(Lcom/prineside/tdi2/ui/components/CoreMenu;I)I
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/ui/components/CoreMenu;->r:I

    return p1
.end method

.method public static synthetic c(Lcom/prineside/tdi2/ui/components/CoreMenu;)I
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/ui/components/CoreMenu;->s:I

    return p0
.end method

.method public static synthetic d(Lcom/prineside/tdi2/ui/components/CoreMenu;I)I
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/ui/components/CoreMenu;->s:I

    return p1
.end method

.method public static synthetic e(Lcom/prineside/tdi2/ui/components/CoreMenu;)Lcom/prineside/tdi2/GameSystemProvider;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/CoreMenu;->u:Lcom/prineside/tdi2/GameSystemProvider;

    return-object p0
.end method

.method public static synthetic f(Lcom/prineside/tdi2/ui/components/CoreMenu;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/CoreMenu;->m()V

    return-void
.end method

.method public static synthetic g(Lcom/prineside/tdi2/ui/components/CoreMenu;)I
    .locals 0

    iget p0, p0, Lcom/prineside/tdi2/ui/components/CoreMenu;->t:I

    return p0
.end method

.method public static synthetic h(Lcom/prineside/tdi2/ui/components/CoreMenu;)I
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/CoreMenu;->k()I

    move-result p0

    return p0
.end method

.method public static synthetic i(Lcom/prineside/tdi2/ui/components/CoreMenu;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/components/CoreMenu;->l(Z)V

    return-void
.end method

.method public static synthetic j(Lcom/prineside/tdi2/ui/components/CoreMenu;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/prineside/tdi2/ui/components/CoreMenu;->c:Z

    return p0
.end method


# virtual methods
.method public draw(F)V
    .locals 1

    iget-boolean p1, p0, Lcom/prineside/tdi2/ui/components/CoreMenu;->c:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/CoreMenu;->n()V

    iget p1, p0, Lcom/prineside/tdi2/ui/components/CoreMenu;->t:I

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/CoreMenu;->k()I

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/CoreMenu;->m()V

    :cond_0
    return-void
.end method

.method public final k()I
    .locals 14

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/CoreMenu;->u:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getSelectedTile()Lcom/prineside/tdi2/Tile;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    iget-object v2, v0, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v3, Lcom/prineside/tdi2/enums/TileType;->CORE:Lcom/prineside/tdi2/enums/TileType;

    if-ne v2, v3, :cond_6

    check-cast v0, Lcom/prineside/tdi2/tiles/CoreTile;

    invoke-virtual {v0}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgradeCols()I

    move-result v2

    invoke-virtual {v0}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgradeRows()I

    move-result v3

    invoke-virtual {v0}, Lcom/prineside/tdi2/tiles/CoreTile;->getFreeUpgradePoints()I

    move-result v4

    const/16 v5, 0x1f

    add-int/2addr v5, v4

    iget-object v6, p0, Lcom/prineside/tdi2/ui/components/CoreMenu;->u:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v6, v6, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v6}, Lcom/prineside/tdi2/systems/GameStateSystem;->getMoney()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v3, :cond_5

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v2, :cond_4

    invoke-virtual {v0, v9, v8}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgrade(II)Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

    move-result-object v10

    if-nez v10, :cond_0

    goto :goto_4

    :cond_0
    invoke-virtual {v0, v9, v8}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgradeInstallLevel(II)I

    move-result v11

    iget-object v12, v10, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->upgradeLevels:Lcom/badlogic/gdx/utils/Array;

    iget v13, v12, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v11, v13, :cond_3

    iget-object v12, v12, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v12, [Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;

    aget-object v11, v12, v11

    iget-boolean v10, v10, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->costsCoins:Z

    if-eqz v10, :cond_1

    mul-int/lit8 v5, v5, 0x1f

    iget v10, v11, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->price:I

    if-gt v10, v6, :cond_2

    goto :goto_2

    :cond_1
    mul-int/lit8 v5, v5, 0x1f

    iget v10, v11, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->price:I

    if-gt v10, v4, :cond_2

    :goto_2
    const/4 v10, 0x1

    goto :goto_3

    :cond_2
    const/4 v10, 0x0

    :goto_3
    add-int/2addr v5, v10

    :cond_3
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_5
    move v1, v5

    :cond_6
    return v1
.end method

.method public final l(Z)V
    .locals 8

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/CoreMenu;->c:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/components/CoreMenu;->c:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/CoreMenu;->b:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;->show()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/CoreMenu;->m()V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v0, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->CORE_HINT_SHOWN:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double p1, v1, v3

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/CoreMenu;->u:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/MapSystem;->getSelectedTile()Lcom/prineside/tdi2/Tile;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v2, Lcom/prineside/tdi2/enums/TileType;->CORE:Lcom/prineside/tdi2/enums/TileType;

    if-ne v1, v2, :cond_1

    check-cast p1, Lcom/prineside/tdi2/tiles/CoreTile;

    const/high16 v1, 0x42c00000    # 96.0f

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/tiles/CoreTile;->generateUiIcon(F)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v3

    const/high16 p1, 0x42400000    # 48.0f

    invoke-virtual {v3, p1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOrigin(FF)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/CoreMenu;->u:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    iget-object v2, p1, Lcom/prineside/tdi2/systems/GraphicsSystem;->uiElementsEmphasizer:Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;

    new-instance v4, Lcom/badlogic/gdx/math/Rectangle;

    const/high16 p1, -0x3dc00000    # -48.0f

    invoke-direct {v4, p1, p1, v1, v1}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v1, "tile_name_CORE"

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v1, "tile_description_CORE"

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->show(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/math/Rectangle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1, v0, v1, v2}, Lcom/prineside/tdi2/managers/SettingsManager;->setCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;D)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/CoreMenu;->b:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;->hide()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/prineside/tdi2/ui/components/CoreMenu;->r:I

    iput p1, p0, Lcom/prineside/tdi2/ui/components/CoreMenu;->s:I

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/CoreMenu;->a:Lcom/prineside/tdi2/ui/actors/SideMenu;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/actors/SideMenu;->hideSideTooltip()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final m()V
    .locals 26

    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/prineside/tdi2/ui/components/CoreMenu;->u:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getSelectedTile()Lcom/prineside/tdi2/Tile;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v1, v0, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v2, Lcom/prineside/tdi2/enums/TileType;->CORE:Lcom/prineside/tdi2/enums/TileType;

    if-ne v1, v2, :cond_2d

    iget-object v1, v6, Lcom/prineside/tdi2/ui/components/CoreMenu;->b:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    invoke-virtual {v1, v0}, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;->setLabelOverTitleTilePos(Lcom/prineside/tdi2/Tile;)V

    move-object v7, v0

    check-cast v7, Lcom/prineside/tdi2/tiles/CoreTile;

    sget-object v0, Lcom/prineside/tdi2/ui/components/CoreMenu;->B:Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/TileManager$Factories;->CORE:Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;

    invoke-virtual {v7}, Lcom/prineside/tdi2/tiles/CoreTile;->getTier()Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;->getTierColor(Lcom/prineside/tdi2/tiles/CoreTile$Tier;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/prineside/tdi2/ui/components/CoreMenu;->C:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    const/4 v8, 0x0

    iput v8, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    const v2, 0x3d8f5c29    # 0.07f

    iput v2, v1, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget-object v2, v6, Lcom/prineside/tdi2/ui/components/CoreMenu;->d:Lcom/prineside/tdi2/ui/actors/QuadActor;

    invoke-virtual {v2, v1, v0, v0, v1}, Lcom/prineside/tdi2/ui/actors/QuadActor;->setVertexColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v1, v6, Lcom/prineside/tdi2/ui/components/CoreMenu;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v7}, Lcom/prineside/tdi2/tiles/CoreTile;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v4, 0x24

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/TileManager$Factories;->CORE:Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;

    invoke-virtual {v7}, Lcom/prineside/tdi2/tiles/CoreTile;->getTier()Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;->getTierColor(Lcom/prineside/tdi2/tiles/CoreTile$Tier;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v2, v6, Lcom/prineside/tdi2/ui/components/CoreMenu;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v2, 0x41d00000    # 26.0f

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->bottom()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    const/high16 v9, 0x41800000    # 16.0f

    invoke-virtual {v1, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/TileManager$Factories;->CORE:Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;

    invoke-virtual {v7}, Lcom/prineside/tdi2/tiles/CoreTile;->getTier()Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;->getTierDescription(Lcom/prineside/tdi2/tiles/CoreTile$Tier;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v4, 0x15

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f0f5c29    # 0.56f

    invoke-virtual {v1, v10, v10, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v2, v6, Lcom/prineside/tdi2/ui/components/CoreMenu;->e:Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->bottom()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/components/CoreMenu;->n()V

    iput v10, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    iget-object v1, v6, Lcom/prineside/tdi2/ui/components/CoreMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, v6, Lcom/prineside/tdi2/ui/components/CoreMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v7}, Lcom/prineside/tdi2/tiles/CoreTile;->getExperienceGeneration()F

    move-result v1

    iget-object v2, v6, Lcom/prineside/tdi2/ui/components/CoreMenu;->u:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->CORES_LEVEL_UP_SPEED:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/systems/GameValueSystem;->getPercentValueAsMultiplier(Lcom/prineside/tdi2/enums/GameValueType;)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v1, v1, v2

    float-to-double v1, v1

    const/4 v12, 0x1

    invoke-static {v1, v2, v12}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgradeCols()I

    move-result v13

    invoke-virtual {v7}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgradeRows()I

    move-result v14

    invoke-virtual {v7}, Lcom/prineside/tdi2/tiles/CoreTile;->getFreeUpgradePoints()I

    move-result v15

    iget-object v0, v6, Lcom/prineside/tdi2/ui/components/CoreMenu;->n:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    int-to-float v0, v13

    const/high16 v16, 0x43000000    # 128.0f

    mul-float v0, v0, v16

    const/high16 v1, 0x44160000    # 600.0f

    sub-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float v17, v1, v0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x43b20000    # 356.0f

    sub-float v18, v0, v1

    const/4 v5, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v14, :cond_1c

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v13, :cond_1b

    invoke-virtual {v7, v2, v4}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgrade(II)Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

    move-result-object v1

    if-nez v1, :cond_0

    move v5, v2

    move v8, v4

    move/from16 v25, v13

    move/from16 v22, v14

    move/from16 v21, v15

    const/4 v11, 0x0

    goto/16 :goto_11

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    int-to-float v3, v2

    mul-float v3, v3, v16

    add-float v3, v17, v3

    int-to-float v5, v4

    mul-float v5, v5, v16

    sub-float v5, v18, v5

    invoke-virtual {v0, v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    new-instance v5, Lcom/prineside/tdi2/ui/components/CoreMenu$1;

    move-object v3, v0

    move-object v0, v5

    move-object/from16 v19, v1

    move-object/from16 v1, p0

    move/from16 v20, v2

    move-object v12, v3

    const/high16 v11, 0x42800000    # 64.0f

    move v3, v4

    move v8, v4

    move-object v4, v7

    move-object v10, v5

    move-object/from16 v5, v19

    invoke-direct/range {v0 .. v5}, Lcom/prineside/tdi2/ui/components/CoreMenu$1;-><init>(Lcom/prineside/tdi2/ui/components/CoreMenu;IILcom/prineside/tdi2/tiles/CoreTile;Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;)V

    invoke-virtual {v12, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    iget-object v0, v6, Lcom/prineside/tdi2/ui/components/CoreMenu;->n:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, v12}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    move/from16 v5, v20

    invoke-virtual {v7, v5, v8}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgradeInstallLevel(II)I

    move-result v0

    move-object/from16 v1, v19

    iget-object v2, v1, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->upgradeLevels:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    const-string v3, "icon-"

    const/high16 v10, 0x42000000    # 32.0f

    if-lt v0, v2, :cond_5

    iget-boolean v0, v1, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->isAction:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->triggeredActionManager:Lcom/prineside/tdi2/managers/TriggeredActionManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->getActionType()Lcom/prineside/tdi2/enums/TriggeredActionType;

    move-result-object v2

    sget-object v3, Lcom/prineside/tdi2/ui/components/CoreMenu;->B:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v2, v11, v3}, Lcom/prineside/tdi2/managers/TriggeredActionManager;->generateIcon(Lcom/prineside/tdi2/enums/TriggeredActionType;FLcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    invoke-virtual {v0, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_1
    move/from16 v25, v13

    move/from16 v22, v14

    move/from16 v21, v15

    goto/16 :goto_a

    :cond_2
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->getGameValueType()Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/managers/GameValueManager;->getStockValueConfig(Lcom/prineside/tdi2/enums/GameValueType;)Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->getIcon()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    const/4 v2, 0x0

    :goto_2
    iget v4, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v4, :cond_1

    iget-object v4, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/utils/TextureRegionConfig;

    aget-object v4, v4, v2

    invoke-virtual {v4, v10, v10, v11}, Lcom/prineside/tdi2/utils/TextureRegionConfig;->createImage(FFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v9

    iget-object v10, v4, Lcom/prineside/tdi2/utils/TextureRegionConfig;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    instance-of v11, v10, Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    if-eqz v11, :cond_3

    check-cast v10, Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    iget-object v10, v10, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->name:Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    sget-object v10, Lcom/prineside/tdi2/ui/components/CoreMenu;->B:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_3
    iget-object v4, v4, Lcom/prineside/tdi2/utils/TextureRegionConfig;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v4

    sget-object v10, Lcom/prineside/tdi2/managers/GameValueManager;->ICON_BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v10

    cmpl-float v4, v4, v10

    if-nez v4, :cond_4

    sget-object v4, Lcom/prineside/tdi2/ui/components/CoreMenu;->y:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_4
    invoke-virtual {v12, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v2, v2, 0x1

    const/high16 v9, 0x41800000    # 16.0f

    const/high16 v10, 0x42000000    # 32.0f

    const/high16 v11, 0x42800000    # 64.0f

    goto :goto_2

    :cond_5
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    invoke-virtual {v7, v5, v8}, Lcom/prineside/tdi2/tiles/CoreTile;->canUpgradeBeInstalled(II)Z

    move-result v2

    iget-object v4, v6, Lcom/prineside/tdi2/ui/components/CoreMenu;->u:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v4}, Lcom/prineside/tdi2/systems/GameStateSystem;->getMoney()I

    move-result v4

    invoke-virtual {v7, v5, v8}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgradeInstallLevel(II)I

    move-result v9

    iget-object v10, v1, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->upgradeLevels:Lcom/badlogic/gdx/utils/Array;

    iget-object v10, v10, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v10, [Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;

    aget-object v9, v10, v9

    iget-boolean v10, v1, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->costsCoins:Z

    if-eqz v10, :cond_6

    iget v10, v9, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->price:I

    if-gt v10, v4, :cond_7

    goto :goto_3

    :cond_6
    iget v4, v9, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->price:I

    if-gt v4, v15, :cond_7

    :goto_3
    const/4 v4, 0x1

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    :goto_4
    if-eqz v2, :cond_c

    if-eqz v4, :cond_c

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    move/from16 v21, v15

    const-string v15, "ui-core-menu-upgrade-button"

    invoke-virtual {v11, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v11, 0x42c80000    # 100.0f

    const/high16 v15, 0x42c80000    # 100.0f

    invoke-virtual {v10, v11, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v11, 0x41400000    # 12.0f

    const/high16 v15, 0x41800000    # 16.0f

    invoke-virtual {v10, v15, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v11, Lcom/prineside/tdi2/ui/components/CoreMenu;->B:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v11

    const v15, 0x3f4ccccd    # 0.8f

    move/from16 v22, v14

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v11, v15, v15, v15, v14}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v12, v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-boolean v10, v1, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->isAction:Z

    if-eqz v10, :cond_9

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->triggeredActionManager:Lcom/prineside/tdi2/managers/TriggeredActionManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->getActionType()Lcom/prineside/tdi2/enums/TriggeredActionType;

    move-result-object v10

    sget-object v11, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    const/high16 v14, 0x42800000    # 64.0f

    invoke-virtual {v3, v10, v14, v11}, Lcom/prineside/tdi2/managers/TriggeredActionManager;->generateIcon(Lcom/prineside/tdi2/enums/TriggeredActionType;FLcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v3

    const/high16 v10, 0x42000000    # 32.0f

    invoke-virtual {v3, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v12, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_8
    move/from16 v25, v13

    const/4 v10, 0x0

    goto/16 :goto_9

    :cond_9
    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->getGameValueType()Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/managers/GameValueManager;->getStockValueConfig(Lcom/prineside/tdi2/enums/GameValueType;)Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->getIcon()Lcom/badlogic/gdx/utils/Array;

    move-result-object v10

    const/4 v11, 0x0

    :goto_5
    iget v14, v10, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v11, v14, :cond_8

    iget-object v14, v10, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v14, [Lcom/prineside/tdi2/utils/TextureRegionConfig;

    aget-object v14, v14, v11

    move-object/from16 v24, v10

    move/from16 v25, v13

    const/high16 v10, 0x42000000    # 32.0f

    const/high16 v15, 0x42800000    # 64.0f

    invoke-virtual {v14, v10, v10, v15}, Lcom/prineside/tdi2/utils/TextureRegionConfig;->createImage(FFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v13

    iget-object v10, v14, Lcom/prineside/tdi2/utils/TextureRegionConfig;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v10

    sget-object v15, Lcom/prineside/tdi2/managers/GameValueManager;->ICON_BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v15

    cmpl-float v10, v10, v15

    if-nez v10, :cond_b

    iget-object v10, v14, Lcom/prineside/tdi2/utils/TextureRegionConfig;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    instance-of v14, v10, Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    if-eqz v14, :cond_a

    check-cast v10, Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    iget-object v10, v10, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->name:Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    sget-object v10, Lcom/prineside/tdi2/ui/components/CoreMenu;->B:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v13, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v10

    const v14, 0x3f4ccccd    # 0.8f

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual {v10, v14, v14, v14, v15}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    const/4 v10, 0x0

    goto :goto_6

    :cond_a
    const v14, 0x3f4ccccd    # 0.8f

    const/4 v10, 0x0

    invoke-virtual {v13, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_6

    :cond_b
    const/4 v10, 0x0

    const v14, 0x3f4ccccd    # 0.8f

    :goto_6
    invoke-virtual {v12, v13}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v10, v24

    move/from16 v13, v25

    const v15, 0x3f4ccccd    # 0.8f

    goto :goto_5

    :cond_c
    move/from16 v25, v13

    move/from16 v22, v14

    move/from16 v21, v15

    const/4 v10, 0x0

    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v14, "blank"

    invoke-virtual {v13, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v13

    invoke-direct {v11, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v13, 0x42c00000    # 96.0f

    const/high16 v14, 0x42c00000    # 96.0f

    invoke-virtual {v11, v13, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v13, 0x41800000    # 16.0f

    invoke-virtual {v11, v13, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const v14, 0x3e8f5c29    # 0.28f

    const/4 v15, 0x0

    invoke-virtual {v11, v15, v15, v15, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    sget-object v14, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P900:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v14}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v12, v11}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-boolean v11, v1, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->isAction:Z

    if-eqz v11, :cond_d

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->triggeredActionManager:Lcom/prineside/tdi2/managers/TriggeredActionManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->getActionType()Lcom/prineside/tdi2/enums/TriggeredActionType;

    move-result-object v11

    new-instance v14, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v13, 0x3f800000    # 1.0f

    const v15, 0x3f0f5c29    # 0.56f

    invoke-direct {v14, v15, v15, v15, v13}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    const/high16 v13, 0x42800000    # 64.0f

    invoke-virtual {v3, v11, v13, v14}, Lcom/prineside/tdi2/managers/TriggeredActionManager;->generateIcon(Lcom/prineside/tdi2/enums/TriggeredActionType;FLcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v3

    const/high16 v11, 0x42000000    # 32.0f

    invoke-virtual {v3, v11, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v12, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_9

    :cond_d
    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->getGameValueType()Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/prineside/tdi2/managers/GameValueManager;->getStockValueConfig(Lcom/prineside/tdi2/enums/GameValueType;)Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;

    move-result-object v11

    invoke-virtual {v11}, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->getIcon()Lcom/badlogic/gdx/utils/Array;

    move-result-object v11

    const/4 v13, 0x0

    :goto_7
    iget v14, v11, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v13, v14, :cond_10

    iget-object v14, v11, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v14, [Lcom/prineside/tdi2/utils/TextureRegionConfig;

    aget-object v14, v14, v13

    move-object/from16 v23, v11

    const/high16 v10, 0x42000000    # 32.0f

    const/high16 v15, 0x42800000    # 64.0f

    invoke-virtual {v14, v10, v10, v15}, Lcom/prineside/tdi2/utils/TextureRegionConfig;->createImage(FFF)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    move-result-object v11

    iget-object v10, v14, Lcom/prineside/tdi2/utils/TextureRegionConfig;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v10

    sget-object v15, Lcom/prineside/tdi2/managers/GameValueManager;->ICON_BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v15}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v15

    cmpl-float v10, v10, v15

    if-nez v10, :cond_f

    iget-object v10, v14, Lcom/prineside/tdi2/utils/TextureRegionConfig;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    instance-of v14, v10, Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    if-eqz v14, :cond_e

    check-cast v10, Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    iget-object v10, v10, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->name:Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    sget-object v10, Lcom/prineside/tdi2/ui/components/CoreMenu;->y:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v11, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_8

    :cond_e
    const/4 v10, 0x0

    invoke-virtual {v11, v10, v10, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    goto :goto_8

    :cond_f
    invoke-virtual {v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v10

    const v14, 0x3f0f5c29    # 0.56f

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual {v10, v14, v14, v14, v15}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_8
    invoke-virtual {v12, v11}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v11, v23

    const/4 v10, 0x0

    goto :goto_7

    :cond_10
    :goto_9
    const/high16 v3, 0x42ce0000    # 103.0f

    iget-boolean v10, v1, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->costsCoins:Z

    if-eqz v10, :cond_11

    const/high16 v3, 0x42be0000    # 95.0f

    :cond_11
    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget v11, v9, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->price:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v14, 0x18

    invoke-virtual {v13, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v13

    invoke-direct {v10, v11, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v10, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v11, 0x40000000    # 2.0f

    sub-float v11, v3, v11

    const/high16 v13, 0x41c80000    # 25.0f

    invoke-virtual {v10, v11, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v11, 0x41900000    # 18.0f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v10, v13, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/16 v13, 0x10

    invoke-virtual {v10, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v12, v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget v13, v9, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->price:I

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v15, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v15

    invoke-direct {v10, v13, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v10, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v0, 0x41c80000    # 25.0f

    invoke-virtual {v10, v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v10, v0, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/16 v0, 0x10

    invoke-virtual {v10, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-virtual {v12, v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget v9, v9, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->price:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v10, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v10

    invoke-direct {v0, v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const/high16 v9, 0x41b80000    # 23.0f

    invoke-virtual {v0, v3, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v0, v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/16 v9, 0x10

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    if-eqz v2, :cond_12

    if-nez v4, :cond_13

    :cond_12
    sget-object v2, Lcom/prineside/tdi2/ui/components/CoreMenu;->B:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_13
    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-boolean v2, v1, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->costsCoins:Z

    if-eqz v2, :cond_14

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v9, "icon-coin"

    invoke-virtual {v4, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v4, 0x40400000    # 3.0f

    add-float/2addr v3, v4

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v3, 0x41c00000    # 24.0f

    invoke-virtual {v2, v3, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$YELLOW;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v12, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :cond_14
    :goto_a
    iget-object v0, v1, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->upgradeLevels:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x1

    if-le v0, v2, :cond_16

    invoke-virtual {v7, v5, v8}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgradeInstallLevel(II)I

    move-result v0

    const/4 v2, 0x0

    :goto_b
    iget-object v3, v1, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->upgradeLevels:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v3, :cond_16

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v9, "icon-triangle-top-hollow"

    invoke-virtual {v4, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v4, 0x41c00000    # 24.0f

    invoke-virtual {v3, v4, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v9, 0x41700000    # 15.0f

    const/high16 v10, 0x41400000    # 12.0f

    int-to-float v11, v2

    const/high16 v13, 0x41300000    # 11.0f

    mul-float v11, v11, v13

    add-float/2addr v11, v10

    invoke-virtual {v3, v9, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    if-le v0, v2, :cond_15

    sget-object v9, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_c

    :cond_15
    const v9, 0x3f0f5c29    # 0.56f

    const/4 v10, 0x0

    invoke-virtual {v3, v10, v10, v10, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    :goto_c
    invoke-virtual {v12, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_16
    sget-object v0, Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;->values:[Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_19

    aget-object v4, v0, v3

    invoke-virtual {v1, v4}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->hasLink(Lcom/prineside/tdi2/tiles/CoreTile$LinkDirection;)Z

    move-result v9

    if-eqz v9, :cond_18

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-direct {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>()V

    const/high16 v10, 0x42000000    # 32.0f

    invoke-virtual {v9, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v11, Lcom/prineside/tdi2/ui/components/CoreMenu$2;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v11, v4

    const/high16 v11, 0x42400000    # 48.0f

    const/high16 v13, -0x3e800000    # -16.0f

    const/high16 v14, 0x42e00000    # 112.0f

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_e

    :pswitch_0
    invoke-virtual {v9, v14, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v11, "tiny-arrow-bottom-right"

    invoke-virtual {v4, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    goto/16 :goto_e

    :pswitch_1
    invoke-virtual {v9, v13, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v11, "tiny-arrow-bottom-left"

    invoke-virtual {v4, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    goto :goto_e

    :pswitch_2
    invoke-virtual {v9, v14, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v11, "tiny-arrow-top-right"

    invoke-virtual {v4, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    goto :goto_e

    :pswitch_3
    invoke-virtual {v9, v13, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v11, "tiny-arrow-top-left"

    invoke-virtual {v4, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    goto :goto_e

    :pswitch_4
    invoke-virtual {v9, v14, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v11, "tiny-arrow-right"

    invoke-virtual {v4, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    goto :goto_e

    :pswitch_5
    invoke-virtual {v9, v13, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v11, "tiny-arrow-left"

    invoke-virtual {v4, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    goto :goto_e

    :pswitch_6
    invoke-virtual {v9, v11, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v11, "tiny-arrow-bottom"

    invoke-virtual {v4, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    goto :goto_e

    :pswitch_7
    invoke-virtual {v9, v11, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v11, "tiny-arrow-top"

    invoke-virtual {v4, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    :goto_e
    invoke-virtual {v7, v5, v8}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgradeInstallLevel(II)I

    move-result v4

    if-lez v4, :cond_17

    sget-object v4, Lcom/prineside/tdi2/ui/components/CoreMenu;->B:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/4 v11, 0x0

    goto :goto_f

    :cond_17
    const v4, 0x3e8f5c29    # 0.28f

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v11, v11, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    :goto_f
    invoke-virtual {v12, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_10

    :cond_18
    const/high16 v10, 0x42000000    # 32.0f

    const/4 v11, 0x0

    :goto_10
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_d

    :cond_19
    const/4 v11, 0x0

    iget v0, v6, Lcom/prineside/tdi2/ui/components/CoreMenu;->r:I

    if-ne v5, v0, :cond_1a

    iget v0, v6, Lcom/prineside/tdi2/ui/components/CoreMenu;->s:I

    if-ne v8, v0, :cond_1a

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "ui-core-menu-upgrade-selection"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v1, 0x42dc0000    # 110.0f

    const/high16 v2, 0x42dc0000    # 110.0f

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v1, 0x41100000    # 9.0f

    const/high16 v2, 0x41100000    # 9.0f

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v12, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_1a
    :goto_11
    add-int/lit8 v2, v5, 0x1

    move v4, v8

    move/from16 v15, v21

    move/from16 v14, v22

    move/from16 v13, v25

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x41800000    # 16.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f0f5c29    # 0.56f

    const/4 v12, 0x1

    goto/16 :goto_1

    :cond_1b
    move v8, v4

    move/from16 v25, v13

    move/from16 v22, v14

    move/from16 v21, v15

    const/4 v11, 0x0

    add-int/lit8 v4, v8, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x41800000    # 16.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f0f5c29    # 0.56f

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_1c
    move/from16 v25, v13

    move/from16 v22, v14

    move/from16 v21, v15

    iget-object v0, v6, Lcom/prineside/tdi2/ui/components/CoreMenu;->b:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_2b

    iget v0, v6, Lcom/prineside/tdi2/ui/components/CoreMenu;->r:I

    if-ltz v0, :cond_2a

    move/from16 v2, v25

    if-ge v0, v2, :cond_2a

    iget v2, v6, Lcom/prineside/tdi2/ui/components/CoreMenu;->s:I

    if-ltz v2, :cond_2a

    move/from16 v3, v22

    if-ge v2, v3, :cond_2a

    invoke-virtual {v7, v0, v2}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgrade(II)Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;

    move-result-object v0

    if-eqz v0, :cond_29

    iget v2, v6, Lcom/prineside/tdi2/ui/components/CoreMenu;->r:I

    iget v3, v6, Lcom/prineside/tdi2/ui/components/CoreMenu;->s:I

    invoke-virtual {v7, v2, v3}, Lcom/prineside/tdi2/tiles/CoreTile;->getUpgradeInstallLevel(II)I

    move-result v2

    iget-object v3, v0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->upgradeLevels:Lcom/badlogic/gdx/utils/Array;

    iget v4, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    const-string v5, "\n"

    const-string v7, " [#"

    const-string v8, "[]"

    const-string v9, "]"

    if-ge v2, v4, :cond_21

    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;

    aget-object v3, v3, v2

    iget-boolean v4, v0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->isAction:Z

    if-eqz v4, :cond_1f

    sget-object v4, Lcom/prineside/tdi2/ui/components/CoreMenu;->A:Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-boolean v10, v0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->isAction:Z

    if-eqz v10, :cond_1d

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->triggeredActionManager:Lcom/prineside/tdi2/managers/TriggeredActionManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->getActionType()Lcom/prineside/tdi2/enums/TriggeredActionType;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/managers/TriggeredActionManager;->getTitleAlias(Lcom/prineside/tdi2/enums/TriggeredActionType;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[#"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/prineside/tdi2/ui/components/CoreMenu;->B:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/Color;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->delta:F

    float-to-double v12, v3

    const/4 v3, 0x1

    invoke-static {v12, v13, v1, v3}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DIZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v12, v12, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    new-array v13, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v11, v13, v3

    invoke-virtual {v12, v10, v13}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_14

    :cond_1d
    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->getGameValueType()Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/managers/GameValueManager;->getTitle(Lcom/prineside/tdi2/enums/GameValueType;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_1e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->upgradeLevels:Lcom/badlogic/gdx/utils/Array;

    iget-object v10, v10, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v10, [Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;

    add-int/lit8 v11, v2, -0x1

    aget-object v10, v10, v11

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    iget v10, v10, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->delta:F

    float-to-double v12, v10

    invoke-virtual {v0}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->getGameValueType()Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/prineside/tdi2/managers/GameValueManager;->getStockValueConfig(Lcom/prineside/tdi2/enums/GameValueType;)Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;

    move-result-object v10

    iget-object v10, v10, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->units:Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

    invoke-virtual {v11, v12, v13, v10}, Lcom/prineside/tdi2/managers/GameValueManager;->formatEffectValue(DLcom/prineside/tdi2/managers/GameValueManager$ValueUnits;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v10, " >> [#"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/prineside/tdi2/ui/components/CoreMenu;->B:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Color;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    iget v3, v3, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->delta:F

    float-to-double v11, v3

    invoke-virtual {v0}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->getGameValueType()Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/prineside/tdi2/managers/GameValueManager;->getStockValueConfig(Lcom/prineside/tdi2/enums/GameValueType;)Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->units:Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

    invoke-virtual {v10, v11, v12, v3}, Lcom/prineside/tdi2/managers/GameValueManager;->formatEffectValue(DLcom/prineside/tdi2/managers/GameValueManager$ValueUnits;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_12

    :cond_1e
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/prineside/tdi2/ui/components/CoreMenu;->B:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Color;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    iget v3, v3, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->delta:F

    float-to-double v11, v3

    invoke-virtual {v0}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->getGameValueType()Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/prineside/tdi2/managers/GameValueManager;->getStockValueConfig(Lcom/prineside/tdi2/enums/GameValueType;)Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->units:Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

    invoke-virtual {v10, v11, v12, v3}, Lcom/prineside/tdi2/managers/GameValueManager;->formatEffectValue(DLcom/prineside/tdi2/managers/GameValueManager$ValueUnits;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_12
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_14

    :cond_1f
    sget-object v4, Lcom/prineside/tdi2/ui/components/CoreMenu;->A:Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->getGameValueType()Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/managers/GameValueManager;->getTitle(Lcom/prineside/tdi2/enums/GameValueType;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->upgradeLevels:Lcom/badlogic/gdx/utils/Array;

    iget-object v10, v10, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v10, [Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;

    add-int/lit8 v11, v2, -0x1

    aget-object v10, v10, v11

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    iget v10, v10, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->delta:F

    float-to-double v12, v10

    invoke-virtual {v0}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->getGameValueType()Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/prineside/tdi2/managers/GameValueManager;->getStockValueConfig(Lcom/prineside/tdi2/enums/GameValueType;)Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;

    move-result-object v10

    iget-object v10, v10, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->units:Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

    invoke-virtual {v11, v12, v13, v10}, Lcom/prineside/tdi2/managers/GameValueManager;->formatEffectValue(DLcom/prineside/tdi2/managers/GameValueManager$ValueUnits;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v10, " >> [#"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/prineside/tdi2/ui/components/CoreMenu;->B:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Color;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    iget v3, v3, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->delta:F

    float-to-double v11, v3

    invoke-virtual {v0}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->getGameValueType()Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/prineside/tdi2/managers/GameValueManager;->getStockValueConfig(Lcom/prineside/tdi2/enums/GameValueType;)Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->units:Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

    invoke-virtual {v10, v11, v12, v3}, Lcom/prineside/tdi2/managers/GameValueManager;->formatEffectValue(DLcom/prineside/tdi2/managers/GameValueManager$ValueUnits;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_13

    :cond_20
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/prineside/tdi2/ui/components/CoreMenu;->B:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Color;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    iget v3, v3, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->delta:F

    float-to-double v11, v3

    invoke-virtual {v0}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->getGameValueType()Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/prineside/tdi2/managers/GameValueManager;->getStockValueConfig(Lcom/prineside/tdi2/enums/GameValueType;)Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->units:Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

    invoke-virtual {v10, v11, v12, v3}, Lcom/prineside/tdi2/managers/GameValueManager;->formatEffectValue(DLcom/prineside/tdi2/managers/GameValueManager$ValueUnits;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_13
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_14

    :cond_21
    iget-object v3, v3, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v3, [Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;

    add-int/lit8 v4, v2, -0x1

    aget-object v3, v3, v4

    iget-boolean v4, v0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->isAction:Z

    if-eqz v4, :cond_23

    sget-object v4, Lcom/prineside/tdi2/ui/components/CoreMenu;->A:Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-boolean v10, v0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->isAction:Z

    if-eqz v10, :cond_22

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->triggeredActionManager:Lcom/prineside/tdi2/managers/TriggeredActionManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->getActionType()Lcom/prineside/tdi2/enums/TriggeredActionType;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/managers/TriggeredActionManager;->getTitleAlias(Lcom/prineside/tdi2/enums/TriggeredActionType;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[#"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/prineside/tdi2/ui/components/CoreMenu;->B:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/Color;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->delta:F

    float-to-double v12, v3

    const/4 v3, 0x1

    invoke-static {v12, v13, v1, v3}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DIZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v12, v12, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    new-array v13, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v11, v13, v3

    invoke-virtual {v12, v10, v13}, Lcom/prineside/tdi2/utils/I18NBundle;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    :cond_22
    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->getGameValueType()Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/managers/GameValueManager;->getTitle(Lcom/prineside/tdi2/enums/GameValueType;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/prineside/tdi2/ui/components/CoreMenu;->B:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Color;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    iget v3, v3, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->delta:F

    float-to-double v11, v3

    invoke-virtual {v0}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->getGameValueType()Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/prineside/tdi2/managers/GameValueManager;->getStockValueConfig(Lcom/prineside/tdi2/enums/GameValueType;)Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->units:Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

    invoke-virtual {v10, v11, v12, v3}, Lcom/prineside/tdi2/managers/GameValueManager;->formatEffectValue(DLcom/prineside/tdi2/managers/GameValueManager$ValueUnits;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    :cond_23
    sget-object v4, Lcom/prineside/tdi2/ui/components/CoreMenu;->A:Ljava/lang/StringBuilder;

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->getGameValueType()Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/managers/GameValueManager;->getTitle(Lcom/prineside/tdi2/enums/GameValueType;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/prineside/tdi2/ui/components/CoreMenu;->B:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Color;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    iget v3, v3, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->delta:F

    float-to-double v11, v3

    invoke-virtual {v0}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->getGameValueType()Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/prineside/tdi2/managers/GameValueManager;->getStockValueConfig(Lcom/prineside/tdi2/enums/GameValueType;)Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;

    move-result-object v3

    iget-object v3, v3, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->units:Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

    invoke-virtual {v10, v11, v12, v3}, Lcom/prineside/tdi2/managers/GameValueManager;->formatEffectValue(DLcom/prineside/tdi2/managers/GameValueManager$ValueUnits;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_14
    iget-object v3, v0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->upgradeLevels:Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_28

    sget-object v3, Lcom/prineside/tdi2/ui/components/CoreMenu;->A:Ljava/lang/StringBuilder;

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :goto_15
    iget-object v4, v0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->upgradeLevels:Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v4, :cond_28

    sget-object v4, Lcom/prineside/tdi2/ui/components/CoreMenu;->A:Ljava/lang/StringBuilder;

    const-string v10, "[#888888]L"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ":[] "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v3, v2, :cond_24

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lcom/prineside/tdi2/ui/components/CoreMenu;->B:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v11}, Lcom/badlogic/gdx/graphics/Color;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_24
    iget-boolean v11, v0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->isAction:Z

    if-eqz v11, :cond_25

    iget-object v11, v0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->upgradeLevels:Lcom/badlogic/gdx/utils/Array;

    iget-object v11, v11, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v11, [Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;

    aget-object v11, v11, v3

    iget v11, v11, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->delta:F

    float-to-double v11, v11

    const/4 v13, 0x1

    invoke-static {v11, v12, v1, v13}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DIZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_16

    :cond_25
    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    iget-object v12, v0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->upgradeLevels:Lcom/badlogic/gdx/utils/Array;

    iget-object v12, v12, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v12, [Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;

    aget-object v12, v12, v3

    iget v12, v12, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade$UpgradeLevel;->delta:F

    float-to-double v12, v12

    invoke-virtual {v0}, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->getGameValueType()Lcom/prineside/tdi2/enums/GameValueType;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/prineside/tdi2/managers/GameValueManager;->getStockValueConfig(Lcom/prineside/tdi2/enums/GameValueType;)Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;

    move-result-object v14

    iget-object v14, v14, Lcom/prineside/tdi2/managers/GameValueManager$GameValueStockConfig;->units:Lcom/prineside/tdi2/managers/GameValueManager$ValueUnits;

    invoke-virtual {v11, v12, v13, v14}, Lcom/prineside/tdi2/managers/GameValueManager;->formatEffectValue(DLcom/prineside/tdi2/managers/GameValueManager$ValueUnits;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_16
    if-ge v3, v2, :cond_26

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_26
    iget-object v11, v0, Lcom/prineside/tdi2/tiles/CoreTile$Upgrade;->upgradeLevels:Lcom/badlogic/gdx/utils/Array;

    iget v11, v11, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    if-eq v3, v11, :cond_27

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_27
    move v3, v10

    goto :goto_15

    :cond_28
    iget-object v0, v6, Lcom/prineside/tdi2/ui/components/CoreMenu;->a:Lcom/prineside/tdi2/ui/actors/SideMenu;

    sget-object v2, Lcom/prineside/tdi2/ui/components/CoreMenu;->A:Ljava/lang/StringBuilder;

    iget v3, v6, Lcom/prineside/tdi2/ui/components/CoreMenu;->s:I

    int-to-float v3, v3

    mul-float v3, v3, v16

    sub-float v18, v18, v3

    const/high16 v3, 0x42800000    # 64.0f

    add-float v3, v18, v3

    invoke-virtual {v0, v2, v3}, Lcom/prineside/tdi2/ui/actors/SideMenu;->showSideTooltip(Ljava/lang/CharSequence;F)V

    goto :goto_17

    :cond_29
    iget-object v0, v6, Lcom/prineside/tdi2/ui/components/CoreMenu;->a:Lcom/prineside/tdi2/ui/actors/SideMenu;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/actors/SideMenu;->hideSideTooltip()V

    goto :goto_17

    :cond_2a
    iget-object v0, v6, Lcom/prineside/tdi2/ui/components/CoreMenu;->a:Lcom/prineside/tdi2/ui/actors/SideMenu;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/actors/SideMenu;->hideSideTooltip()V

    :cond_2b
    :goto_17
    iget-object v0, v6, Lcom/prineside/tdi2/ui/components/CoreMenu;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move/from16 v2, v21

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(I)Z

    if-lez v2, :cond_2c

    iget-object v0, v6, Lcom/prineside/tdi2/ui/components/CoreMenu;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v2, Lcom/prineside/tdi2/ui/components/CoreMenu;->B:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, v6, Lcom/prineside/tdi2/ui/components/CoreMenu;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v0, v6, Lcom/prineside/tdi2/ui/components/CoreMenu;->o:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    const/4 v5, 0x0

    :goto_18
    iget-object v0, v6, Lcom/prineside/tdi2/ui/components/CoreMenu;->p:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v0, :cond_2d

    iget-object v0, v6, Lcom/prineside/tdi2/ui/components/CoreMenu;->p:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getTint()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [F

    sget-object v3, Lcom/prineside/tdi2/ui/components/CoreMenu;->B:Lcom/badlogic/gdx/graphics/Color;

    iget v4, v3, Lcom/badlogic/gdx/graphics/Color;->r:F

    const/4 v7, 0x0

    aput v4, v2, v7

    iget v4, v3, Lcom/badlogic/gdx/graphics/Color;->g:F

    const/4 v7, 0x1

    aput v4, v2, v7

    iget v3, v3, Lcom/badlogic/gdx/graphics/Color;->b:F

    aput v3, v2, v1

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->setColors([F)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    :cond_2c
    iget-object v0, v6, Lcom/prineside/tdi2/ui/components/CoreMenu;->m:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const v1, 0x3f0f5c29    # 0.56f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v0, v6, Lcom/prineside/tdi2/ui/components/CoreMenu;->l:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v0, v6, Lcom/prineside/tdi2/ui/components/CoreMenu;->o:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/components/CoreMenu;->k()I

    move-result v0

    iput v0, v6, Lcom/prineside/tdi2/ui/components/CoreMenu;->t:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final n()V
    .locals 6

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/CoreMenu;->u:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getSelectedTile()Lcom/prineside/tdi2/Tile;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v2, Lcom/prineside/tdi2/enums/TileType;->CORE:Lcom/prineside/tdi2/enums/TileType;

    if-ne v1, v2, :cond_1

    check-cast v0, Lcom/prineside/tdi2/tiles/CoreTile;

    sget-object v1, Lcom/prineside/tdi2/ui/components/CoreMenu;->A:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v3, "L"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/prineside/tdi2/tiles/CoreTile;->getLevel()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/CoreMenu;->g:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/CoreMenu;->q:Lcom/prineside/tdi2/ui/actors/ExpLine;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->tileManager:Lcom/prineside/tdi2/managers/TileManager;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/TileManager;->F:Lcom/prineside/tdi2/managers/TileManager$Factories;

    iget-object v4, v4, Lcom/prineside/tdi2/managers/TileManager$Factories;->CORE:Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;

    invoke-virtual {v0}, Lcom/prineside/tdi2/tiles/CoreTile;->getTier()Lcom/prineside/tdi2/tiles/CoreTile$Tier;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/tiles/CoreTile$CoreTileFactory;->getTierColor(Lcom/prineside/tdi2/tiles/CoreTile$Tier;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/ui/actors/ExpLine;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/CoreMenu;->q:Lcom/prineside/tdi2/ui/actors/ExpLine;

    invoke-virtual {v0}, Lcom/prineside/tdi2/tiles/CoreTile;->getCurrentLevelExperience()F

    move-result v4

    invoke-virtual {v0}, Lcom/prineside/tdi2/tiles/CoreTile;->getNextLevelExperience()F

    move-result v5

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/ui/actors/ExpLine;->setCoeff(F)V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/CoreMenu;->h:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/prineside/tdi2/tiles/CoreTile;->getCurrentLevelExperience()F

    move-result v5

    invoke-static {v5}, Ljava/lang/StrictMath;->round(F)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/prineside/tdi2/tiles/CoreTile;->getNextLevelExperience()F

    move-result v5

    invoke-static {v5}, Ljava/lang/StrictMath;->round(F)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " XP"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget v3, v0, Lcom/prineside/tdi2/tiles/CoreTile;->doubleSpeedTimeLeft:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v2, "x2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/prineside/tdi2/tiles/CoreTile;->doubleSpeedTimeLeft:F

    invoke-static {v0}, Ljava/lang/StrictMath;->round(F)I

    move-result v0

    invoke-static {v0}, Lcom/prineside/tdi2/utils/StringFormatter;->digestTime(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/CoreMenu;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/CoreMenu;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/CoreMenu;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/CoreMenu;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/CoreMenu;->i:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/CoreMenu;->j:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :cond_1
    :goto_0
    return-void
.end method
