.class public Lcom/prineside/tdi2/ui/components/AbilityMenu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/ui/components/AbilityMenu$_AbilitySystemListener;,
        Lcom/prineside/tdi2/ui/components/AbilityMenu$_GameValueSystemListener;
    }
.end annotation


# static fields
.field public static final z:Lcom/badlogic/gdx/utils/StringBuilder;


# instance fields
.field public final a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public b:Z

.field public d:[Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;

.field public k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public p:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public r:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public s:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public t:Lcom/prineside/tdi2/GameSystemProvider;

.field public u:Z

.field public v:I

.field public w:I

.field public final x:Lcom/prineside/tdi2/ui/components/AbilityMenu$_AbilitySystemListener;

.field public final y:Lcom/prineside/tdi2/ui/components/AbilityMenu$_GameValueSystemListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->z:Lcom/badlogic/gdx/utils/StringBuilder;

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    sget-object v3, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->SCREEN:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    const/16 v4, 0x65

    const-string v5, "AbilityMenu"

    invoke-virtual {v2, v3, v4, v5}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v2

    iput-object v2, v0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    const/4 v3, 0x6

    new-array v4, v3, [Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;

    iput-object v4, v0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->d:[Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;

    const/16 v4, 0xa

    new-array v5, v4, [Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iput-object v5, v0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->s:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/4 v5, -0x1

    iput v5, v0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->v:I

    iput v5, v0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->w:I

    new-instance v5, Lcom/prineside/tdi2/ui/components/AbilityMenu$_AbilitySystemListener;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6}, Lcom/prineside/tdi2/ui/components/AbilityMenu$_AbilitySystemListener;-><init>(Lcom/prineside/tdi2/ui/components/AbilityMenu;Lcom/prineside/tdi2/ui/components/AbilityMenu$1;)V

    iput-object v5, v0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->x:Lcom/prineside/tdi2/ui/components/AbilityMenu$_AbilitySystemListener;

    new-instance v7, Lcom/prineside/tdi2/ui/components/AbilityMenu$_GameValueSystemListener;

    invoke-direct {v7, v0, v6}, Lcom/prineside/tdi2/ui/components/AbilityMenu$_GameValueSystemListener;-><init>(Lcom/prineside/tdi2/ui/components/AbilityMenu;Lcom/prineside/tdi2/ui/components/AbilityMenu$1;)V

    iput-object v7, v0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->y:Lcom/prineside/tdi2/ui/components/AbilityMenu$_GameValueSystemListener;

    iput-object v1, v0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->t:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v6, v1, Lcom/prineside/tdi2/GameSystemProvider;->ability:Lcom/prineside/tdi2/systems/AbilitySystem;

    iget-object v6, v6, Lcom/prineside/tdi2/systems/AbilitySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v6, v5}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object v5, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    iget-object v5, v5, Lcom/prineside/tdi2/systems/GameValueSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v5, v7}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->bottom()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v7, 0x43400000    # 192.0f

    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v7, 0x42000000    # 32.0f

    invoke-virtual {v2, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v7, 0x436a0000    # 234.0f

    const v8, 0x43be8000    # 381.0f

    invoke-virtual {v2, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v8, 0x18

    invoke-virtual {v7, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v7

    const-string v9, ""

    invoke-direct {v2, v9, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v7, 0x437a0000    # 250.0f

    const/high16 v10, 0x41200000    # 10.0f

    invoke-virtual {v2, v7, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setWrap(Z)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v12, 0x43800000    # 256.0f

    const/high16 v13, 0x42c80000    # 100.0f

    invoke-virtual {v2, v12, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v12, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->childrenOnly:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v2, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v12, 0x42880000    # 68.0f

    invoke-virtual {v2, v7, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v7, 0x0

    const/high16 v12, 0x43c10000    # 386.0f

    invoke-virtual {v2, v7, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v14, "icon-lightning-bolt"

    invoke-virtual {v13, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v13

    invoke-direct {v2, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v13, 0x42400000    # 48.0f

    invoke-virtual {v2, v13, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v15, 0x40e00000    # 7.0f

    const/high16 v11, 0x40000000    # 2.0f

    invoke-virtual {v2, v15, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const v11, 0x3e8f5c29    # 0.28f

    invoke-virtual {v2, v7, v7, v7, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v15, v0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v15, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v15, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v14

    invoke-direct {v2, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v2, v13, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v13, -0x3fc00000    # -3.0f

    const/high16 v14, 0x41400000    # 12.0f

    invoke-virtual {v2, v13, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    sget-object v13, Lcom/prineside/tdi2/utils/MaterialColor$CYAN;->P300:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v15, v0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v15, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-instance v15, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v15, v7, v7, v7, v11}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    const/16 v11, 0x8

    new-array v14, v11, [F

    fill-array-data v14, :array_0

    invoke-direct {v2, v15, v14}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    const/high16 v14, 0x42600000    # 56.0f

    invoke-virtual {v2, v14, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v14, v0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v14, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/QuadActor;

    sget-object v14, Lcom/prineside/tdi2/utils/MaterialColor$CYAN;->P900:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v14}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v14

    const/high16 v15, 0x3f400000    # 0.75f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v14, v15, v15, v15, v6}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v14

    new-array v11, v11, [F

    fill-array-data v11, :array_1

    invoke-direct {v2, v14, v11}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    const/high16 v11, 0x42380000    # 46.0f

    invoke-virtual {v2, v11, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v14, v0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v14, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v14, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v8

    invoke-direct {v2, v9, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v8, 0x43700000    # 240.0f

    invoke-virtual {v2, v8, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v8, 0x42200000    # 40.0f

    const/high16 v14, 0x41880000    # 17.0f

    invoke-virtual {v2, v8, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v13, v0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2, v13}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v14, 0x15

    invoke-virtual {v13, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v13

    invoke-direct {v2, v9, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v9, 0x43430000    # 195.0f

    const/high16 v13, 0x42140000    # 37.0f

    invoke-virtual {v2, v9, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v9, 0x41880000    # 17.0f

    invoke-virtual {v2, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const v8, 0x3f0f5c29    # 0.56f

    invoke-virtual {v2, v6, v6, v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->s:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v13, "ui-ability-energy-bar"

    invoke-virtual {v9, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    aput-object v8, v6, v2

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->s:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aget-object v6, v6, v2

    int-to-float v8, v2

    const/high16 v9, 0x41900000    # 18.0f

    mul-float v9, v9, v8

    add-float/2addr v9, v7

    add-float/2addr v9, v11

    const/high16 v13, 0x41500000    # 13.0f

    const/high16 v14, 0x41700000    # 15.0f

    mul-float v8, v8, v14

    div-float/2addr v8, v10

    sub-float/2addr v13, v8

    const/high16 v8, 0x43c60000    # 396.0f

    add-float/2addr v13, v8

    sub-float/2addr v13, v12

    invoke-virtual {v6, v9, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->s:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aget-object v6, v6, v2

    const/high16 v8, 0x41800000    # 16.0f

    const/high16 v9, 0x41980000    # 19.0f

    invoke-virtual {v6, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->s:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aget-object v8, v8, v2

    invoke-virtual {v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_8

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->d:[Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;

    new-instance v6, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;

    iget-object v8, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    const/4 v9, 0x0

    invoke-direct {v6, v9, v8}, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;-><init>(ZLcom/prineside/tdi2/GameValueProvider;)V

    aput-object v6, v4, v2

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->d:[Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;

    aget-object v4, v4, v2

    rem-int/lit8 v6, v2, 0x2

    int-to-float v8, v6

    const/high16 v9, 0x43000000    # 128.0f

    mul-float v8, v8, v9

    div-int/lit8 v9, v2, 0x2

    int-to-float v9, v9

    const/high16 v11, 0x43000000    # 128.0f

    mul-float v9, v9, v11

    add-float/2addr v9, v7

    const/4 v11, 0x1

    rsub-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    mul-float v6, v6, v10

    add-float/2addr v9, v6

    invoke-virtual {v4, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->d:[Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;

    aget-object v4, v4, v2

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-static {}, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->ABILITY_1:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    if-eqz v2, :cond_6

    const/4 v6, 0x1

    if-eq v2, v6, :cond_5

    const/4 v6, 0x2

    if-eq v2, v6, :cond_4

    const/4 v6, 0x3

    if-eq v2, v6, :cond_3

    const/4 v6, 0x4

    if-eq v2, v6, :cond_2

    const/4 v6, 0x5

    if-eq v2, v6, :cond_1

    goto :goto_2

    :cond_1
    sget-object v4, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->ABILITY_6:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    goto :goto_2

    :cond_2
    sget-object v4, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->ABILITY_5:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    goto :goto_2

    :cond_3
    sget-object v4, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->ABILITY_4:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    goto :goto_2

    :cond_4
    sget-object v4, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->ABILITY_3:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    goto :goto_2

    :cond_5
    sget-object v4, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->ABILITY_2:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    :cond_6
    :goto_2
    new-instance v6, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v8, v4}, Lcom/prineside/tdi2/managers/SettingsManager;->getHotKey(Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;)[I

    move-result-object v4

    const/high16 v8, 0x42b60000    # 91.0f

    const/high16 v9, 0x41400000    # 12.0f

    invoke-direct {v6, v4, v9, v8}, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;-><init>([IFF)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->d:[Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;

    aget-object v4, v4, v2

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_3

    :cond_7
    const/high16 v9, 0x41400000    # 12.0f

    :goto_3
    iget-object v4, v0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->d:[Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;

    aget-object v4, v4, v2

    new-instance v6, Lcom/prineside/tdi2/ui/components/AbilityMenu$1;

    invoke-direct {v6, v0, v2, v1}, Lcom/prineside/tdi2/ui/components/AbilityMenu$1;-><init>(Lcom/prineside/tdi2/ui/components/AbilityMenu;ILcom/prineside/tdi2/GameSystemProvider;)V

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_8
    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/GameStateSystem;->startingAbilitiesConfiguration:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;

    if-nez v1, :cond_9

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->b:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/ui/components/AbilityMenu;->setVisible(Z)V

    goto :goto_4

    :cond_9
    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->b:Z

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/components/AbilityMenu;->setVisible(Z)V

    :goto_4
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x41600000    # 14.0f
        0x0
        0x42000000    # 32.0f
        0x43320000    # 178.0f
        0x41880000    # 17.0f
        0x43320000    # 178.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x41600000    # 14.0f
        0x0
        0x42000000    # 32.0f
        0x43320000    # 178.0f
        0x41880000    # 17.0f
        0x43320000    # 178.0f
        0x0
    .end array-data
.end method

.method public static synthetic a(Lcom/prineside/tdi2/ui/components/AbilityMenu;)[Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->d:[Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;

    return-object p0
.end method


# virtual methods
.method public final b()V
    .locals 9

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->t:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->ability:Lcom/prineside/tdi2/systems/AbilitySystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/AbilitySystem;->getEnergy()I

    move-result v0

    iget v1, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->v:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v0, :cond_2

    sget-object v1, Lcom/prineside/tdi2/ui/components/AbilityMenu;->z:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    const/16 v4, 0x78

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iput v0, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->v:I

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->t:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->ability:Lcom/prineside/tdi2/systems/AbilitySystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/AbilitySystem;->getMaxEnergy()I

    move-result v1

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->s:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    array-length v6, v5

    if-ge v4, v6, :cond_2

    add-int/lit8 v6, v4, 0x1

    if-gt v6, v0, :cond_0

    aget-object v5, v5, v4

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v5, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->s:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aget-object v4, v5, v4

    sget-object v5, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_1

    :cond_0
    if-le v6, v1, :cond_1

    aget-object v5, v5, v4

    const v7, 0x3e8f5c29    # 0.28f

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v8, v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v5, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->s:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aget-object v4, v5, v4

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_1

    :cond_1
    aget-object v4, v5, v4

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :goto_1
    move v4, v6

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->t:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->ability:Lcom/prineside/tdi2/systems/AbilitySystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/AbilitySystem;->getMaxEnergy()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->t:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->ability:Lcom/prineside/tdi2/systems/AbilitySystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/AbilitySystem;->getEnergyRegenerationTime()F

    move-result v1

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->t:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->ability:Lcom/prineside/tdi2/systems/AbilitySystem;

    invoke-virtual {v4}, Lcom/prineside/tdi2/systems/AbilitySystem;->getNextEnergyGenerationTime()F

    move-result v4

    sub-float/2addr v1, v4

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->ceil(F)I

    move-result v1

    iget v4, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->w:I

    if-eq v4, v1, :cond_4

    sget-object v4, Lcom/prineside/tdi2/ui/components/AbilityMenu;->z:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v5

    const/16 v6, 0x73

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v5, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iput v1, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->w:I

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :cond_4
    :goto_2
    int-to-float v0, v0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->t:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->ability:Lcom/prineside/tdi2/systems/AbilitySystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/AbilitySystem;->getNextEnergyGenerationTime()F

    move-result v1

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->t:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->ability:Lcom/prineside/tdi2/systems/AbilitySystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/AbilitySystem;->getEnergyRegenerationTime()F

    move-result v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->d:[Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;

    array-length v2, v1

    :goto_3
    if-ge v3, v2, :cond_6

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->getGameEnergy()F

    move-result v5

    cmpl-float v5, v5, v0

    if-eqz v5, :cond_5

    invoke-virtual {v4, v0}, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->setGameEnergy(F)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method public dispose()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/UiManager;->removeLayer(Lcom/prineside/tdi2/managers/UiManager$UiLayer;)V

    return-void
.end method

.method public draw(F)V
    .locals 0

    iget-boolean p1, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->u:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/AbilityMenu;->update()V

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/AbilityMenu;->b()V

    return-void
.end method

.method public finalFadeOut()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->b:Z

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    return-void
.end method

.method public update()V
    .locals 7

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->t:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->ability:Lcom/prineside/tdi2/systems/AbilitySystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/AbilitySystem;->abilitiesConfiguration:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->d:[Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;

    array-length v4, v3

    const/4 v5, 0x1

    if-ge v1, v4, :cond_6

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->t:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->ability:Lcom/prineside/tdi2/systems/AbilitySystem;

    iget-object v6, v4, Lcom/prineside/tdi2/systems/AbilitySystem;->abilitiesConfiguration:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;

    iget-object v6, v6, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;->slots:[Lcom/prineside/tdi2/enums/AbilityType;

    aget-object v6, v6, v1

    invoke-virtual {v4, v1}, Lcom/prineside/tdi2/systems/AbilitySystem;->getAvailableAbilities(I)I

    move-result v4

    if-eqz v6, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {v3}, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->getAbility()Lcom/prineside/tdi2/enums/AbilityType;

    move-result-object v5

    if-eq v5, v6, :cond_2

    invoke-virtual {v3, v6}, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->setAbility(Lcom/prineside/tdi2/enums/AbilityType;)V

    :cond_2
    invoke-virtual {v3}, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->getCount()I

    move-result v5

    if-eq v5, v4, :cond_3

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->setCount(I)V

    :cond_3
    if-eqz v6, :cond_5

    if-gtz v4, :cond_4

    goto :goto_1

    :cond_4
    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    goto :goto_2

    :cond_5
    :goto_1
    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->p:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->d:[Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_7

    aget-object v4, v1, v3

    invoke-virtual {v4, v0}, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->setSelected(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->t:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->ability:Lcom/prineside/tdi2/systems/AbilitySystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/AbilitySystem;->getUiCurrentlyUsingAbility()Lcom/prineside/tdi2/enums/AbilityType;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->t:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->ability:Lcom/prineside/tdi2/systems/AbilitySystem;

    iget-object v2, v1, Lcom/prineside/tdi2/systems/AbilitySystem;->abilitiesConfiguration:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/AbilitySystem;->getUiCurrentlyUsingAbility()Lcom/prineside/tdi2/enums/AbilityType;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;->getSlot(Lcom/prineside/tdi2/enums/AbilityType;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->d:[Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;

    aget-object v0, v0, v1

    invoke-virtual {v0, v5}, Lcom/prineside/tdi2/ui/actors/AbilitySlotButton;->setSelected(Z)V

    const/4 v0, 0x1

    :cond_8
    const v1, 0x3e99999a    # 0.3f

    if-eqz v0, :cond_a

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->abilityManager:Lcom/prineside/tdi2/managers/AbilityManager;

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->t:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->ability:Lcom/prineside/tdi2/systems/AbilitySystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/AbilitySystem;->getUiCurrentlyUsingAbility()Lcom/prineside/tdi2/enums/AbilityType;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/prineside/tdi2/managers/AbilityManager;->getFactory(Lcom/prineside/tdi2/enums/AbilityType;)Lcom/prineside/tdi2/Ability$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Ability$Factory;->requiresMapPointing()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "ability_menu_select_point_to_apply"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "ability_menu_tap_map_to_apply"

    invoke-virtual {v2, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    goto :goto_5

    :cond_a
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v1

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->hide()Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    :goto_5
    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/AbilityMenu;->b()V

    iput-boolean v5, p0, Lcom/prineside/tdi2/ui/components/AbilityMenu;->u:Z

    return-void
.end method
