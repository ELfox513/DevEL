.class public Lcom/prineside/tdi2/ui/components/MainUi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/ui/components/MainUi$_Game_StateSystemListener;,
        Lcom/prineside/tdi2/ui/components/MainUi$_WaveSystemListener;,
        Lcom/prineside/tdi2/ui/components/MainUi$_EnemySystemListener;,
        Lcom/prineside/tdi2/ui/components/MainUi$_LootSystemListener;
    }
.end annotation


# static fields
.field public static final l0:Lcom/badlogic/gdx/math/Rectangle;

.field public static final m0:Lcom/badlogic/gdx/math/Rectangle;

.field public static final n0:Lcom/badlogic/gdx/math/Rectangle;

.field public static final o0:Lcom/badlogic/gdx/math/Rectangle;

.field public static final p0:Lcom/badlogic/gdx/math/Rectangle;

.field public static final q0:Lcom/badlogic/gdx/math/Rectangle;

.field public static final r0:Lcom/badlogic/gdx/math/Rectangle;

.field public static final s0:Lcom/badlogic/gdx/math/Rectangle;

.field public static final t0:Lcom/badlogic/gdx/math/Rectangle;

.field public static final u0:Lcom/badlogic/gdx/utils/StringBuilder;


# instance fields
.field public final A:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

.field public B:Z

.field public final C:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public final D:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public final E:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final F:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final G:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public final H:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public final I:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public final J:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

.field public final K:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

.field public L:I

.field public M:I

.field public N:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

.field public O:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public P:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public Q:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public R:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public S:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public T:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public U:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public V:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

.field public W:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public X:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public Y:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

.field public Z:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

.field public final a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public a0:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field public final b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public b0:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field public c0:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field public customElementsContainer:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public final d:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public d0:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

.field public e0:Z

.field public f0:F

.field public final g0:Lcom/prineside/tdi2/ui/components/MainUi$_Game_StateSystemListener;

.field public final h0:Lcom/prineside/tdi2/ui/components/MainUi$_WaveSystemListener;

.field public final i0:Lcom/prineside/tdi2/ui/components/MainUi$_EnemySystemListener;

.field public final j0:Lcom/prineside/tdi2/ui/components/MainUi$_LootSystemListener;

.field public k:Lcom/prineside/tdi2/GameSystemProvider;

.field public final k0:Lcom/prineside/tdi2/Game$ScreenResizeListener;

.field public final p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public particlesCanvas:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

.field public final q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final r:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final s:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final t:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public final u:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public final v:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final w:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public final x:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

.field public final y:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    const/high16 v1, 0x43200000    # 160.0f

    const/high16 v2, 0x41800000    # 16.0f

    const/high16 v3, 0x43000000    # 128.0f

    const/high16 v4, 0x43100000    # 144.0f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    sput-object v0, Lcom/prineside/tdi2/ui/components/MainUi;->l0:Lcom/badlogic/gdx/math/Rectangle;

    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    const/high16 v2, 0x43f00000    # 480.0f

    const/high16 v4, 0x429e0000    # 79.0f

    const/high16 v5, 0x42400000    # 48.0f

    invoke-direct {v0, v2, v4, v1, v5}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    sput-object v0, Lcom/prineside/tdi2/ui/components/MainUi;->m0:Lcom/badlogic/gdx/math/Rectangle;

    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    const/high16 v2, 0x44200000    # 640.0f

    invoke-direct {v0, v2, v4, v1, v5}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    sput-object v0, Lcom/prineside/tdi2/ui/components/MainUi;->n0:Lcom/badlogic/gdx/math/Rectangle;

    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    const/high16 v2, 0x43a20000    # 324.0f

    const/high16 v6, 0x420c0000    # 35.0f

    const/high16 v7, 0x431c0000    # 156.0f

    const/high16 v8, 0x42200000    # 40.0f

    invoke-direct {v0, v2, v6, v7, v8}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    sput-object v0, Lcom/prineside/tdi2/ui/components/MainUi;->o0:Lcom/badlogic/gdx/math/Rectangle;

    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    const/high16 v6, -0x3f400000    # -6.0f

    invoke-direct {v0, v2, v6, v7, v8}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    sput-object v0, Lcom/prineside/tdi2/ui/components/MainUi;->p0:Lcom/badlogic/gdx/math/Rectangle;

    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    const/4 v2, 0x0

    const/high16 v6, 0x43400000    # 192.0f

    invoke-direct {v0, v2, v2, v6, v6}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    sput-object v0, Lcom/prineside/tdi2/ui/components/MainUi;->q0:Lcom/badlogic/gdx/math/Rectangle;

    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    const/high16 v7, 0x43b40000    # 360.0f

    const/high16 v8, 0x42e00000    # 112.0f

    invoke-direct {v0, v7, v2, v8, v8}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    sput-object v0, Lcom/prineside/tdi2/ui/components/MainUi;->r0:Lcom/badlogic/gdx/math/Rectangle;

    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    const/high16 v7, 0x43a00000    # 320.0f

    invoke-direct {v0, v7, v4, v1, v5}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    sput-object v0, Lcom/prineside/tdi2/ui/components/MainUi;->s0:Lcom/badlogic/gdx/math/Rectangle;

    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0, v6, v2, v3, v3}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    sput-object v0, Lcom/prineside/tdi2/ui/components/MainUi;->t0:Lcom/badlogic/gdx/math/Rectangle;

    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/ui/components/MainUi;->u0:Lcom/badlogic/gdx/utils/StringBuilder;

    return-void
.end method

.method public constructor <init>(Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    sget-object v3, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->SCREEN:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    const/16 v4, 0x65

    const-string v5, "MainUi particles"

    invoke-virtual {v2, v3, v4, v5}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v2

    iput-object v2, v0, Lcom/prineside/tdi2/ui/components/MainUi;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    const-string v6, "MainUi custom elements"

    invoke-virtual {v5, v3, v4, v6}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v5

    iput-object v5, v0, Lcom/prineside/tdi2/ui/components/MainUi;->b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    const-string v7, "MainUi"

    invoke-virtual {v6, v3, v4, v7}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v3

    iput-object v3, v0, Lcom/prineside/tdi2/ui/components/MainUi;->d:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    new-instance v4, Lcom/prineside/tdi2/ui/components/MainUi$_Game_StateSystemListener;

    const/4 v6, 0x0

    invoke-direct {v4, v0, v6}, Lcom/prineside/tdi2/ui/components/MainUi$_Game_StateSystemListener;-><init>(Lcom/prineside/tdi2/ui/components/MainUi;Lcom/prineside/tdi2/ui/components/MainUi$1;)V

    iput-object v4, v0, Lcom/prineside/tdi2/ui/components/MainUi;->g0:Lcom/prineside/tdi2/ui/components/MainUi$_Game_StateSystemListener;

    new-instance v7, Lcom/prineside/tdi2/ui/components/MainUi$_WaveSystemListener;

    invoke-direct {v7, v0, v6}, Lcom/prineside/tdi2/ui/components/MainUi$_WaveSystemListener;-><init>(Lcom/prineside/tdi2/ui/components/MainUi;Lcom/prineside/tdi2/ui/components/MainUi$1;)V

    iput-object v7, v0, Lcom/prineside/tdi2/ui/components/MainUi;->h0:Lcom/prineside/tdi2/ui/components/MainUi$_WaveSystemListener;

    new-instance v8, Lcom/prineside/tdi2/ui/components/MainUi$_EnemySystemListener;

    invoke-direct {v8, v0, v6}, Lcom/prineside/tdi2/ui/components/MainUi$_EnemySystemListener;-><init>(Lcom/prineside/tdi2/ui/components/MainUi;Lcom/prineside/tdi2/ui/components/MainUi$1;)V

    iput-object v8, v0, Lcom/prineside/tdi2/ui/components/MainUi;->i0:Lcom/prineside/tdi2/ui/components/MainUi$_EnemySystemListener;

    new-instance v9, Lcom/prineside/tdi2/ui/components/MainUi$_LootSystemListener;

    invoke-direct {v9, v0, v6}, Lcom/prineside/tdi2/ui/components/MainUi$_LootSystemListener;-><init>(Lcom/prineside/tdi2/ui/components/MainUi;Lcom/prineside/tdi2/ui/components/MainUi$1;)V

    iput-object v9, v0, Lcom/prineside/tdi2/ui/components/MainUi;->j0:Lcom/prineside/tdi2/ui/components/MainUi$_LootSystemListener;

    iput-object v1, v0, Lcom/prineside/tdi2/ui/components/MainUi;->k:Lcom/prineside/tdi2/GameSystemProvider;

    new-instance v6, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    invoke-direct {v6}, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;-><init>()V

    iput-object v6, v0, Lcom/prineside/tdi2/ui/components/MainUi;->particlesCanvas:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v6

    iget-object v10, v0, Lcom/prineside/tdi2/ui/components/MainUi;->particlesCanvas:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    invoke-virtual {v6, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v2

    sget-object v6, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/components/MainUi;->customElementsContainer:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v2

    iget-object v11, v0, Lcom/prineside/tdi2/ui/components/MainUi;->customElementsContainer:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v5}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance v2, Lcom/prineside/tdi2/ui/components/MainUi$1;

    invoke-direct {v2, v0}, Lcom/prineside/tdi2/ui/components/MainUi$1;-><init>(Lcom/prineside/tdi2/ui/components/MainUi;)V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/components/MainUi;->k0:Lcom/prineside/tdi2/Game$ScreenResizeListener;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    invoke-virtual {v5, v2}, Lcom/prineside/tdi2/Game;->addScreenResizeListener(Lcom/prineside/tdi2/Game$ScreenResizeListener;)V

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v2

    const-string v3, "main_game_ui"

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    invoke-virtual {v3, v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const/high16 v5, 0x44520000    # 840.0f

    const/high16 v11, 0x43200000    # 160.0f

    invoke-virtual {v3, v5, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v5, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->childrenOnly:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v12

    invoke-virtual {v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v12

    invoke-virtual {v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v12

    invoke-virtual {v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v12

    invoke-virtual {v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->row()V

    new-instance v12, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v14, "icon-pause"

    invoke-virtual {v13, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v14

    new-instance v15, Lcom/prineside/tdi2/ui/components/MainUi$2;

    invoke-direct {v15, v0, v1}, Lcom/prineside/tdi2/ui/components/MainUi$2;-><init>(Lcom/prineside/tdi2/ui/components/MainUi;Lcom/prineside/tdi2/GameSystemProvider;)V

    sget-object v13, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    sget-object v22, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    sget-object v23, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P600:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v24, v13

    move-object v13, v12

    move-object/from16 v16, v24

    move-object/from16 v17, v22

    move-object/from16 v18, v23

    invoke-direct/range {v13 .. v18}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v13, 0x42000000    # 32.0f

    invoke-virtual {v12, v13, v13}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconPosition(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    move-result-object v12

    const/high16 v14, 0x42c00000    # 96.0f

    invoke-virtual {v12, v14, v14}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    move-result-object v12

    const-string v15, "game_pause_button"

    invoke-virtual {v12, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    invoke-virtual {v12, v11, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v3, v12}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v11, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    invoke-direct {v11}, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;-><init>()V

    iput-object v11, v0, Lcom/prineside/tdi2/ui/components/MainUi;->Y:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    const/high16 v15, 0x42ea0000    # 117.0f

    const/high16 v13, 0x42380000    # 46.0f

    invoke-virtual {v11, v15, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v11, v0, Lcom/prineside/tdi2/ui/components/MainUi;->Y:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v11, v13, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v11, v0, Lcom/prineside/tdi2/ui/components/MainUi;->Y:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    invoke-virtual {v11, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v11, v0, Lcom/prineside/tdi2/ui/components/MainUi;->Y:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    invoke-virtual {v12, v11}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v11, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-direct {v11}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;-><init>()V

    iput-object v11, v0, Lcom/prineside/tdi2/ui/components/MainUi;->Z:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    sget-object v15, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v13, "particles/pause-menu-ad-icon.prt"

    invoke-interface {v15, v13}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v13

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v14, "particle-snowflake"

    invoke-virtual {v15, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v14

    invoke-virtual {v14}, Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;->getAtlas()Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->load(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V

    iget-object v11, v0, Lcom/prineside/tdi2/ui/components/MainUi;->Z:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-virtual {v11, v10}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setEmittersCleanUpBlendFunction(Z)V

    new-instance v11, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v14, "ui-pause-button-video-ad-icon"

    invoke-virtual {v13, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v13

    invoke-direct {v11, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v11, v0, Lcom/prineside/tdi2/ui/components/MainUi;->X:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v13, 0x42400000    # 48.0f

    invoke-virtual {v11, v13, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v11, v0, Lcom/prineside/tdi2/ui/components/MainUi;->X:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v14, 0x41c00000    # 24.0f

    invoke-virtual {v11, v14, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOrigin(FF)V

    iget-object v11, v0, Lcom/prineside/tdi2/ui/components/MainUi;->X:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v15, 0x42ba0000    # 93.0f

    const/high16 v14, 0x42180000    # 38.0f

    invoke-virtual {v11, v15, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v11, v0, Lcom/prineside/tdi2/ui/components/MainUi;->X:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v11, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v11, v0, Lcom/prineside/tdi2/ui/components/MainUi;->X:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v11, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v11, v0, Lcom/prineside/tdi2/ui/components/MainUi;->X:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v12, v11}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->purchaseManager:Lcom/prineside/tdi2/managers/PurchaseManager;

    invoke-virtual {v11}, Lcom/prineside/tdi2/managers/PurchaseManager;->rewardingAdsAvailable()Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v11, v1, Lcom/prineside/tdi2/GameSystemProvider;->loot:Lcom/prineside/tdi2/systems/LootSystem;

    iget-object v11, v11, Lcom/prineside/tdi2/systems/LootSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v11, v9}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    :cond_0
    new-instance v9, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v11, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v11, v11, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v12, "icon-easel"

    invoke-virtual {v11, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v17

    new-instance v11, Lcom/prineside/tdi2/ui/components/MainUi$3;

    invoke-direct {v11, v0, v1}, Lcom/prineside/tdi2/ui/components/MainUi$3;-><init>(Lcom/prineside/tdi2/ui/components/MainUi;Lcom/prineside/tdi2/GameSystemProvider;)V

    move-object/from16 v16, v9

    move-object/from16 v18, v11

    move-object/from16 v19, v24

    move-object/from16 v20, v22

    move-object/from16 v21, v23

    invoke-direct/range {v16 .. v21}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v11, 0x41800000    # 16.0f

    invoke-virtual {v9, v11, v11}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconPosition(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    move-result-object v9

    const/high16 v12, 0x42c00000    # 96.0f

    invoke-virtual {v9, v12, v12}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    move-result-object v9

    iput-object v9, v0, Lcom/prineside/tdi2/ui/components/MainUi;->N:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const-string v12, "map_draw_mode_button"

    invoke-virtual {v9, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    iget-object v9, v0, Lcom/prineside/tdi2/ui/components/MainUi;->N:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v12, Lcom/prineside/tdi2/ui/components/MainUi;->l0:Lcom/badlogic/gdx/math/Rectangle;

    iget v14, v12, Lcom/badlogic/gdx/math/Rectangle;->width:F

    const/high16 v25, 0x40000000    # 2.0f

    div-float v14, v14, v25

    iget v15, v12, Lcom/badlogic/gdx/math/Rectangle;->height:F

    div-float v15, v15, v25

    invoke-virtual {v9, v14, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOrigin(FF)V

    iget-object v9, v0, Lcom/prineside/tdi2/ui/components/MainUi;->N:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    iget v14, v12, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v15, v12, Lcom/badlogic/gdx/math/Rectangle;->height:F

    invoke-virtual {v9, v14, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v9, v0, Lcom/prineside/tdi2/ui/components/MainUi;->N:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    iget v14, v12, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v12, v12, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-virtual {v9, v14, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-static {}, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->isEnabled()Z

    move-result v9

    const/high16 v12, 0x42800000    # 64.0f

    if-eqz v9, :cond_1

    new-instance v9, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v15, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->SWITCH_DRAW_MODE:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v14, v15}, Lcom/prineside/tdi2/managers/SettingsManager;->getHotKey(Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;)[I

    move-result-object v14

    const/high16 v15, 0x42e00000    # 112.0f

    invoke-direct {v9, v14, v12, v15}, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;-><init>([IFF)V

    iget-object v14, v0, Lcom/prineside/tdi2/ui/components/MainUi;->N:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v14, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_1
    iget-object v9, v0, Lcom/prineside/tdi2/ui/components/MainUi;->N:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v3, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v9, v0, Lcom/prineside/tdi2/ui/components/MainUi;->R:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v9, v0, Lcom/prineside/tdi2/ui/components/MainUi;->R:Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v14, Lcom/prineside/tdi2/ui/components/MainUi;->o0:Lcom/badlogic/gdx/math/Rectangle;

    iget v15, v14, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v12, v14, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-virtual {v9, v15, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v9, v0, Lcom/prineside/tdi2/ui/components/MainUi;->R:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget v12, v14, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v15, v14, Lcom/badlogic/gdx/math/Rectangle;->height:F

    invoke-virtual {v9, v12, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v9, v0, Lcom/prineside/tdi2/ui/components/MainUi;->R:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget v12, v14, Lcom/badlogic/gdx/math/Rectangle;->width:F

    div-float v12, v12, v25

    iget v14, v14, Lcom/badlogic/gdx/math/Rectangle;->height:F

    div-float v14, v14, v25

    invoke-virtual {v9, v12, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOrigin(FF)V

    iget-object v9, v0, Lcom/prineside/tdi2/ui/components/MainUi;->R:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v14, "icon-star-hollow"

    invoke-virtual {v12, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v12

    invoke-direct {v9, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v9, v0, Lcom/prineside/tdi2/ui/components/MainUi;->W:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/4 v12, 0x0

    invoke-virtual {v9, v12, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v9, v0, Lcom/prineside/tdi2/ui/components/MainUi;->W:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v14, 0x42200000    # 40.0f

    invoke-virtual {v9, v14, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v9, v0, Lcom/prineside/tdi2/ui/components/MainUi;->W:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const v15, 0x3f0f5c29    # 0.56f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v9, v13, v13, v13, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v9, v0, Lcom/prineside/tdi2/ui/components/MainUi;->R:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v13, v0, Lcom/prineside/tdi2/ui/components/MainUi;->W:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v9, v13}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    const/high16 v13, 0x43c80000    # 400.0f

    invoke-virtual {v9, v13, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v13, v0, Lcom/prineside/tdi2/ui/components/MainUi;->R:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v13, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v13, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v11, 0x18

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v10

    move-object/from16 v11, v24

    invoke-direct {v12, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    const-string v10, "000"

    invoke-direct {v13, v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v13, v0, Lcom/prineside/tdi2/ui/components/MainUi;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v13, v10, v10, v10, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v9, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    invoke-virtual {v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    const/high16 v12, 0x42600000    # 56.0f

    invoke-virtual {v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    invoke-virtual {v10, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    iget-object v10, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v10, v10, Lcom/prineside/tdi2/systems/GameStateSystem;->gameMode:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    sget-object v12, Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;->USER_MAPS:Lcom/prineside/tdi2/systems/GameStateSystem$GameMode;

    if-ne v10, v12, :cond_2

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->gameValueManager:Lcom/prineside/tdi2/managers/GameValueManager;

    invoke-virtual {v10}, Lcom/prineside/tdi2/managers/GameValueManager;->getSnapshot()Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;

    move-result-object v10

    sget-object v12, Lcom/prineside/tdi2/enums/GameValueType;->PRESTIGE_MODE:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v10, v12}, Lcom/prineside/tdi2/managers/GameValueManager$GameValuesSnapshot;->getBooleanValue(Lcom/prineside/tdi2/enums/GameValueType;)Z

    move-result v10

    if-eqz v10, :cond_2

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v13, "icon-crown"

    invoke-virtual {v12, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v12

    invoke-direct {v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    sget-object v12, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    invoke-virtual {v10, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v10

    const/high16 v13, 0x42000000    # 32.0f

    invoke-virtual {v10, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v13, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget v13, v13, Lcom/prineside/tdi2/systems/GameStateSystem;->averageDifficulty:I

    iget-object v15, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v15}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v15

    iget-object v15, v15, Lcom/prineside/tdi2/Map;->targetTile:Lcom/prineside/tdi2/tiles/TargetTile;

    invoke-virtual {v15}, Lcom/prineside/tdi2/tiles/TargetTile;->isUseStockGameValues()Z

    move-result v15

    invoke-static {v13, v15}, Lcom/prineside/tdi2/MapPrestigeConfig;->getMaxPrestigeScore(IZ)I

    move-result v13

    int-to-long v14, v13

    invoke-static {v14, v15}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v13

    new-instance v14, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v15, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v15, v15, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    move-object/from16 v24, v8

    const/16 v8, 0x18

    invoke-virtual {v15, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v15

    invoke-direct {v14, v15, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    invoke-direct {v10, v13, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v8

    invoke-virtual {v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->top()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v8

    invoke-virtual {v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v8

    const/high16 v10, 0x41800000    # 16.0f

    invoke-virtual {v8, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v8

    const/high16 v10, 0x42200000    # 40.0f

    invoke-virtual {v8, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    goto :goto_0

    :cond_2
    move-object/from16 v24, v8

    const/high16 v10, 0x42200000    # 40.0f

    :goto_0
    invoke-virtual {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->height(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v8

    invoke-virtual {v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expandX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v8

    invoke-virtual {v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fillX()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v8, v0, Lcom/prineside/tdi2/ui/components/MainUi;->S:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/MainUi;->S:Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v9, Lcom/prineside/tdi2/ui/components/MainUi;->p0:Lcom/badlogic/gdx/math/Rectangle;

    iget v10, v9, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v12, v9, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-virtual {v8, v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/MainUi;->S:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget v10, v9, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v12, v9, Lcom/badlogic/gdx/math/Rectangle;->height:F

    invoke-virtual {v8, v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/MainUi;->S:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget v10, v9, Lcom/badlogic/gdx/math/Rectangle;->width:F

    div-float v10, v10, v25

    iget v9, v9, Lcom/badlogic/gdx/math/Rectangle;->height:F

    div-float v9, v9, v25

    invoke-virtual {v8, v10, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOrigin(FF)V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/MainUi;->S:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v10, "icon-mdps"

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v9, 0x42200000    # 40.0f

    invoke-virtual {v8, v9, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v9, Lcom/prineside/tdi2/utils/MaterialColor$PURPLE;->P300:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v10, v0, Lcom/prineside/tdi2/ui/components/MainUi;->S:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v10, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v13, 0x18

    invoke-virtual {v12, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v12

    invoke-direct {v10, v12, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    const-string v12, "0"

    invoke-direct {v8, v12, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v8, v0, Lcom/prineside/tdi2/ui/components/MainUi;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v9, 0x42600000    # 56.0f

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v9, 0x42c80000    # 100.0f

    const/high16 v10, 0x42200000    # 40.0f

    invoke-virtual {v8, v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v10, v0, Lcom/prineside/tdi2/ui/components/MainUi;->S:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v10, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v8, v0, Lcom/prineside/tdi2/ui/components/MainUi;->T:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/MainUi;->T:Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v10, Lcom/prineside/tdi2/ui/components/MainUi;->s0:Lcom/badlogic/gdx/math/Rectangle;

    iget v12, v10, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v13, v10, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-virtual {v8, v12, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/MainUi;->T:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget v12, v10, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v13, v10, Lcom/badlogic/gdx/math/Rectangle;->height:F

    invoke-virtual {v8, v12, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/MainUi;->T:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget v12, v10, Lcom/badlogic/gdx/math/Rectangle;->width:F

    div-float v12, v12, v25

    iget v10, v10, Lcom/badlogic/gdx/math/Rectangle;->height:F

    div-float v10, v10, v25

    invoke-virtual {v8, v12, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOrigin(FF)V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/MainUi;->T:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v12, "icon-wave"

    invoke-virtual {v10, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v10

    invoke-direct {v8, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v10, 0x42400000    # 48.0f

    invoke-virtual {v8, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v8, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v10, v0, Lcom/prineside/tdi2/ui/components/MainUi;->T:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v10, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v10, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v13, 0x24

    invoke-virtual {v12, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v12

    invoke-direct {v10, v12, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    const-string v12, "123"

    invoke-direct {v8, v12, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v8, v0, Lcom/prineside/tdi2/ui/components/MainUi;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v10, 0x42700000    # 60.0f

    const/4 v12, 0x0

    invoke-virtual {v8, v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v12, 0x42400000    # 48.0f

    invoke-virtual {v8, v9, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v12, v0, Lcom/prineside/tdi2/ui/components/MainUi;->T:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v12, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v8, v0, Lcom/prineside/tdi2/ui/components/MainUi;->O:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/MainUi;->O:Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v12, Lcom/prineside/tdi2/ui/components/MainUi;->m0:Lcom/badlogic/gdx/math/Rectangle;

    iget v14, v12, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v15, v12, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-virtual {v8, v14, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/MainUi;->O:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget v14, v12, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v15, v12, Lcom/badlogic/gdx/math/Rectangle;->height:F

    invoke-virtual {v8, v14, v15}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/MainUi;->O:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget v14, v12, Lcom/badlogic/gdx/math/Rectangle;->width:F

    div-float v14, v14, v25

    iget v12, v12, Lcom/badlogic/gdx/math/Rectangle;->height:F

    div-float v12, v12, v25

    invoke-virtual {v8, v14, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOrigin(FF)V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/MainUi;->O:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v14, "game-ui-health-icon"

    invoke-virtual {v12, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v12

    invoke-direct {v8, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/4 v12, 0x0

    invoke-virtual {v8, v12, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v14, 0x42400000    # 48.0f

    invoke-virtual {v8, v14, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v15, v0, Lcom/prineside/tdi2/ui/components/MainUi;->O:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v15, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v8, v0, Lcom/prineside/tdi2/ui/components/MainUi;->t:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v15, 0x0

    invoke-virtual {v8, v15}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {v8, v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v8, v9, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v13, 0x41c00000    # 24.0f

    invoke-virtual {v8, v12, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOrigin(FF)V

    iget-object v13, v0, Lcom/prineside/tdi2/ui/components/MainUi;->O:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v13, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v13, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v13}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v13, v0, Lcom/prineside/tdi2/ui/components/MainUi;->u:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v13, v15}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {v13, v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v13, v9, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v12, v0, Lcom/prineside/tdi2/ui/components/MainUi;->O:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v12, v13}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v13, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v14, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v14, v14, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v15, 0x24

    invoke-virtual {v14, v15}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v14

    invoke-direct {v13, v14, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    const-string v14, "456"

    invoke-direct {v12, v14, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v12, v0, Lcom/prineside/tdi2/ui/components/MainUi;->s:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v13, 0x42400000    # 48.0f

    invoke-virtual {v12, v9, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v8, v12}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v8, v0, Lcom/prineside/tdi2/ui/components/MainUi;->P:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/MainUi;->P:Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v12, Lcom/prineside/tdi2/ui/components/MainUi;->n0:Lcom/badlogic/gdx/math/Rectangle;

    iget v13, v12, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v14, v12, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-virtual {v8, v13, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/MainUi;->P:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget v13, v12, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v14, v12, Lcom/badlogic/gdx/math/Rectangle;->height:F

    invoke-virtual {v8, v13, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/MainUi;->P:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget v13, v12, Lcom/badlogic/gdx/math/Rectangle;->width:F

    div-float v13, v13, v25

    iget v12, v12, Lcom/badlogic/gdx/math/Rectangle;->height:F

    div-float v12, v12, v25

    invoke-virtual {v8, v13, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOrigin(FF)V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/MainUi;->P:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v13, "game-ui-coin-icon"

    invoke-virtual {v12, v13}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v12

    invoke-direct {v8, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/4 v12, 0x0

    invoke-virtual {v8, v12, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v12, 0x42400000    # 48.0f

    invoke-virtual {v8, v12, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v12, v0, Lcom/prineside/tdi2/ui/components/MainUi;->P:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v12, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v14, 0x24

    invoke-virtual {v13, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v13

    invoke-direct {v12, v13, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    const-string v13, "789"

    invoke-direct {v8, v13, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v8, v0, Lcom/prineside/tdi2/ui/components/MainUi;->v:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/4 v12, 0x0

    invoke-virtual {v8, v10, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v10, 0x42400000    # 48.0f

    invoke-virtual {v8, v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v10, v0, Lcom/prineside/tdi2/ui/components/MainUi;->P:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v10, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v12, "icon-x2"

    invoke-virtual {v10, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v10

    invoke-direct {v8, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v8, v0, Lcom/prineside/tdi2/ui/components/MainUi;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v10, 0x42200000    # 40.0f

    invoke-virtual {v8, v10, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    sget-object v10, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v8, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/high16 v12, 0x44220000    # 648.0f

    const/high16 v13, 0x420c0000    # 35.0f

    invoke-virtual {v8, v12, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    invoke-virtual {v3, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v12, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v14, 0x18

    invoke-virtual {v13, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v13

    invoke-direct {v12, v13, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    const-string v13, "789"

    invoke-direct {v8, v13, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v8, v0, Lcom/prineside/tdi2/ui/components/MainUi;->x:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v12, 0x442f0000    # 700.0f

    const/high16 v13, 0x420c0000    # 35.0f

    invoke-virtual {v8, v12, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v12, 0x42200000    # 40.0f

    invoke-virtual {v8, v9, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v9

    const v10, 0x3f0f5c29    # 0.56f

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v9, v12, v12, v12, v10}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    invoke-virtual {v3, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-direct {v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>()V

    iput-object v8, v0, Lcom/prineside/tdi2/ui/components/MainUi;->y:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    sget-object v9, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    new-instance v9, Lcom/prineside/tdi2/ui/components/MainUi$4;

    invoke-direct {v9, v0}, Lcom/prineside/tdi2/ui/components/MainUi$4;-><init>(Lcom/prineside/tdi2/ui/components/MainUi;)V

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    const/high16 v9, 0x43480000    # 200.0f

    const/high16 v10, 0x42900000    # 72.0f

    invoke-virtual {v8, v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v9, 0x441c0000    # 624.0f

    const/high16 v10, 0x41980000    # 19.0f

    invoke-virtual {v8, v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v3, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const/high16 v8, 0x43a00000    # 320.0f

    const v9, 0x441b4000    # 621.0f

    invoke-virtual {v3, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->bottom()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->left()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/components/MainUi;->Q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/MainUi;->Q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v5, Lcom/prineside/tdi2/ui/components/MainUi;->q0:Lcom/badlogic/gdx/math/Rectangle;

    iget v8, v5, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v9, v5, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-virtual {v2, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/MainUi;->Q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget v8, v5, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v9, v5, Lcom/badlogic/gdx/math/Rectangle;->height:F

    invoke-virtual {v2, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/MainUi;->Q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget v8, v5, Lcom/badlogic/gdx/math/Rectangle;->width:F

    div-float v8, v8, v25

    iget v5, v5, Lcom/badlogic/gdx/math/Rectangle;->height:F

    div-float v5, v5, v25

    invoke-virtual {v2, v8, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOrigin(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/MainUi;->Q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v8, "icon-stopwatch"

    invoke-virtual {v5, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/components/MainUi;->C:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v5, 0x42000000    # 32.0f

    invoke-virtual {v2, v5, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v5, 0x43000000    # 128.0f

    invoke-virtual {v2, v5, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/MainUi;->Q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v9, "icon-stopwatch"

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v16, v2

    move-object/from16 v19, v11

    move-object/from16 v20, v11

    move-object/from16 v21, v11

    invoke-direct/range {v16 .. v21}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/components/MainUi;->A:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const-string v8, "next_wave_call_button"

    invoke-virtual {v2, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    new-instance v8, Lcom/prineside/tdi2/ui/components/MainUi$5;

    invoke-direct {v8, v0, v1}, Lcom/prineside/tdi2/ui/components/MainUi$5;-><init>(Lcom/prineside/tdi2/ui/components/MainUi;Lcom/prineside/tdi2/GameSystemProvider;)V

    invoke-virtual {v2, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    const/high16 v8, 0x43400000    # 192.0f

    const/high16 v9, 0x43400000    # 192.0f

    invoke-virtual {v2, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v2, v5, v5}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/high16 v8, 0x42000000    # 32.0f

    invoke-virtual {v2, v8, v8}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconPosition(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    new-instance v8, Lcom/badlogic/gdx/graphics/Color;

    const v9, 0x3e8f5c29    # 0.28f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v8, v10, v10, v10, v9}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    invoke-virtual {v2, v8}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setDisabledColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/MainUi;->Q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-static {}, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_3

    new-instance v8, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v10, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->CALL_WAVE:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/managers/SettingsManager;->getHotKey(Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;)[I

    move-result-object v9

    const/high16 v10, 0x41400000    # 12.0f

    const/high16 v12, 0x42c00000    # 96.0f

    invoke-direct {v8, v9, v12, v10}, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;-><init>([IFF)V

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v10, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->TOGGLE_AUTO_WAVE_CALL:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/managers/SettingsManager;->getHotKey(Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;)[I

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->addVariant([I)V

    invoke-virtual {v2, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_3
    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v9, "ui-stopwatch-timer-background"

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v8

    invoke-direct {v2, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/components/MainUi;->D:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v8, 0x42ee0000    # 119.0f

    const/high16 v9, 0x42000000    # 32.0f

    invoke-virtual {v2, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v8, 0x42280000    # 42.0f

    invoke-virtual {v2, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v9, v0, Lcom/prineside/tdi2/ui/components/MainUi;->Q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v9, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v12, 0x18

    invoke-virtual {v10, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v10

    invoke-direct {v9, v10, v11}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    const-string v10, ""

    invoke-direct {v2, v10, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/components/MainUi;->E:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v9, 0x42480000    # 50.0f

    const/high16 v10, 0x41c00000    # 24.0f

    invoke-virtual {v2, v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v2, v5, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/MainUi;->Q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v9, "ui-auto-force-wave-overlay"

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v8

    invoke-direct {v2, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/components/MainUi;->H:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    const/high16 v8, 0x42000000    # 32.0f

    invoke-virtual {v2, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v8, 0x43090000    # 137.0f

    const/high16 v9, 0x42ba0000    # 93.0f

    invoke-virtual {v2, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/MainUi;->Q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v10, 0x18

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getFont(I)Lcom/prineside/tdi2/ResourcePack$ResourcePackBitmapFont;

    move-result-object v9

    sget-object v10, Lcom/prineside/tdi2/utils/MaterialColor$YELLOW;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v8, v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Lcom/badlogic/gdx/graphics/Color;)V

    const-string v9, ""

    invoke-direct {v2, v9, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/components/MainUi;->F:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    const/high16 v8, 0x43260000    # 166.0f

    const/4 v9, 0x0

    invoke-virtual {v2, v9, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v8, 0x42e20000    # 113.0f

    const/high16 v9, 0x42000000    # 32.0f

    invoke-virtual {v2, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    const/16 v8, 0x10

    invoke-virtual {v2, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/MainUi;->Q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v9, "game-ui-coin-icon"

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v8

    invoke-direct {v2, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/components/MainUi;->G:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v8, 0x42f00000    # 120.0f

    const/high16 v9, 0x43290000    # 169.0f

    invoke-virtual {v2, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v8, 0x41c00000    # 24.0f

    invoke-virtual {v2, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v8, v0, Lcom/prineside/tdi2/ui/components/MainUi;->Q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v8, "icon-speed-pause"

    invoke-virtual {v2, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    iput-object v2, v0, Lcom/prineside/tdi2/ui/components/MainUi;->a0:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v8, "icon-speed-low"

    invoke-virtual {v2, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    iput-object v2, v0, Lcom/prineside/tdi2/ui/components/MainUi;->b0:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v8, "icon-speed-medium"

    invoke-virtual {v2, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    iput-object v2, v0, Lcom/prineside/tdi2/ui/components/MainUi;->c0:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v8, "icon-speed-high"

    invoke-virtual {v2, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v2

    iput-object v2, v0, Lcom/prineside/tdi2/ui/components/MainUi;->d0:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/components/MainUi;->U:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const-string v8, "game_speed_toggle_button"

    invoke-virtual {v2, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/MainUi;->U:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/MainUi;->U:Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v8, Lcom/prineside/tdi2/ui/components/MainUi;->t0:Lcom/badlogic/gdx/math/Rectangle;

    iget v9, v8, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v10, v8, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-virtual {v2, v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/MainUi;->U:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget v9, v8, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v10, v8, Lcom/badlogic/gdx/math/Rectangle;->height:F

    invoke-virtual {v2, v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/MainUi;->U:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget v9, v8, Lcom/badlogic/gdx/math/Rectangle;->width:F

    div-float v9, v9, v25

    iget v8, v8, Lcom/badlogic/gdx/math/Rectangle;->height:F

    div-float v8, v8, v25

    invoke-virtual {v2, v9, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOrigin(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/MainUi;->U:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v9, "icon-speed-pause"

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v8

    invoke-direct {v2, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/components/MainUi;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v8, 0x42000000    # 32.0f

    invoke-virtual {v2, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 v8, 0x42c00000    # 96.0f

    invoke-virtual {v2, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/MainUi;->U:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/MainUi;->b0:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    const/16 v18, 0x0

    move-object/from16 v16, v2

    move-object/from16 v17, v6

    move-object/from16 v19, v11

    move-object/from16 v20, v22

    move-object/from16 v21, v23

    invoke-direct/range {v16 .. v21}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/components/MainUi;->J:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    new-instance v6, Lcom/prineside/tdi2/ui/components/MainUi$6;

    invoke-direct {v6, v0, v1}, Lcom/prineside/tdi2/ui/components/MainUi$6;-><init>(Lcom/prineside/tdi2/ui/components/MainUi;Lcom/prineside/tdi2/GameSystemProvider;)V

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    invoke-virtual {v2, v5, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v6, 0x42c00000    # 96.0f

    invoke-virtual {v2, v6, v6}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/high16 v6, 0x42000000    # 32.0f

    invoke-virtual {v2, v6, v6}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconPosition(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/components/MainUi;->U:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-static {}, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v6, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v9, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->PAUSE_GAME:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/managers/SettingsManager;->getHotKey(Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;)[I

    move-result-object v8

    const/high16 v9, 0x42a00000    # 80.0f

    const/high16 v10, 0x41400000    # 12.0f

    invoke-direct {v6, v8, v9, v10}, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;-><init>([IFF)V

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v9, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->SPEED_DOWN:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/managers/SettingsManager;->getHotKey(Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;)[I

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->addVariant([I)V

    sget-object v8, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v8, v8, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v9, Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;->SPEED_UP:Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    invoke-virtual {v8, v9}, Lcom/prineside/tdi2/managers/SettingsManager;->getHotKey(Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;)[I

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/prineside/tdi2/ui/actors/HotKeyHintLabel;->addVariant([I)V

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_4
    new-instance v2, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v8, "icon-step-forward"

    invoke-virtual {v6, v8}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v17

    new-instance v6, Lcom/prineside/tdi2/ui/components/e;

    invoke-direct {v6, v1}, Lcom/prineside/tdi2/ui/components/e;-><init>(Lcom/prineside/tdi2/GameSystemProvider;)V

    move-object/from16 v16, v2

    move-object/from16 v18, v6

    move-object/from16 v19, v11

    move-object/from16 v20, v22

    move-object/from16 v21, v23

    invoke-direct/range {v16 .. v21}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/components/MainUi;->K:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v2, v5, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v5, 0x42800000    # 64.0f

    invoke-virtual {v2, v5, v5}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/high16 v5, 0x42000000    # 32.0f

    invoke-virtual {v2, v5, v5}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconPosition(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/high16 v5, 0x43100000    # 144.0f

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v5, v0, Lcom/prineside/tdi2/ui/components/MainUi;->U:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "icon-letter"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v17

    new-instance v5, Lcom/prineside/tdi2/ui/components/MainUi$7;

    invoke-direct {v5, v0, v1}, Lcom/prineside/tdi2/ui/components/MainUi$7;-><init>(Lcom/prineside/tdi2/ui/components/MainUi;Lcom/prineside/tdi2/GameSystemProvider;)V

    sget-object v21, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P700:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v16, v2

    move-object/from16 v18, v5

    invoke-direct/range {v16 .. v21}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;Ljava/lang/Runnable;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/components/MainUi;->V:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const-string v5, "story_line_messages_button"

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setName(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/MainUi;->V:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/high16 v5, 0x41c00000    # 24.0f

    const/high16 v6, 0x42000000    # 32.0f

    invoke-virtual {v2, v5, v6}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconPosition(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/MainUi;->V:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/high16 v5, 0x42800000    # 64.0f

    invoke-virtual {v2, v5, v5}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIconSize(FF)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/MainUi;->V:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v5, Lcom/prineside/tdi2/ui/components/MainUi;->r0:Lcom/badlogic/gdx/math/Rectangle;

    iget v6, v5, Lcom/badlogic/gdx/math/Rectangle;->width:F

    iget v8, v5, Lcom/badlogic/gdx/math/Rectangle;->height:F

    invoke-virtual {v2, v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/MainUi;->V:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    iget v6, v5, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v8, v5, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-virtual {v2, v6, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/MainUi;->V:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    iget v6, v5, Lcom/badlogic/gdx/math/Rectangle;->width:F

    div-float v6, v6, v25

    iget v5, v5, Lcom/badlogic/gdx/math/Rectangle;->height:F

    div-float v5, v5, v25

    invoke-virtual {v2, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOrigin(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/MainUi;->V:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/components/MainUi;->V:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v2, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v2, v2, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object v2, v1, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    iget-object v2, v2, Lcom/prineside/tdi2/systems/WaveSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v2, v7}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/EnemySystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    move-object/from16 v2, v24

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/components/MainUi;->l(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/prineside/tdi2/ui/components/MainUi;->updateAll()V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 0

    invoke-static {p0}, Lcom/prineside/tdi2/ui/components/MainUi;->j(Lcom/prineside/tdi2/GameSystemProvider;)V

    return-void
.end method

.method public static synthetic b(Lcom/prineside/tdi2/ui/components/MainUi;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/ui/components/MainUi;->k()V

    return-void
.end method

.method public static synthetic c(Lcom/prineside/tdi2/ui/components/MainUi;)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->J:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    return-object p0
.end method

.method public static synthetic d(Lcom/prineside/tdi2/ui/components/MainUi;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/MainUi;->n()V

    return-void
.end method

.method public static synthetic e(Lcom/prineside/tdi2/ui/components/MainUi;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/MainUi;->m()V

    return-void
.end method

.method public static synthetic f(Lcom/prineside/tdi2/ui/components/MainUi;)Lcom/badlogic/gdx/scenes/scene2d/ui/Image;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    return-object p0
.end method

.method public static synthetic g(Lcom/prineside/tdi2/ui/components/MainUi;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->x:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    return-object p0
.end method

.method public static synthetic h(Lcom/prineside/tdi2/ui/components/MainUi;)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->A:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    return-object p0
.end method

.method public static synthetic i(Lcom/prineside/tdi2/ui/components/MainUi;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->B:Z

    return p0
.end method

.method public static synthetic j(Lcom/prineside/tdi2/GameSystemProvider;)V
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/StateSystem;->requireUpdate()V

    return-void
.end method

.method private synthetic k()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->t:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MainUi;->k0:Lcom/prineside/tdi2/Game$ScreenResizeListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/Game;->removeScreenResizeListener(Lcom/prineside/tdi2/Game$ScreenResizeListener;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MainUi;->d:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/UiManager;->removeLayer(Lcom/prineside/tdi2/managers/UiManager$UiLayer;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MainUi;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/UiManager;->removeLayer(Lcom/prineside/tdi2/managers/UiManager$UiLayer;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MainUi;->b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/UiManager;->removeLayer(Lcom/prineside/tdi2/managers/UiManager$UiLayer;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->k:Lcom/prineside/tdi2/GameSystemProvider;

    return-void
.end method

.method public draw(F)V
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->k:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    iget-object v1, v0, Lcom/prineside/tdi2/systems/WaveSystem;->status:Lcom/prineside/tdi2/systems/WaveSystem$Status;

    sget-object v2, Lcom/prineside/tdi2/systems/WaveSystem$Status;->NOT_STARTED:Lcom/prineside/tdi2/systems/WaveSystem$Status;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_4

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/WaveSystem;->getTimeToNextWave()F

    move-result v0

    float-to-int v0, v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MainUi;->D:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MainUi;->E:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/prineside/tdi2/ui/components/MainUi;->L:I

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/prineside/tdi2/ui/components/MainUi;->u0:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/MainUi;->E:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MainUi;->E:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MainUi;->D:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :cond_1
    :goto_0
    iput v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->L:I

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->k:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/WaveSystem;->getForceWaveBonus()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MainUi;->G:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MainUi;->F:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/prineside/tdi2/ui/components/MainUi;->M:I

    if-eq v0, v1, :cond_3

    sget-object v1, Lcom/prineside/tdi2/ui/components/MainUi;->u0:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    const/16 v2, 0x2b

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/MainUi;->F:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MainUi;->G:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MainUi;->F:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :cond_3
    :goto_1
    iput v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->M:I

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->D:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->E:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->G:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->F:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :goto_2
    iget v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->f0:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->f0:F

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, v0, p1

    if-lez p1, :cond_5

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/MainUi;->m()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/prineside/tdi2/ui/components/MainUi;->f0:F

    :cond_5
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MainUi;->k:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/GameStateSystem;->getDoubleSpeedTimeLeft()F

    move-result p1

    float-to-int p1, p1

    if-lez p1, :cond_7

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->x:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->y:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :cond_6
    iget v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->z:I

    if-eq p1, v0, :cond_8

    iput p1, p0, Lcom/prineside/tdi2/ui/components/MainUi;->z:I

    invoke-static {p1}, Lcom/prineside/tdi2/utils/StringFormatter;->digestTime(I)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->x:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MainUi;->w:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MainUi;->x:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MainUi;->y:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :cond_8
    :goto_3
    return-void
.end method

.method public finalFadeOut()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->d:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->d:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->d:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->e0:Z

    return-void
.end method

.method public gameSpeedButtonVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->e0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->U:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v0

    return v0
.end method

.method public hideCoins()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->P:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->P:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    return-void
.end method

.method public hideDrawModeButton()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->N:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->N:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    return-void
.end method

.method public hideGameSpeedButton()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->U:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->U:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    return-void
.end method

.method public hideHealth()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->O:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->O:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    return-void
.end method

.method public hideMdps()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->S:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->S:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    return-void
.end method

.method public hideMessagesButton()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->V:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->V:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    return-void
.end method

.method public hideNextWaveButton()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->Q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->Q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->k:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/WaveSystem;->setAutoForceWaveEnabled(Z)V

    return-void
.end method

.method public hideScore()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->R:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->R:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    return-void
.end method

.method public hideWaveNumber()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->T:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->T:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    return-void
.end method

.method public final l(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/components/MainUi;->B:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MainUi;->A:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P600:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0, v1, v2}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MainUi;->k:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    invoke-virtual {p1}, Lcom/prineside/tdi2/systems/WaveSystem;->isAutoForceWaveEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MainUi;->A:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P400:Lcom/badlogic/gdx/graphics/Color;

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {p1, v0, v1, v2}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MainUi;->A:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {p1}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->getDisabledColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object p1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->A:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v0, p1, p1, p1}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    return-void
.end method

.method public final m()V
    .locals 8

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->k:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->loot:Lcom/prineside/tdi2/systems/LootSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/LootSystem;->isRewardingAdAvailableInReality()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v1, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->ENABLE_PAUSE_AD_ICON:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->X:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->X:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->X:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->X:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/4 v2, 0x0

    invoke-static {v2, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleTo(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;

    move-result-object v3

    const v4, 0x3e4ccccd    # 0.2f

    sget-object v5, Lcom/badlogic/gdx/math/Interpolation;->swingOut:Lcom/badlogic/gdx/math/Interpolation$SwingOut;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v6, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v3

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P700:Lcom/badlogic/gdx/graphics/Color;

    const v5, 0x3f333333    # 0.7f

    invoke-static {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->color(Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P400:Lcom/badlogic/gdx/graphics/Color;

    const v7, 0x3ecccccd    # 0.4f

    invoke-static {v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->color(Lcom/badlogic/gdx/graphics/Color;F)Lcom/badlogic/gdx/scenes/scene2d/actions/ColorAction;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v4

    invoke-static {v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->forever(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->parallel(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->Y:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->Y:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->Y:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->delay(F)Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    move-result-object v1

    invoke-static {v6}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeOut(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->Y:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    invoke-virtual {v0}, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;->clearParticles()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->Y:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MainUi;->Z:Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-virtual {v0, v1, v2, v2}, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;FF)Lcom/prineside/tdi2/ui/actors/ParticlesCanvas$ParticleConfig;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->X:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->X:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->Y:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->Y:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final n()V
    .locals 8

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->k:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/WaveSystem;->isForceWaveAvailable()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/ui/components/MainUi;->l(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->C:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->C:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->show()Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->C:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const v4, 0x3f47ae14    # 0.78f

    invoke-static {v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v4

    const/high16 v6, 0x42000000    # 32.0f

    invoke-static {v6, v6}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v6

    invoke-static {v3, v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v3

    const/high16 v6, 0x43000000    # 128.0f

    invoke-static {v6, v6}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sizeTo(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;

    move-result-object v6

    const/high16 v7, 0x43400000    # 192.0f

    invoke-static {v7, v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sizeTo(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->parallel(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    move-result-object v3

    invoke-static {v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->forever(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/prineside/tdi2/ui/components/MainUi;->l(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->C:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->C:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const v4, 0x3e4ccccd    # 0.2f

    invoke-static {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v3

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->hide()Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    :goto_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->k:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/WaveSystem;->isAutoForceWaveEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->H:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->H:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :goto_1
    return-void
.end method

.method public nextWaveButtonVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->e0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->Q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v0

    return v0
.end method

.method public postSetup()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->k:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameValue:Lcom/prineside/tdi2/systems/GameValueSystem;

    sget-object v1, Lcom/prineside/tdi2/enums/GameValueType;->MDPS_COUNTER:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/systems/GameValueSystem;->getBooleanValue(Lcom/prineside/tdi2/enums/GameValueType;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->S:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public setLevelStarsIcon(I)V
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->W:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v1, -0x3f000000    # -8.0f

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-static {v1, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v1

    const/high16 v3, 0x42600000    # 56.0f

    invoke-static {v3, v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sizeTo(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->parallel(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v3, v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v3

    const/high16 v4, 0x42200000    # 40.0f

    invoke-static {v4, v4, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sizeTo(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->parallel(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MainUi;->W:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "icon-three-stars"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MainUi;->W:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "icon-two-stars"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MainUi;->W:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "icon-star"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MainUi;->W:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v1, "icon-star-hollow"

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;->setDrawable(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    :goto_0
    return-void
.end method

.method public setUiScreenshotMode(Lcom/prineside/tdi2/systems/GraphicsSystem$ScreenshotModeConfig;)V
    .locals 0

    return-void
.end method

.method public showCoins(ZLjava/lang/Runnable;)V
    .locals 6

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->P:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->P:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->P:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MainUi;->k:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    iget-object v0, p1, Lcom/prineside/tdi2/systems/GraphicsSystem;->uiElementsEmphasizer:Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MainUi;->P:Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v2, Lcom/prineside/tdi2/ui/components/MainUi;->n0:Lcom/badlogic/gdx/math/Rectangle;

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "coins"

    invoke-virtual {p1, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v4, "main_ui_coins_description"

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

.method public showDrawModeButton(ZLjava/lang/Runnable;)V
    .locals 6

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->N:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->N:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->N:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MainUi;->k:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    iget-object v0, p1, Lcom/prineside/tdi2/systems/GraphicsSystem;->uiElementsEmphasizer:Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MainUi;->N:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v2, Lcom/prineside/tdi2/ui/components/MainUi;->l0:Lcom/badlogic/gdx/math/Rectangle;

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "main_ui_drawing_mode_title"

    invoke-virtual {p1, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v4, "main_ui_drawing_mode_description"

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

.method public showGameSpeedButton(ZLjava/lang/Runnable;)V
    .locals 6

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->U:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->U:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->U:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MainUi;->k:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    iget-object v0, p1, Lcom/prineside/tdi2/systems/GraphicsSystem;->uiElementsEmphasizer:Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MainUi;->U:Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v2, Lcom/prineside/tdi2/ui/components/MainUi;->t0:Lcom/badlogic/gdx/math/Rectangle;

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "main_ui_game_speed_button_title"

    invoke-virtual {p1, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v4, "main_ui_game_speed_button_description"

    invoke-virtual {p1, v4}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/prineside/tdi2/ui/components/MainUi$8;

    invoke-direct {v5, p0, p2}, Lcom/prineside/tdi2/ui/components/MainUi$8;-><init>(Lcom/prineside/tdi2/ui/components/MainUi;Ljava/lang/Runnable;)V

    invoke-virtual/range {v0 .. v5}, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->show(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/math/Rectangle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_1
    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/MainUi;->updateGameSpeedButton()V

    :goto_0
    return-void
.end method

.method public showHealth(ZLjava/lang/Runnable;)V
    .locals 6

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->O:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->O:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->O:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MainUi;->k:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    iget-object v0, p1, Lcom/prineside/tdi2/systems/GraphicsSystem;->uiElementsEmphasizer:Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MainUi;->O:Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v2, Lcom/prineside/tdi2/ui/components/MainUi;->m0:Lcom/badlogic/gdx/math/Rectangle;

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "main_ui_health_title"

    invoke-virtual {p1, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v4, "main_ui_health_description"

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

.method public showHealthDelta(I)V
    .locals 5

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->t:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->t:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->t:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const v1, 0x3fa66666    # 1.3f

    invoke-static {v1, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleTo(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-static {v2, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleTo(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;

    move-result-object v2

    new-instance v4, Lcom/prineside/tdi2/ui/components/d;

    invoke-direct {v4, p0}, Lcom/prineside/tdi2/ui/components/d;-><init>(Lcom/prineside/tdi2/ui/components/MainUi;)V

    invoke-static {v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->run(Ljava/lang/Runnable;)Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v1

    const-string v2, "0"

    invoke-direct {v0, v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    if-gtz p1, :cond_0

    sget-object p1, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    sget-object p1, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P300:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_0
    const/high16 p1, -0x3e700000    # -18.0f

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const/high16 p1, -0x3e000000    # -32.0f

    const v2, 0x3eb33333    # 0.35f

    invoke-static {v1, p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveBy(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveByAction;

    move-result-object p1

    const v1, 0x3dcccccd    # 0.1f

    invoke-static {v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->delay(F)Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    move-result-object v1

    invoke-static {v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->fadeOut(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v2

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->removeActor()Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->parallel(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    move-result-object p1

    invoke-static {p1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MainUi;->u:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return-void
.end method

.method public showMdps(ZLjava/lang/Runnable;)V
    .locals 6

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->S:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->S:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->S:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MainUi;->k:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    iget-object v0, p1, Lcom/prineside/tdi2/systems/GraphicsSystem;->uiElementsEmphasizer:Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MainUi;->S:Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v2, Lcom/prineside/tdi2/ui/components/MainUi;->p0:Lcom/badlogic/gdx/math/Rectangle;

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "main_ui_mdps_title"

    invoke-virtual {p1, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v4, "main_ui_mdps_description"

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

.method public showMessagesButton(ZLjava/lang/Runnable;)V
    .locals 8

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->V:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->V:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->V:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MainUi;->k:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    iget-object v2, p1, Lcom/prineside/tdi2/systems/GraphicsSystem;->uiElementsEmphasizer:Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/MainUi;->V:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v4, Lcom/prineside/tdi2/ui/components/MainUi;->r0:Lcom/badlogic/gdx/math/Rectangle;

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v0, "messages"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v0, "main_ui_messages_button_description"

    invoke-virtual {p1, v0}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;->show(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/math/Rectangle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MainUi;->K:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    return-void
.end method

.method public showNextWaveButton(ZLjava/lang/Runnable;)V
    .locals 6

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->Q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->Q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->Q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MainUi;->k:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    iget-object v0, p1, Lcom/prineside/tdi2/systems/GraphicsSystem;->uiElementsEmphasizer:Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MainUi;->Q:Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v2, Lcom/prineside/tdi2/ui/components/MainUi;->q0:Lcom/badlogic/gdx/math/Rectangle;

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "main_ui_wave_call_title"

    invoke-virtual {p1, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v4, "main_ui_wave_call_description"

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

.method public showScore(ZLjava/lang/Runnable;)V
    .locals 6

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->R:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->R:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->R:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MainUi;->k:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    iget-object v0, p1, Lcom/prineside/tdi2/systems/GraphicsSystem;->uiElementsEmphasizer:Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MainUi;->R:Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v2, Lcom/prineside/tdi2/ui/components/MainUi;->o0:Lcom/badlogic/gdx/math/Rectangle;

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "score"

    invoke-virtual {p1, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v4, "main_ui_score_description"

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

.method public showWaveNumber(ZLjava/lang/Runnable;)V
    .locals 6

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->T:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->T:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->T:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/prineside/tdi2/ui/components/MainUi;->k:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object p1, p1, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    iget-object v0, p1, Lcom/prineside/tdi2/systems/GraphicsSystem;->uiElementsEmphasizer:Lcom/prineside/tdi2/ui/components/UiElementsEmphasizer;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MainUi;->T:Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v2, Lcom/prineside/tdi2/ui/components/MainUi;->s0:Lcom/badlogic/gdx/math/Rectangle;

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v3, "main_ui_wave_title"

    invoke-virtual {p1, v3}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object p1, p1, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v4, "main_ui_wave_description"

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

.method public updateAll()V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/MainUi;->updateScore()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/MainUi;->updateMoney()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/MainUi;->updateWave()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/MainUi;->updateHealth()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/MainUi;->updateMdps()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/MainUi;->n()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/components/MainUi;->updateGameSpeedButton()V

    return-void
.end method

.method public updateGameSpeedButton()V
    .locals 8

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->k:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/GameStateSystem;->getGameSpeed()F

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3d889a02    # 0.0667f

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->J:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    iget-object v4, p0, Lcom/prineside/tdi2/ui/components/MainUi;->a0:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {v0, v4}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->J:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->show()Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const v4, 0x3f47ae14    # 0.78f

    invoke-static {v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v4

    invoke-static {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v4

    const/high16 v5, 0x42000000    # 32.0f

    invoke-static {v5, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v5

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v6, v6, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->moveTo(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/MoveToAction;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v5

    const/high16 v6, 0x42c00000    # 96.0f

    invoke-static {v6, v6}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sizeTo(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;

    move-result-object v6

    const/high16 v7, 0x43100000    # 144.0f

    invoke-static {v7, v7, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sizeTo(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/SizeToAction;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v3

    invoke-static {v4, v5, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->parallel(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    move-result-object v3

    invoke-static {v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->forever(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/RepeatAction;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    goto :goto_1

    :cond_1
    cmpg-float v3, v0, v3

    if-gtz v3, :cond_2

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->J:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/MainUi;->b0:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {v0, v3}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    goto :goto_0

    :cond_2
    const/high16 v3, 0x40000000    # 2.0f

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->J:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/MainUi;->c0:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {v0, v3}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->J:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/MainUi;->d0:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {v0, v3}, Lcom/prineside/tdi2/ui/actors/PaddedImageButton;->setIcon(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    :goto_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->I:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const v3, 0x3e4ccccd    # 0.2f

    invoke-static {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v3

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->hide()Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    :goto_1
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->K:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v4, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->SLOW_MOTION_PAUSE:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v7, v3, v5

    if-nez v7, :cond_4

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/MainUi;->k:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v3}, Lcom/prineside/tdi2/systems/GameStateSystem;->getGameSpeed()F

    move-result v3

    cmpl-float v2, v3, v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/MainUi;->V:Lcom/prineside/tdi2/ui/actors/PaddedImageButton;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isVisible()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    return-void
.end method

.method public updateHealth()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->k:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/GameStateSystem;->getHealth()I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sget-object v2, Lcom/prineside/tdi2/ui/components/MainUi;->u0:Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->s:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateMdps()V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->q:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MainUi;->k:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->enemy:Lcom/prineside/tdi2/systems/EnemySystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/EnemySystem;->getTowersMaxDps()D

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/prineside/tdi2/utils/StringFormatter;->compactNumber(DZ)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateMoney()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->v:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MainUi;->k:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/GameStateSystem;->getMoney()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateScore()V
    .locals 3

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/MainUi;->p:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MainUi;->k:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/GameStateSystem;->getScore()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/prineside/tdi2/utils/StringFormatter;->commaSeparatedNumber(J)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateWave()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/ui/components/MainUi;->u0:Lcom/badlogic/gdx/utils/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->setLength(I)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MainUi;->k:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    iget-object v1, v1, Lcom/prineside/tdi2/systems/WaveSystem;->wave:Lcom/prineside/tdi2/Wave;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    iget v1, v1, Lcom/prineside/tdi2/Wave;->waveNumber:I

    :goto_0
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/MainUi;->r:Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
