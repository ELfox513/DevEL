.class public Lcom/prineside/tdi2/ui/components/ModifierMenu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/ui/components/ModifierMenu$_SideMenuListener;,
        Lcom/prineside/tdi2/ui/components/ModifierMenu$_MapSystemListener;,
        Lcom/prineside/tdi2/ui/components/ModifierMenu$_ModifierSystemListener;
    }
.end annotation


# static fields
.field public static final C:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field public final A:Lcom/prineside/tdi2/ui/components/ModifierMenu$_MapSystemListener;

.field public final B:Lcom/prineside/tdi2/ui/components/ModifierMenu$_ModifierSystemListener;

.field public final a:Lcom/prineside/tdi2/ui/actors/SideMenu;

.field public final b:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

.field public d:Z

.field public final k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final q:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public r:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Lcom/prineside/tdi2/ui/components/SellButton;

.field public t:Lcom/prineside/tdi2/ui/actors/ComplexButton;

.field public u:Lcom/badlogic/gdx/InputAdapter;

.field public v:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public w:I

.field public x:Z

.field public final y:Lcom/prineside/tdi2/GameSystemProvider;

.field public final z:Lcom/prineside/tdi2/ui/components/ModifierMenu$_SideMenuListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->C:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/ui/actors/SideMenu;Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->r:Lcom/badlogic/gdx/utils/ObjectMap;

    const/4 v3, -0x1

    iput v3, v0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->w:I

    new-instance v3, Lcom/prineside/tdi2/ui/components/ModifierMenu$_SideMenuListener;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/prineside/tdi2/ui/components/ModifierMenu$_SideMenuListener;-><init>(Lcom/prineside/tdi2/ui/components/ModifierMenu;Lcom/prineside/tdi2/ui/components/ModifierMenu$1;)V

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->z:Lcom/prineside/tdi2/ui/components/ModifierMenu$_SideMenuListener;

    new-instance v5, Lcom/prineside/tdi2/ui/components/ModifierMenu$_MapSystemListener;

    invoke-direct {v5, v0, v4}, Lcom/prineside/tdi2/ui/components/ModifierMenu$_MapSystemListener;-><init>(Lcom/prineside/tdi2/ui/components/ModifierMenu;Lcom/prineside/tdi2/ui/components/ModifierMenu$1;)V

    iput-object v5, v0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->A:Lcom/prineside/tdi2/ui/components/ModifierMenu$_MapSystemListener;

    new-instance v6, Lcom/prineside/tdi2/ui/components/ModifierMenu$_ModifierSystemListener;

    invoke-direct {v6, v0, v4}, Lcom/prineside/tdi2/ui/components/ModifierMenu$_ModifierSystemListener;-><init>(Lcom/prineside/tdi2/ui/components/ModifierMenu;Lcom/prineside/tdi2/ui/components/ModifierMenu$1;)V

    iput-object v6, v0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->B:Lcom/prineside/tdi2/ui/components/ModifierMenu$_ModifierSystemListener;

    iput-object v2, v0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->y:Lcom/prineside/tdi2/GameSystemProvider;

    iput-object v1, v0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->a:Lcom/prineside/tdi2/ui/actors/SideMenu;

    invoke-virtual/range {p1 .. p1}, Lcom/prineside/tdi2/ui/actors/SideMenu;->createContainer()Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    move-result-object v4

    iput-object v4, v0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->b:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    const-string v7, "modifier_menu_container"

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v7}, Lcom/prineside/tdi2/managers/SettingsManager;->getScaledViewportHeight()I

    move-result v7

    add-int/lit16 v7, v7, -0x438

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v11, 0x24

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v10

    sget-object v11, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v9, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    const-string v10, ""

    invoke-direct {v8, v10, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v8, v0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v9, 0x44020000    # 520.0f

    const/high16 v12, 0x41d00000    # 26.0f

    invoke-virtual {v8, v9, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    int-to-float v7, v7

    const v12, 0x44788000    # 994.0f

    add-float/2addr v12, v7

    const/high16 v13, 0x42200000    # 40.0f

    invoke-virtual {v8, v13, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v15, 0x18

    invoke-virtual {v14, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v14

    invoke-direct {v12, v14, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v8, v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v8, v0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v12, 0x42c80000    # 100.0f

    invoke-virtual {v8, v9, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v9, 0x445d0000    # 884.0f

    add-float/2addr v7, v9

    invoke-virtual {v8, v13, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/16 v7, 0xa

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    const/4 v7, 0x1

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    invoke-virtual {v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v8, v0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const/high16 v12, 0x44160000    # 600.0f

    const/high16 v14, 0x43c80000    # 400.0f

    invoke-virtual {v8, v12, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v12, 0x0

    const/high16 v14, 0x43200000    # 160.0f

    invoke-virtual {v8, v12, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v15, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v12, 0x1e

    invoke-virtual {v8, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v8

    new-instance v12, Lcom/prineside/tdi2/ui/components/ModifierMenu$1;

    invoke-direct {v12, v0, v2}, Lcom/prineside/tdi2/ui/components/ModifierMenu$1;-><init>(Lcom/prineside/tdi2/ui/components/ModifierMenu;Lcom/prineside/tdi2/GameSystemProvider;)V

    invoke-direct {v15, v10, v8, v12}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    iput-object v15, v0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->t:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/high16 v16, 0x42a00000    # 80.0f

    const/high16 v17, 0x41a00000    # 20.0f

    const/high16 v18, 0x43480000    # 200.0f

    const/high16 v19, 0x42200000    # 40.0f

    const/16 v20, 0x8

    invoke-virtual/range {v15 .. v20}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setLabel(FFFFI)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->t:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v8, v8, Lcom/prineside/tdi2/ui/actors/ComplexButton;->label:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->t:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v7, v7, Lcom/prineside/tdi2/ui/actors/ComplexButton;->icon:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v7, v13, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->t:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v7, v7, Lcom/prineside/tdi2/ui/actors/ComplexButton;->icon:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-virtual {v7, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->t:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v7, v13, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->t:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const v8, 0x439a8000    # 309.0f

    const/high16 v12, 0x42a00000    # 80.0f

    invoke-virtual {v7, v8, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v14, v0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->t:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    new-instance v15, Lcom/prineside/tdi2/utils/QuadDrawable;

    new-instance v7, Lcom/prineside/tdi2/ui/actors/QuadActor;

    const/16 v8, 0x8

    new-array v8, v8, [F

    fill-array-data v8, :array_0

    invoke-direct {v7, v11, v8}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-direct {v15, v7}, Lcom/prineside/tdi2/utils/QuadDrawable;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    const v18, 0x439a8000    # 309.0f

    const/high16 v19, 0x42a00000    # 80.0f

    invoke-virtual/range {v14 .. v19}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->t:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v11, 0x15

    invoke-virtual {v8, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v8

    invoke-direct {v7, v10, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v7, v0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->v:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v8, 0x43400000    # 192.0f

    const/high16 v10, 0x41800000    # 16.0f

    invoke-virtual {v7, v8, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->v:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v8, 0x43b80000    # 368.0f

    const/high16 v10, 0x43040000    # 132.0f

    invoke-virtual {v7, v8, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->v:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/16 v10, 0x10

    invoke-virtual {v7, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->v:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v10, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->v:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->v:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v7, Lcom/prineside/tdi2/ui/components/SellButton;

    new-instance v9, Lcom/prineside/tdi2/ui/components/ModifierMenu$2;

    invoke-direct {v9, v0, v2}, Lcom/prineside/tdi2/ui/components/ModifierMenu$2;-><init>(Lcom/prineside/tdi2/ui/components/ModifierMenu;Lcom/prineside/tdi2/GameSystemProvider;)V

    invoke-direct {v7, v9}, Lcom/prineside/tdi2/ui/components/SellButton;-><init>(Ljava/lang/Runnable;)V

    iput-object v7, v0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->s:Lcom/prineside/tdi2/ui/components/SellButton;

    invoke-virtual {v7, v8, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/prineside/tdi2/ui/components/ModifierMenu$3;

    invoke-direct {v4, v0, v2}, Lcom/prineside/tdi2/ui/components/ModifierMenu$3;-><init>(Lcom/prineside/tdi2/ui/components/ModifierMenu;Lcom/prineside/tdi2/GameSystemProvider;)V

    iput-object v4, v0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->u:Lcom/badlogic/gdx/InputAdapter;

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/ui/actors/SideMenu;->addListener(Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuListener;)V

    iget-object v1, v2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1, v5}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object v1, v2, Lcom/prineside/tdi2/GameSystemProvider;->modifier:Lcom/prineside/tdi2/systems/ModifierSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/ModifierSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1, v6}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

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

.method public static synthetic a(Lcom/prineside/tdi2/ui/components/ModifierMenu;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->x:Z

    return p0
.end method

.method public static synthetic b(Lcom/prineside/tdi2/ui/components/ModifierMenu;)Lcom/prineside/tdi2/Modifier;
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/ModifierMenu;->g()Lcom/prineside/tdi2/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c()Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->C:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method public static synthetic d(Lcom/prineside/tdi2/ui/components/ModifierMenu;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/ModifierMenu;->i()V

    return-void
.end method

.method public static synthetic e(Lcom/prineside/tdi2/ui/components/ModifierMenu;)Lcom/prineside/tdi2/GameSystemProvider;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->y:Lcom/prineside/tdi2/GameSystemProvider;

    return-object p0
.end method

.method public static synthetic f(Lcom/prineside/tdi2/ui/components/ModifierMenu;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/components/ModifierMenu;->h(Z)V

    return-void
.end method


# virtual methods
.method public cancelUsingCustomButton()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->y:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_input:Lcom/prineside/tdi2/systems/InputSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/InputSystem;->enableAllInput()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->x:Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/ModifierMenu;->updateCustomButton()V

    return-void
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public draw(F)V
    .locals 4

    iget-boolean p1, p0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->d:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/ModifierMenu;->g()Lcom/prineside/tdi2/Modifier;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->r:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {p1, v0, v1}, Lcom/prineside/tdi2/Modifier;->fillModifierMenu(Lcom/badlogic/gdx/scenes/scene2d/Group;Lcom/badlogic/gdx/utils/ObjectMap;)V

    invoke-virtual {p1}, Lcom/prineside/tdi2/Modifier;->getTimeTillSellAvailable()F

    move-result v0

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->ceil(F)I

    move-result v0

    invoke-virtual {p1}, Lcom/prineside/tdi2/Modifier;->isSellAvailable()Z

    move-result v1

    const/16 v2, 0x1f

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    iget v2, p0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->w:I

    if-eq v1, v2, :cond_2

    iput v1, p0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->w:I

    invoke-virtual {p1}, Lcom/prineside/tdi2/Modifier;->getSellPrice()I

    move-result v1

    invoke-virtual {p1}, Lcom/prineside/tdi2/Modifier;->isSellAvailable()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->s:Lcom/prineside/tdi2/ui/components/SellButton;

    invoke-virtual {p1, v1}, Lcom/prineside/tdi2/ui/components/SellButton;->setPrice(I)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->s:Lcom/prineside/tdi2/ui/components/SellButton;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P900:Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P700:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0, v1, v2}, Lcom/prineside/tdi2/ui/components/SellButton;->setColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->v:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_0

    :cond_1
    int-to-float p1, v1

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float p1, p1, v1

    float-to-int p1, p1

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->s:Lcom/prineside/tdi2/ui/components/SellButton;

    invoke-virtual {v1, p1}, Lcom/prineside/tdi2/ui/components/SellButton;->setPrice(I)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->s:Lcom/prineside/tdi2/ui/components/SellButton;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P800:Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P900:Lcom/badlogic/gdx/graphics/Color;

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P700:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v1, v2, v3}, Lcom/prineside/tdi2/ui/components/SellButton;->setColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->v:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-static {v0}, Lcom/prineside/tdi2/utils/StringFormatter;->digestTime(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->v:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final g()Lcom/prineside/tdi2/Modifier;
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->y:Lcom/prineside/tdi2/GameSystemProvider;

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

    sget-object v3, Lcom/prineside/tdi2/enums/BuildingType;->MODIFIER:Lcom/prineside/tdi2/enums/BuildingType;

    if-ne v2, v3, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/prineside/tdi2/Modifier;

    :cond_0
    return-object v1
.end method

.method public final h(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->d:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->d:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->b:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;->show()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/ModifierMenu;->i()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->r:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->b:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;->hide()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final i()V
    .locals 4

    const/4 v0, -0x1

    iput v0, p0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->w:I

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->r:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clearChildren()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->y:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getSelectedTile()Lcom/prineside/tdi2/Tile;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/prineside/tdi2/Tile;->type:Lcom/prineside/tdi2/enums/TileType;

    sget-object v2, Lcom/prineside/tdi2/enums/TileType;->PLATFORM:Lcom/prineside/tdi2/enums/TileType;

    if-ne v1, v2, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/prineside/tdi2/tiles/PlatformTile;

    iget-object v2, v1, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/prineside/tdi2/Building;->buildingType:Lcom/prineside/tdi2/enums/BuildingType;

    sget-object v3, Lcom/prineside/tdi2/enums/BuildingType;->MODIFIER:Lcom/prineside/tdi2/enums/BuildingType;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->b:Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;

    invoke-virtual {v2, v0}, Lcom/prineside/tdi2/ui/actors/SideMenu$SideMenuContainer;->setLabelOverTitleTilePos(Lcom/prineside/tdi2/Tile;)V

    iget-object v0, v1, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    check-cast v0, Lcom/prineside/tdi2/Modifier;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->modifierManager:Lcom/prineside/tdi2/managers/ModifierManager;

    iget-object v3, v0, Lcom/prineside/tdi2/Modifier;->type:Lcom/prineside/tdi2/enums/ModifierType;

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/managers/ModifierManager;->getFactory(Lcom/prineside/tdi2/enums/ModifierType;)Lcom/prineside/tdi2/Modifier$Factory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/prineside/tdi2/Modifier$Factory;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->modifierManager:Lcom/prineside/tdi2/managers/ModifierManager;

    iget-object v0, v0, Lcom/prineside/tdi2/Modifier;->type:Lcom/prineside/tdi2/enums/ModifierType;

    invoke-virtual {v2, v0}, Lcom/prineside/tdi2/managers/ModifierManager;->getFactory(Lcom/prineside/tdi2/enums/ModifierType;)Lcom/prineside/tdi2/Modifier$Factory;

    move-result-object v0

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->y:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/Modifier$Factory;->getDescription(Lcom/prineside/tdi2/GameValueProvider;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/ModifierMenu;->updateCustomButton()V

    return-void
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->d:Z

    return v0
.end method

.method public startUsingCustomButton()V
    .locals 2

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->x:Z

    if-eqz v0, :cond_0

    const-string v0, "ModifierMenu"

    const-string v1, "been using custom button, canceling"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/ModifierMenu;->cancelUsingCustomButton()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->x:Z

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->y:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->_input:Lcom/prineside/tdi2/systems/InputSystem;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->u:Lcom/badlogic/gdx/InputAdapter;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/InputSystem;->setCustomMapInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/ModifierMenu;->updateCustomButton()V

    return-void
.end method

.method public updateCustomButton()V
    .locals 3

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/ModifierMenu;->g()Lcom/prineside/tdi2/Modifier;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->t:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Modifier;->hasCustomButton()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->t:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->t:Lcom/prineside/tdi2/ui/actors/ComplexButton;

    iget-boolean v2, p0, Lcom/prineside/tdi2/ui/components/ModifierMenu;->x:Z

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/Modifier;->updateCustomButton(Lcom/prineside/tdi2/ui/actors/ComplexButton;Z)V

    :cond_0
    return-void
.end method
