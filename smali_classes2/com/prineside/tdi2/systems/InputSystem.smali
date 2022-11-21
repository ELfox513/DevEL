.class public Lcom/prineside/tdi2/systems/InputSystem;
.super Lcom/prineside/tdi2/GameSystem;
.source "SourceFile"


# annotations
.annotation runtime Lcom/prineside/tdi2/utils/NAGS;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/systems/InputSystem$InputSystemListener;,
        Lcom/prineside/tdi2/systems/InputSystem$_Game_StateSystemListener;,
        Lcom/prineside/tdi2/systems/InputSystem$_ScreenResizeListener;,
        Lcom/prineside/tdi2/systems/InputSystem$_MapSystemListener;,
        Lcom/prineside/tdi2/systems/InputSystem$_InputProcessor;
    }
.end annotation


# instance fields
.field public a:Lcom/badlogic/gdx/InputMultiplexer;

.field public b:Lcom/badlogic/gdx/InputMultiplexer;

.field public cameraController:Lcom/prineside/tdi2/CameraController;

.field public d:Lcom/prineside/tdi2/Tile;

.field public k:Lcom/prineside/tdi2/Gate;

.field public final listeners:Lcom/prineside/tdi2/ListenerGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/prineside/tdi2/ListenerGroup<",
            "Lcom/prineside/tdi2/systems/InputSystem$InputSystemListener;",
            ">;"
        }
    .end annotation
.end field

.field public final p:Lcom/badlogic/gdx/math/Vector2;

.field public q:Z

.field public r:Lcom/badlogic/gdx/InputProcessor;

.field public s:Z

.field public final t:Lcom/prineside/tdi2/systems/InputSystem$_Game_StateSystemListener;

.field public final u:Lcom/prineside/tdi2/systems/InputSystem$_ScreenResizeListener;

.field public final v:Lcom/prineside/tdi2/systems/InputSystem$_MapSystemListener;

.field public w:F

.field public x:I

.field public y:I

.field public final z:Lcom/prineside/tdi2/systems/InputSystem$_InputProcessor;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/prineside/tdi2/GameSystem;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/InputSystem;->p:Lcom/badlogic/gdx/math/Vector2;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/systems/InputSystem;->s:Z

    new-instance v0, Lcom/prineside/tdi2/ListenerGroup;

    const-class v1, Lcom/prineside/tdi2/systems/InputSystem$InputSystemListener;

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/InputSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    new-instance v0, Lcom/prineside/tdi2/systems/InputSystem$_Game_StateSystemListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/prineside/tdi2/systems/InputSystem$_Game_StateSystemListener;-><init>(Lcom/prineside/tdi2/systems/InputSystem;Lcom/prineside/tdi2/systems/InputSystem$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/InputSystem;->t:Lcom/prineside/tdi2/systems/InputSystem$_Game_StateSystemListener;

    new-instance v0, Lcom/prineside/tdi2/systems/InputSystem$_ScreenResizeListener;

    invoke-direct {v0, p0, v1}, Lcom/prineside/tdi2/systems/InputSystem$_ScreenResizeListener;-><init>(Lcom/prineside/tdi2/systems/InputSystem;Lcom/prineside/tdi2/systems/InputSystem$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/InputSystem;->u:Lcom/prineside/tdi2/systems/InputSystem$_ScreenResizeListener;

    new-instance v0, Lcom/prineside/tdi2/systems/InputSystem$_MapSystemListener;

    invoke-direct {v0, p0, v1}, Lcom/prineside/tdi2/systems/InputSystem$_MapSystemListener;-><init>(Lcom/prineside/tdi2/systems/InputSystem;Lcom/prineside/tdi2/systems/InputSystem$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/InputSystem;->v:Lcom/prineside/tdi2/systems/InputSystem$_MapSystemListener;

    new-instance v0, Lcom/prineside/tdi2/systems/InputSystem$_InputProcessor;

    invoke-direct {v0, p0, v1}, Lcom/prineside/tdi2/systems/InputSystem$_InputProcessor;-><init>(Lcom/prineside/tdi2/systems/InputSystem;Lcom/prineside/tdi2/systems/InputSystem$1;)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/InputSystem;->z:Lcom/prineside/tdi2/systems/InputSystem$_InputProcessor;

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/systems/InputSystem;I)I
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/systems/InputSystem;->y:I

    return p1
.end method

.method public static synthetic b(Lcom/prineside/tdi2/systems/InputSystem;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/prineside/tdi2/systems/InputSystem;->s:Z

    return p0
.end method

.method public static synthetic c(Lcom/prineside/tdi2/systems/InputSystem;)Lcom/badlogic/gdx/InputProcessor;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/systems/InputSystem;->r:Lcom/badlogic/gdx/InputProcessor;

    return-object p0
.end method

.method public static synthetic d(Lcom/prineside/tdi2/systems/InputSystem;Lcom/badlogic/gdx/InputProcessor;)Lcom/badlogic/gdx/InputProcessor;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/systems/InputSystem;->r:Lcom/badlogic/gdx/InputProcessor;

    return-object p1
.end method

.method public static synthetic e(Lcom/prineside/tdi2/systems/InputSystem;)Lcom/badlogic/gdx/math/Vector2;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/systems/InputSystem;->p:Lcom/badlogic/gdx/math/Vector2;

    return-object p0
.end method

.method public static synthetic f(Lcom/prineside/tdi2/systems/InputSystem;)Lcom/prineside/tdi2/Tile;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/systems/InputSystem;->d:Lcom/prineside/tdi2/Tile;

    return-object p0
.end method

.method public static synthetic g(Lcom/prineside/tdi2/systems/InputSystem;Lcom/prineside/tdi2/Tile;)Lcom/prineside/tdi2/Tile;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/systems/InputSystem;->d:Lcom/prineside/tdi2/Tile;

    return-object p1
.end method

.method public static synthetic h(Lcom/prineside/tdi2/systems/InputSystem;)Lcom/prineside/tdi2/Gate;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/systems/InputSystem;->k:Lcom/prineside/tdi2/Gate;

    return-object p0
.end method

.method public static synthetic i(Lcom/prineside/tdi2/systems/InputSystem;Lcom/prineside/tdi2/Gate;)Lcom/prineside/tdi2/Gate;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/systems/InputSystem;->k:Lcom/prineside/tdi2/Gate;

    return-object p1
.end method

.method public static synthetic j(Lcom/prineside/tdi2/systems/InputSystem;I)I
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/systems/InputSystem;->x:I

    return p1
.end method


# virtual methods
.method public affectsGameState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public disableInput()V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->setInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    return-void
.end method

.method public dispose()V
    .locals 2

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/InputSystem;->u:Lcom/prineside/tdi2/systems/InputSystem$_ScreenResizeListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/Game;->removeScreenResizeListener(Lcom/prineside/tdi2/Game$ScreenResizeListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/systems/InputSystem;->a:Lcom/badlogic/gdx/InputMultiplexer;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/InputSystem;->b:Lcom/badlogic/gdx/InputMultiplexer;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/InputSystem;->cameraController:Lcom/prineside/tdi2/CameraController;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/InputSystem;->d:Lcom/prineside/tdi2/Tile;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/InputSystem;->k:Lcom/prineside/tdi2/Gate;

    iput-object v0, p0, Lcom/prineside/tdi2/systems/InputSystem;->r:Lcom/badlogic/gdx/InputProcessor;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/systems/InputSystem;->s:Z

    invoke-super {p0}, Lcom/prineside/tdi2/GameSystem;->dispose()V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;FF)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v2, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->DBG_DRAW_CURSOR_POS:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v1

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    cmpl-double v3, v1, v8

    if-eqz v3, :cond_0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v1, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getDebugFont(Z)Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/prineside/tdi2/systems/InputSystem;->p:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/prineside/tdi2/systems/InputSystem;->p:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/prineside/tdi2/systems/InputSystem;->p:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v5, 0x41200000    # 10.0f

    add-float/2addr v4, v5

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v3, v5

    invoke-virtual {v1, v7, v2, v4, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    :cond_0
    iget v1, v0, Lcom/prineside/tdi2/systems/InputSystem;->w:F

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v11

    if-eqz v2, :cond_1

    invoke-virtual {v7, v12, v12, v12, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(FFFF)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/AssetManager;->TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    iget-object v2, v1, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->tileOutlineHover:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    iget v1, v0, Lcom/prineside/tdi2/systems/InputSystem;->x:I

    mul-int/lit16 v1, v1, 0x80

    int-to-float v1, v1

    const/high16 v3, 0x41400000    # 12.0f

    sub-float v4, v1, v3

    iget v1, v0, Lcom/prineside/tdi2/systems/InputSystem;->y:I

    mul-int/lit16 v1, v1, 0x80

    int-to-float v1, v1

    sub-float v5, v1, v3

    const/high16 v6, 0x43180000    # 152.0f

    const/high16 v13, 0x43180000    # 152.0f

    move-object/from16 v1, p1

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v13

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFF)V

    sget-object v1, Lcom/prineside/tdi2/Config;->WHITE_COLOR_CACHED_FLOAT_BITS:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget v1, v0, Lcom/prineside/tdi2/systems/InputSystem;->w:F

    sub-float v1, v1, p3

    iput v1, v0, Lcom/prineside/tdi2/systems/InputSystem;->w:F

    cmpg-float v1, v1, v11

    if-gez v1, :cond_1

    iput v11, v0, Lcom/prineside/tdi2/systems/InputSystem;->w:F

    :cond_1
    iget-boolean v1, v0, Lcom/prineside/tdi2/systems/InputSystem;->s:Z

    if-nez v1, :cond_1b

    iget-object v1, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/GameStateSystem;->isPaused()Z

    move-result v1

    if-nez v1, :cond_1b

    iget-boolean v1, v0, Lcom/prineside/tdi2/systems/InputSystem;->q:Z

    if-nez v1, :cond_1b

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/SettingsManager;->isEscButtonJustPressed()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, v0, Lcom/prineside/tdi2/systems/InputSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->begin()V

    iget-object v1, v0, Lcom/prineside/tdi2/systems/InputSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->size()I

    move-result v1

    :goto_0
    if-ge v10, v1, :cond_2

    iget-object v2, v0, Lcom/prineside/tdi2/systems/InputSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v2, v10}, Lcom/prineside/tdi2/ListenerGroup;->get(I)Lcom/prineside/tdi2/GameListener;

    move-result-object v2

    check-cast v2, Lcom/prineside/tdi2/systems/InputSystem$InputSystemListener;

    invoke-interface {v2}, Lcom/prineside/tdi2/systems/InputSystem$InputSystemListener;->backButtonPressed()V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/prineside/tdi2/systems/InputSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    invoke-virtual {v1}, Lcom/prineside/tdi2/ListenerGroup;->end()V

    goto/16 :goto_d

    :cond_3
    sget-object v2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v3, 0x14

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Input;->isKeyJustPressed(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    iget v2, v0, Lcom/prineside/tdi2/systems/InputSystem;->y:I

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/prineside/tdi2/systems/InputSystem;->y:I

    if-gez v2, :cond_4

    iput v10, v0, Lcom/prineside/tdi2/systems/InputSystem;->y:I

    :cond_4
    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    sget-object v4, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v5, 0x15

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/Input;->isKeyJustPressed(I)Z

    move-result v4

    if-eqz v4, :cond_7

    iget v2, v0, Lcom/prineside/tdi2/systems/InputSystem;->x:I

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/prineside/tdi2/systems/InputSystem;->x:I

    if-gez v2, :cond_6

    iput v10, v0, Lcom/prineside/tdi2/systems/InputSystem;->x:I

    :cond_6
    const/4 v2, 0x1

    :cond_7
    sget-object v4, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v5, 0x16

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/Input;->isKeyJustPressed(I)Z

    move-result v4

    if-eqz v4, :cond_9

    iget v2, v0, Lcom/prineside/tdi2/systems/InputSystem;->x:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/prineside/tdi2/systems/InputSystem;->x:I

    iget-object v4, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v4}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v4

    iget v4, v4, Lcom/prineside/tdi2/Map;->widthTiles:I

    sub-int/2addr v4, v3

    if-le v2, v4, :cond_8

    iget-object v2, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v2

    iget v2, v2, Lcom/prineside/tdi2/Map;->widthTiles:I

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/prineside/tdi2/systems/InputSystem;->x:I

    :cond_8
    const/4 v2, 0x1

    :cond_9
    sget-object v4, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v5, 0x13

    invoke-interface {v4, v5}, Lcom/badlogic/gdx/Input;->isKeyJustPressed(I)Z

    move-result v4

    if-eqz v4, :cond_b

    iget v2, v0, Lcom/prineside/tdi2/systems/InputSystem;->y:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/prineside/tdi2/systems/InputSystem;->y:I

    iget-object v4, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v4}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v4

    iget v4, v4, Lcom/prineside/tdi2/Map;->heightTiles:I

    sub-int/2addr v4, v3

    if-le v2, v4, :cond_a

    iget-object v2, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v2

    iget v2, v2, Lcom/prineside/tdi2/Map;->heightTiles:I

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/prineside/tdi2/systems/InputSystem;->y:I

    :cond_a
    const/4 v2, 0x1

    :cond_b
    if-eqz v2, :cond_c

    iget-object v2, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v4

    iget v5, v0, Lcom/prineside/tdi2/systems/InputSystem;->x:I

    iget v6, v0, Lcom/prineside/tdi2/systems/InputSystem;->y:I

    invoke-virtual {v4, v5, v6}, Lcom/prineside/tdi2/Map;->getTile(II)Lcom/prineside/tdi2/Tile;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/systems/MapSystem;->setSelectedTile(Lcom/prineside/tdi2/Tile;)V

    iput v12, v0, Lcom/prineside/tdi2/systems/InputSystem;->w:F

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    sget-object v4, Lcom/prineside/tdi2/enums/StaticSoundType;->BUTTON:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v2, v4}, Lcom/prineside/tdi2/managers/SoundManager;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    :cond_c
    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/SettingsManager;->getHotkeysJustPressed()Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    const/4 v2, 0x0

    :goto_2
    iget v4, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v4, :cond_1b

    iget-object v4, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/managers/SettingsManager$HotkeyAction;

    aget-object v4, v4, v2

    sget-object v5, Lcom/prineside/tdi2/systems/InputSystem$1;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v5, v6

    const/4 v7, 0x0

    const/4 v13, 0x5

    const/4 v14, 0x4

    const/4 v15, 0x3

    const/16 v16, 0x2

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_c

    :pswitch_0
    iget-object v4, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v4}, Lcom/prineside/tdi2/systems/MapSystem;->getSelectedTile()Lcom/prineside/tdi2/Tile;

    move-result-object v4

    instance-of v5, v4, Lcom/prineside/tdi2/tiles/PlatformTile;

    if-eqz v5, :cond_1a

    check-cast v4, Lcom/prineside/tdi2/tiles/PlatformTile;

    iget-object v4, v4, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-eqz v4, :cond_e

    iget-object v5, v4, Lcom/prineside/tdi2/Building;->buildingType:Lcom/prineside/tdi2/enums/BuildingType;

    sget-object v6, Lcom/prineside/tdi2/enums/BuildingType;->TOWER:Lcom/prineside/tdi2/enums/BuildingType;

    if-ne v5, v6, :cond_e

    check-cast v4, Lcom/prineside/tdi2/Tower;

    sget-object v5, Lcom/prineside/tdi2/Tower$AimStrategy;->values:[Lcom/prineside/tdi2/Tower$AimStrategy;

    array-length v6, v5

    sub-int/2addr v6, v3

    iget-object v7, v4, Lcom/prineside/tdi2/Tower;->aimStrategy:Lcom/prineside/tdi2/Tower$AimStrategy;

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    if-eqz v7, :cond_d

    iget-object v6, v4, Lcom/prineside/tdi2/Tower;->aimStrategy:Lcom/prineside/tdi2/Tower$AimStrategy;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    sub-int/2addr v6, v3

    :cond_d
    iget-object v7, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v7, v7, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    aget-object v13, v5, v6

    invoke-virtual {v7, v4, v13}, Lcom/prineside/tdi2/systems/TowerSystem;->setTowerAimStrategyAction(Lcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/Tower$AimStrategy;)V

    iget-object v4, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    iget-object v4, v4, Lcom/prineside/tdi2/systems/GraphicsSystem;->tooltip:Lcom/prineside/tdi2/ui/components/Tooltip;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    aget-object v5, v5, v6

    invoke-virtual {v7, v5}, Lcom/prineside/tdi2/managers/TowerManager;->getAimStrategyName(Lcom/prineside/tdi2/Tower$AimStrategy;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/ui/components/Tooltip;->show(Ljava/lang/CharSequence;)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    sget-object v5, Lcom/prineside/tdi2/enums/StaticSoundType;->BUTTON:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/SoundManager;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    goto/16 :goto_c

    :cond_e
    sget-object v4, Lcom/prineside/tdi2/Tower$AimStrategy;->values:[Lcom/prineside/tdi2/Tower$AimStrategy;

    array-length v5, v4

    sub-int/2addr v5, v3

    iget-object v6, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v6, v6, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    invoke-virtual {v6}, Lcom/prineside/tdi2/systems/TowerSystem;->getDefaultAimStrategy()Lcom/prineside/tdi2/Tower$AimStrategy;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-eqz v6, :cond_f

    iget-object v5, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    invoke-virtual {v5}, Lcom/prineside/tdi2/systems/TowerSystem;->getDefaultAimStrategy()Lcom/prineside/tdi2/Tower$AimStrategy;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    sub-int/2addr v5, v3

    :cond_f
    iget-object v6, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v6, v6, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    aget-object v7, v4, v5

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/systems/TowerSystem;->setDefaultAimStrategy(Lcom/prineside/tdi2/Tower$AimStrategy;)V

    iget-object v6, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v6, v6, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    iget-object v6, v6, Lcom/prineside/tdi2/systems/GraphicsSystem;->tooltip:Lcom/prineside/tdi2/ui/components/Tooltip;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    aget-object v4, v4, v5

    invoke-virtual {v7, v4}, Lcom/prineside/tdi2/managers/TowerManager;->getAimStrategyName(Lcom/prineside/tdi2/Tower$AimStrategy;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/prineside/tdi2/ui/components/Tooltip;->show(Ljava/lang/CharSequence;)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    sget-object v5, Lcom/prineside/tdi2/enums/StaticSoundType;->BUTTON:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/SoundManager;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    goto/16 :goto_c

    :pswitch_1
    iget-object v4, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v4}, Lcom/prineside/tdi2/systems/MapSystem;->getSelectedTile()Lcom/prineside/tdi2/Tile;

    move-result-object v4

    instance-of v5, v4, Lcom/prineside/tdi2/tiles/PlatformTile;

    if-eqz v5, :cond_1a

    check-cast v4, Lcom/prineside/tdi2/tiles/PlatformTile;

    iget-object v4, v4, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-eqz v4, :cond_11

    iget-object v5, v4, Lcom/prineside/tdi2/Building;->buildingType:Lcom/prineside/tdi2/enums/BuildingType;

    sget-object v6, Lcom/prineside/tdi2/enums/BuildingType;->TOWER:Lcom/prineside/tdi2/enums/BuildingType;

    if-ne v5, v6, :cond_11

    check-cast v4, Lcom/prineside/tdi2/Tower;

    iget-object v5, v4, Lcom/prineside/tdi2/Tower;->aimStrategy:Lcom/prineside/tdi2/Tower$AimStrategy;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    sget-object v6, Lcom/prineside/tdi2/Tower$AimStrategy;->values:[Lcom/prineside/tdi2/Tower$AimStrategy;

    array-length v7, v6

    sub-int/2addr v7, v3

    if-ge v5, v7, :cond_10

    iget-object v5, v4, Lcom/prineside/tdi2/Tower;->aimStrategy:Lcom/prineside/tdi2/Tower$AimStrategy;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    add-int/2addr v5, v3

    goto :goto_3

    :cond_10
    const/4 v5, 0x0

    :goto_3
    iget-object v7, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v7, v7, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    aget-object v13, v6, v5

    invoke-virtual {v7, v4, v13}, Lcom/prineside/tdi2/systems/TowerSystem;->setTowerAimStrategyAction(Lcom/prineside/tdi2/Tower;Lcom/prineside/tdi2/Tower$AimStrategy;)V

    iget-object v4, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    iget-object v4, v4, Lcom/prineside/tdi2/systems/GraphicsSystem;->tooltip:Lcom/prineside/tdi2/ui/components/Tooltip;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    aget-object v5, v6, v5

    invoke-virtual {v7, v5}, Lcom/prineside/tdi2/managers/TowerManager;->getAimStrategyName(Lcom/prineside/tdi2/Tower$AimStrategy;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/ui/components/Tooltip;->show(Ljava/lang/CharSequence;)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    sget-object v5, Lcom/prineside/tdi2/enums/StaticSoundType;->BUTTON:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/SoundManager;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    goto/16 :goto_c

    :cond_11
    iget-object v4, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    invoke-virtual {v4}, Lcom/prineside/tdi2/systems/TowerSystem;->getDefaultAimStrategy()Lcom/prineside/tdi2/Tower$AimStrategy;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    sget-object v5, Lcom/prineside/tdi2/Tower$AimStrategy;->values:[Lcom/prineside/tdi2/Tower$AimStrategy;

    array-length v6, v5

    sub-int/2addr v6, v3

    if-ge v4, v6, :cond_12

    iget-object v4, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    invoke-virtual {v4}, Lcom/prineside/tdi2/systems/TowerSystem;->getDefaultAimStrategy()Lcom/prineside/tdi2/Tower$AimStrategy;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    add-int/2addr v4, v3

    goto :goto_4

    :cond_12
    const/4 v4, 0x0

    :goto_4
    iget-object v6, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v6, v6, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    aget-object v7, v5, v4

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/systems/TowerSystem;->setDefaultAimStrategy(Lcom/prineside/tdi2/Tower$AimStrategy;)V

    iget-object v6, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v6, v6, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    iget-object v6, v6, Lcom/prineside/tdi2/systems/GraphicsSystem;->tooltip:Lcom/prineside/tdi2/ui/components/Tooltip;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->towerManager:Lcom/prineside/tdi2/managers/TowerManager;

    aget-object v4, v5, v4

    invoke-virtual {v7, v4}, Lcom/prineside/tdi2/managers/TowerManager;->getAimStrategyName(Lcom/prineside/tdi2/Tower$AimStrategy;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/prineside/tdi2/ui/components/Tooltip;->show(Ljava/lang/CharSequence;)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    sget-object v5, Lcom/prineside/tdi2/enums/StaticSoundType;->BUTTON:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/SoundManager;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    goto/16 :goto_c

    :pswitch_2
    iget-object v4, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v4}, Lcom/prineside/tdi2/systems/MapSystem;->getSelectedTile()Lcom/prineside/tdi2/Tile;

    move-result-object v4

    instance-of v5, v4, Lcom/prineside/tdi2/tiles/PlatformTile;

    if-eqz v5, :cond_14

    check-cast v4, Lcom/prineside/tdi2/tiles/PlatformTile;

    iget-object v4, v4, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-eqz v4, :cond_1a

    iget-object v5, v4, Lcom/prineside/tdi2/Building;->buildingType:Lcom/prineside/tdi2/enums/BuildingType;

    sget-object v6, Lcom/prineside/tdi2/enums/BuildingType;->TOWER:Lcom/prineside/tdi2/enums/BuildingType;

    if-ne v5, v6, :cond_13

    iget-object v5, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    check-cast v4, Lcom/prineside/tdi2/Tower;

    invoke-virtual {v5, v4}, Lcom/prineside/tdi2/systems/TowerSystem;->sellTowerAction(Lcom/prineside/tdi2/Tower;)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    sget-object v5, Lcom/prineside/tdi2/enums/StaticSoundType;->BUTTON:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/SoundManager;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    goto/16 :goto_c

    :cond_13
    sget-object v6, Lcom/prineside/tdi2/enums/BuildingType;->MODIFIER:Lcom/prineside/tdi2/enums/BuildingType;

    if-ne v5, v6, :cond_1a

    iget-object v5, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->modifier:Lcom/prineside/tdi2/systems/ModifierSystem;

    check-cast v4, Lcom/prineside/tdi2/Modifier;

    invoke-virtual {v5, v4}, Lcom/prineside/tdi2/systems/ModifierSystem;->sellModifierAction(Lcom/prineside/tdi2/Modifier;)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    sget-object v5, Lcom/prineside/tdi2/enums/StaticSoundType;->BUTTON:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/SoundManager;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    goto/16 :goto_c

    :cond_14
    instance-of v5, v4, Lcom/prineside/tdi2/tiles/SourceTile;

    if-eqz v5, :cond_1a

    check-cast v4, Lcom/prineside/tdi2/tiles/SourceTile;

    iget-object v4, v4, Lcom/prineside/tdi2/tiles/SourceTile;->miner:Lcom/prineside/tdi2/Miner;

    if-eqz v4, :cond_1a

    iget-object v5, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->miner:Lcom/prineside/tdi2/systems/MinerSystem;

    invoke-virtual {v5, v4}, Lcom/prineside/tdi2/systems/MinerSystem;->sellMinerAction(Lcom/prineside/tdi2/Miner;)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    sget-object v5, Lcom/prineside/tdi2/enums/StaticSoundType;->BUTTON:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/SoundManager;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    goto/16 :goto_c

    :pswitch_3
    iget-object v4, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v4}, Lcom/prineside/tdi2/systems/MapSystem;->getSelectedTile()Lcom/prineside/tdi2/Tile;

    move-result-object v4

    instance-of v5, v4, Lcom/prineside/tdi2/tiles/PlatformTile;

    if-eqz v5, :cond_15

    check-cast v4, Lcom/prineside/tdi2/tiles/PlatformTile;

    iget-object v4, v4, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-eqz v4, :cond_1a

    iget-object v5, v4, Lcom/prineside/tdi2/Building;->buildingType:Lcom/prineside/tdi2/enums/BuildingType;

    sget-object v6, Lcom/prineside/tdi2/enums/BuildingType;->TOWER:Lcom/prineside/tdi2/enums/BuildingType;

    if-ne v5, v6, :cond_1a

    iget-object v5, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    check-cast v4, Lcom/prineside/tdi2/Tower;

    iget-object v4, v4, Lcom/prineside/tdi2/Tower;->type:Lcom/prineside/tdi2/enums/TowerType;

    invoke-virtual {v5, v4}, Lcom/prineside/tdi2/systems/TowerSystem;->globalUpgradeTowerAction(Lcom/prineside/tdi2/enums/TowerType;)V

    goto/16 :goto_c

    :cond_15
    instance-of v5, v4, Lcom/prineside/tdi2/tiles/SourceTile;

    if-eqz v5, :cond_1a

    check-cast v4, Lcom/prineside/tdi2/tiles/SourceTile;

    iget-object v4, v4, Lcom/prineside/tdi2/tiles/SourceTile;->miner:Lcom/prineside/tdi2/Miner;

    if-eqz v4, :cond_1a

    iget-object v5, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->miner:Lcom/prineside/tdi2/systems/MinerSystem;

    iget-object v4, v4, Lcom/prineside/tdi2/Miner;->type:Lcom/prineside/tdi2/enums/MinerType;

    invoke-virtual {v5, v4}, Lcom/prineside/tdi2/systems/MinerSystem;->globalUpgradeMinerAction(Lcom/prineside/tdi2/enums/MinerType;)V

    goto/16 :goto_c

    :pswitch_4
    iget-object v4, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v4}, Lcom/prineside/tdi2/systems/MapSystem;->getSelectedTile()Lcom/prineside/tdi2/Tile;

    move-result-object v4

    instance-of v5, v4, Lcom/prineside/tdi2/tiles/PlatformTile;

    if-eqz v5, :cond_16

    check-cast v4, Lcom/prineside/tdi2/tiles/PlatformTile;

    iget-object v4, v4, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-eqz v4, :cond_1a

    iget-object v5, v4, Lcom/prineside/tdi2/Building;->buildingType:Lcom/prineside/tdi2/enums/BuildingType;

    sget-object v6, Lcom/prineside/tdi2/enums/BuildingType;->TOWER:Lcom/prineside/tdi2/enums/BuildingType;

    if-ne v5, v6, :cond_1a

    iget-object v5, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    check-cast v4, Lcom/prineside/tdi2/Tower;

    invoke-virtual {v5, v4}, Lcom/prineside/tdi2/systems/TowerSystem;->upgradeTowerAction(Lcom/prineside/tdi2/Tower;)V

    goto/16 :goto_c

    :cond_16
    instance-of v5, v4, Lcom/prineside/tdi2/tiles/SourceTile;

    if-eqz v5, :cond_1a

    check-cast v4, Lcom/prineside/tdi2/tiles/SourceTile;

    iget-object v4, v4, Lcom/prineside/tdi2/tiles/SourceTile;->miner:Lcom/prineside/tdi2/Miner;

    if-eqz v4, :cond_1a

    iget-object v5, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v5, Lcom/prineside/tdi2/GameSystemProvider;->miner:Lcom/prineside/tdi2/systems/MinerSystem;

    invoke-virtual {v5, v4}, Lcom/prineside/tdi2/systems/MinerSystem;->upgradeMinerAction(Lcom/prineside/tdi2/Miner;)V

    goto/16 :goto_c

    :pswitch_5
    invoke-static {}, Lcom/prineside/tdi2/Game;->exit()V

    goto/16 :goto_c

    :pswitch_6
    iget-object v4, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->_input:Lcom/prineside/tdi2/systems/InputSystem;

    iget-object v4, v4, Lcom/prineside/tdi2/systems/InputSystem;->cameraController:Lcom/prineside/tdi2/CameraController;

    const/high16 v5, 0x42700000    # 60.0f

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/CameraController;->fitMapToScreen(F)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    sget-object v5, Lcom/prineside/tdi2/enums/StaticSoundType;->BUTTON:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/SoundManager;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    goto/16 :goto_c

    :pswitch_7
    iget-object v4, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->_input:Lcom/prineside/tdi2/systems/InputSystem;

    iget-object v4, v4, Lcom/prineside/tdi2/systems/InputSystem;->cameraController:Lcom/prineside/tdi2/CameraController;

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v4, v5, v6}, Lcom/prineside/tdi2/CameraController;->setZoom(D)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    sget-object v5, Lcom/prineside/tdi2/enums/StaticSoundType;->BUTTON:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/SoundManager;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    goto/16 :goto_c

    :pswitch_8
    iget-object v4, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    iget-object v4, v4, Lcom/prineside/tdi2/systems/GraphicsSystem;->liveLeaderboard:Lcom/prineside/tdi2/ui/components/LiveLeaderboard;

    invoke-virtual {v4}, Lcom/prineside/tdi2/ui/components/LiveLeaderboard;->toggleVisible()V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    sget-object v5, Lcom/prineside/tdi2/enums/StaticSoundType;->BUTTON:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/SoundManager;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    goto/16 :goto_c

    :pswitch_9
    iget-object v4, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    iget-object v4, v4, Lcom/prineside/tdi2/systems/GraphicsSystem;->_statisticsChart:Lcom/prineside/tdi2/ui/components/StatisticsChart;

    if-eqz v4, :cond_1a

    invoke-virtual {v4}, Lcom/prineside/tdi2/ui/components/StatisticsChart;->isVisible()Z

    move-result v5

    xor-int/2addr v5, v3

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/ui/components/StatisticsChart;->setVisible(Z)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    sget-object v5, Lcom/prineside/tdi2/enums/StaticSoundType;->BUTTON:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/SoundManager;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    goto/16 :goto_c

    :pswitch_a
    iget-object v4, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    iget-object v4, v4, Lcom/prineside/tdi2/systems/GraphicsSystem;->questList:Lcom/prineside/tdi2/ui/components/QuestList;

    invoke-virtual {v4}, Lcom/prineside/tdi2/ui/components/QuestList;->isVisible()Z

    move-result v5

    xor-int/2addr v5, v3

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/ui/components/QuestList;->setVisible(Z)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    sget-object v5, Lcom/prineside/tdi2/enums/StaticSoundType;->BUTTON:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/SoundManager;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    goto/16 :goto_c

    :pswitch_b
    iget-object v4, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->_mapRendering:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-virtual {v4}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->switchMapDrawMode()V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    sget-object v5, Lcom/prineside/tdi2/enums/StaticSoundType;->BUTTON:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/SoundManager;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    goto/16 :goto_c

    :pswitch_c
    iget-object v4, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v4}, Lcom/prineside/tdi2/systems/GameStateSystem;->lowerGameSpeed()V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    sget-object v5, Lcom/prineside/tdi2/enums/StaticSoundType;->BUTTON:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/SoundManager;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    goto/16 :goto_c

    :pswitch_d
    iget-object v4, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v4}, Lcom/prineside/tdi2/systems/GameStateSystem;->higherGameSpeed()V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    sget-object v5, Lcom/prineside/tdi2/enums/StaticSoundType;->BUTTON:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/SoundManager;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    goto/16 :goto_c

    :pswitch_e
    iget-object v4, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v4}, Lcom/prineside/tdi2/systems/GameStateSystem;->getGameSpeed()F

    move-result v4

    const v5, 0x3d889a02    # 0.0667f

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_17

    iget-object v4, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v4, v12}, Lcom/prineside/tdi2/systems/GameStateSystem;->setGameSpeed(F)V

    goto/16 :goto_c

    :cond_17
    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->settingsManager:Lcom/prineside/tdi2/managers/SettingsManager;

    sget-object v6, Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;->SLOW_MOTION_PAUSE:Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;

    invoke-virtual {v4, v6}, Lcom/prineside/tdi2/managers/SettingsManager;->getCustomValue(Lcom/prineside/tdi2/managers/SettingsManager$CustomValueType;)D

    move-result-wide v6

    cmpl-double v4, v6, v8

    if-nez v4, :cond_18

    const/4 v5, 0x0

    :cond_18
    iget-object v4, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/systems/GameStateSystem;->setGameSpeed(F)V

    goto/16 :goto_c

    :pswitch_f
    iget-object v4, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    iget-boolean v5, v4, Lcom/prineside/tdi2/systems/WaveSystem;->autoForceWaveEnabled:Z

    xor-int/2addr v5, v3

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/systems/WaveSystem;->setAutoForceWaveEnabled(Z)V

    iget-object v4, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v5, v4, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    iget-boolean v5, v5, Lcom/prineside/tdi2/systems/WaveSystem;->autoForceWaveEnabled:Z

    if-eqz v5, :cond_1a

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->_sound:Lcom/prineside/tdi2/systems/SoundSystem;

    sget-object v5, Lcom/prineside/tdi2/enums/StaticSoundType;->AUTO_FORCE_WAVE:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/systems/SoundSystem;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    goto/16 :goto_c

    :pswitch_10
    iget-object v4, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    iget-object v4, v4, Lcom/prineside/tdi2/systems/GraphicsSystem;->sideMenu:Lcom/prineside/tdi2/ui/actors/SideMenu;

    invoke-virtual {v4}, Lcom/prineside/tdi2/ui/actors/SideMenu;->isOffscreen()Z

    move-result v5

    xor-int/2addr v5, v3

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/ui/actors/SideMenu;->setOffscreen(Z)V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    sget-object v5, Lcom/prineside/tdi2/enums/StaticSoundType;->BUTTON:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/SoundManager;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    goto/16 :goto_c

    :pswitch_11
    iget-object v4, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    iget-object v4, v4, Lcom/prineside/tdi2/systems/GraphicsSystem;->mainUi:Lcom/prineside/tdi2/ui/components/MainUi;

    invoke-virtual {v4}, Lcom/prineside/tdi2/ui/components/MainUi;->nextWaveButtonVisible()Z

    move-result v4

    if-eqz v4, :cond_1a

    iget-object v4, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->wave:Lcom/prineside/tdi2/systems/WaveSystem;

    invoke-virtual {v4}, Lcom/prineside/tdi2/systems/WaveSystem;->forceNextWaveAction()V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    sget-object v5, Lcom/prineside/tdi2/enums/StaticSoundType;->BUTTON:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/SoundManager;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    goto/16 :goto_c

    :pswitch_12
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    const-string v7, "InputSystem"

    invoke-static {v7, v6}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v6, v6, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v6}, Lcom/prineside/tdi2/systems/MapSystem;->getSelectedTile()Lcom/prineside/tdi2/Tile;

    move-result-object v6

    instance-of v7, v6, Lcom/prineside/tdi2/tiles/PlatformTile;

    if-eqz v7, :cond_1a

    check-cast v6, Lcom/prineside/tdi2/tiles/PlatformTile;

    iget-object v6, v6, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-eqz v6, :cond_1a

    iget-object v7, v6, Lcom/prineside/tdi2/Building;->buildingType:Lcom/prineside/tdi2/enums/BuildingType;

    sget-object v3, Lcom/prineside/tdi2/enums/BuildingType;->TOWER:Lcom/prineside/tdi2/enums/BuildingType;

    if-ne v7, v3, :cond_1a

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v5, v3

    packed-switch v3, :pswitch_data_1

    :pswitch_13
    const/4 v13, 0x0

    goto :goto_5

    :pswitch_14
    const/4 v13, 0x4

    goto :goto_5

    :pswitch_15
    const/4 v13, 0x3

    goto :goto_5

    :pswitch_16
    const/4 v13, 0x2

    goto :goto_5

    :pswitch_17
    const/4 v13, 0x1

    :goto_5
    :pswitch_18
    iget-object v3, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    check-cast v6, Lcom/prineside/tdi2/Tower;

    invoke-virtual {v3, v6, v13}, Lcom/prineside/tdi2/systems/TowerSystem;->selectGlobalTowerAbilityAction(Lcom/prineside/tdi2/Tower;I)V

    goto/16 :goto_c

    :pswitch_19
    iget-object v3, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v3}, Lcom/prineside/tdi2/systems/MapSystem;->getSelectedTile()Lcom/prineside/tdi2/Tile;

    move-result-object v3

    instance-of v6, v3, Lcom/prineside/tdi2/tiles/PlatformTile;

    if-eqz v6, :cond_1a

    check-cast v3, Lcom/prineside/tdi2/tiles/PlatformTile;

    iget-object v3, v3, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-eqz v3, :cond_1a

    iget-object v6, v3, Lcom/prineside/tdi2/Building;->buildingType:Lcom/prineside/tdi2/enums/BuildingType;

    sget-object v7, Lcom/prineside/tdi2/enums/BuildingType;->TOWER:Lcom/prineside/tdi2/enums/BuildingType;

    if-ne v6, v7, :cond_1a

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_2

    :pswitch_1a
    const/4 v13, 0x0

    goto :goto_6

    :pswitch_1b
    const/4 v13, 0x4

    goto :goto_6

    :pswitch_1c
    const/4 v13, 0x3

    goto :goto_6

    :pswitch_1d
    const/4 v13, 0x2

    goto :goto_6

    :pswitch_1e
    const/4 v13, 0x1

    :goto_6
    :pswitch_1f
    iget-object v4, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v4, v4, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    check-cast v3, Lcom/prineside/tdi2/Tower;

    invoke-virtual {v4, v3, v13}, Lcom/prineside/tdi2/systems/TowerSystem;->selectTowerAbilityAction(Lcom/prineside/tdi2/Tower;I)V

    goto/16 :goto_c

    :pswitch_20
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v5, v3

    packed-switch v3, :pswitch_data_3

    :pswitch_21
    const/4 v13, 0x0

    goto :goto_7

    :pswitch_22
    const/4 v13, 0x4

    goto :goto_7

    :pswitch_23
    const/4 v13, 0x3

    goto :goto_7

    :pswitch_24
    const/4 v13, 0x2

    goto :goto_7

    :pswitch_25
    const/4 v13, 0x1

    :goto_7
    :pswitch_26
    iget-object v3, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->ability:Lcom/prineside/tdi2/systems/AbilitySystem;

    iget-object v4, v3, Lcom/prineside/tdi2/systems/AbilitySystem;->abilitiesConfiguration:Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;

    iget-object v4, v4, Lcom/prineside/tdi2/ui/shared/AbilitySelectionOverlay$SelectedAbilitiesConfiguration;->slots:[Lcom/prineside/tdi2/enums/AbilityType;

    aget-object v4, v4, v13

    if-eqz v4, :cond_1a

    invoke-virtual {v3}, Lcom/prineside/tdi2/systems/AbilitySystem;->getUiCurrentlyUsingAbility()Lcom/prineside/tdi2/enums/AbilityType;

    move-result-object v3

    if-ne v3, v4, :cond_19

    iget-object v3, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->ability:Lcom/prineside/tdi2/systems/AbilitySystem;

    invoke-virtual {v3}, Lcom/prineside/tdi2/systems/AbilitySystem;->cancelUsingAbility()V

    goto :goto_8

    :cond_19
    iget-object v3, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->ability:Lcom/prineside/tdi2/systems/AbilitySystem;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/systems/AbilitySystem;->startUsingAbility(Lcom/prineside/tdi2/enums/AbilityType;)V

    :goto_8
    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    sget-object v4, Lcom/prineside/tdi2/enums/StaticSoundType;->BUTTON:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v3, v4}, Lcom/prineside/tdi2/managers/SoundManager;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    goto/16 :goto_c

    :pswitch_27
    iget-object v3, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v3}, Lcom/prineside/tdi2/systems/MapSystem;->getSelectedTile()Lcom/prineside/tdi2/Tile;

    move-result-object v3

    instance-of v6, v3, Lcom/prineside/tdi2/tiles/SourceTile;

    if-eqz v6, :cond_1a

    check-cast v3, Lcom/prineside/tdi2/tiles/SourceTile;

    iget-object v3, v3, Lcom/prineside/tdi2/tiles/SourceTile;->miner:Lcom/prineside/tdi2/Miner;

    if-nez v3, :cond_1a

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v5, v3

    packed-switch v3, :pswitch_data_4

    goto :goto_9

    :pswitch_28
    sget-object v7, Lcom/prineside/tdi2/enums/MinerType;->INFIAR:Lcom/prineside/tdi2/enums/MinerType;

    goto :goto_9

    :pswitch_29
    sget-object v7, Lcom/prineside/tdi2/enums/MinerType;->TENSOR:Lcom/prineside/tdi2/enums/MinerType;

    goto :goto_9

    :pswitch_2a
    sget-object v7, Lcom/prineside/tdi2/enums/MinerType;->MATRIX:Lcom/prineside/tdi2/enums/MinerType;

    goto :goto_9

    :pswitch_2b
    sget-object v7, Lcom/prineside/tdi2/enums/MinerType;->VECTOR:Lcom/prineside/tdi2/enums/MinerType;

    goto :goto_9

    :pswitch_2c
    sget-object v7, Lcom/prineside/tdi2/enums/MinerType;->SCALAR:Lcom/prineside/tdi2/enums/MinerType;

    :goto_9
    iget-object v3, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->miner:Lcom/prineside/tdi2/systems/MinerSystem;

    invoke-virtual {v3, v7}, Lcom/prineside/tdi2/systems/MinerSystem;->buildMinerAction(Lcom/prineside/tdi2/enums/MinerType;)V

    goto/16 :goto_c

    :pswitch_2d
    iget-object v3, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v3}, Lcom/prineside/tdi2/systems/MapSystem;->getSelectedTile()Lcom/prineside/tdi2/Tile;

    move-result-object v3

    instance-of v6, v3, Lcom/prineside/tdi2/tiles/PlatformTile;

    if-eqz v6, :cond_1a

    check-cast v3, Lcom/prineside/tdi2/tiles/PlatformTile;

    iget-object v3, v3, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-nez v3, :cond_1a

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v5, v3

    packed-switch v3, :pswitch_data_5

    goto :goto_a

    :pswitch_2e
    sget-object v7, Lcom/prineside/tdi2/enums/ModifierType;->EXPERIENCE:Lcom/prineside/tdi2/enums/ModifierType;

    goto :goto_a

    :pswitch_2f
    sget-object v7, Lcom/prineside/tdi2/enums/ModifierType;->BOUNTY:Lcom/prineside/tdi2/enums/ModifierType;

    goto :goto_a

    :pswitch_30
    sget-object v7, Lcom/prineside/tdi2/enums/ModifierType;->MINING_SPEED:Lcom/prineside/tdi2/enums/ModifierType;

    goto :goto_a

    :pswitch_31
    sget-object v7, Lcom/prineside/tdi2/enums/ModifierType;->ATTACK_SPEED:Lcom/prineside/tdi2/enums/ModifierType;

    goto :goto_a

    :pswitch_32
    sget-object v7, Lcom/prineside/tdi2/enums/ModifierType;->DAMAGE:Lcom/prineside/tdi2/enums/ModifierType;

    goto :goto_a

    :pswitch_33
    sget-object v7, Lcom/prineside/tdi2/enums/ModifierType;->POWER:Lcom/prineside/tdi2/enums/ModifierType;

    goto :goto_a

    :pswitch_34
    sget-object v7, Lcom/prineside/tdi2/enums/ModifierType;->SEARCH:Lcom/prineside/tdi2/enums/ModifierType;

    goto :goto_a

    :pswitch_35
    sget-object v7, Lcom/prineside/tdi2/enums/ModifierType;->BALANCE:Lcom/prineside/tdi2/enums/ModifierType;

    :goto_a
    iget-object v3, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->modifier:Lcom/prineside/tdi2/systems/ModifierSystem;

    invoke-virtual {v3, v7}, Lcom/prineside/tdi2/systems/ModifierSystem;->buildModifierAction(Lcom/prineside/tdi2/enums/ModifierType;)V

    goto :goto_c

    :pswitch_36
    iget-object v3, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v3}, Lcom/prineside/tdi2/systems/MapSystem;->getSelectedTile()Lcom/prineside/tdi2/Tile;

    move-result-object v3

    instance-of v6, v3, Lcom/prineside/tdi2/tiles/PlatformTile;

    if-eqz v6, :cond_1a

    check-cast v3, Lcom/prineside/tdi2/tiles/PlatformTile;

    iget-object v3, v3, Lcom/prineside/tdi2/tiles/PlatformTile;->building:Lcom/prineside/tdi2/Building;

    if-nez v3, :cond_1a

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v5, v3

    packed-switch v3, :pswitch_data_6

    goto :goto_b

    :pswitch_37
    sget-object v7, Lcom/prineside/tdi2/enums/TowerType;->CRUSHER:Lcom/prineside/tdi2/enums/TowerType;

    goto :goto_b

    :pswitch_38
    sget-object v7, Lcom/prineside/tdi2/enums/TowerType;->GAUSS:Lcom/prineside/tdi2/enums/TowerType;

    goto :goto_b

    :pswitch_39
    sget-object v7, Lcom/prineside/tdi2/enums/TowerType;->LASER:Lcom/prineside/tdi2/enums/TowerType;

    goto :goto_b

    :pswitch_3a
    sget-object v7, Lcom/prineside/tdi2/enums/TowerType;->FLAMETHROWER:Lcom/prineside/tdi2/enums/TowerType;

    goto :goto_b

    :pswitch_3b
    sget-object v7, Lcom/prineside/tdi2/enums/TowerType;->MISSILE:Lcom/prineside/tdi2/enums/TowerType;

    goto :goto_b

    :pswitch_3c
    sget-object v7, Lcom/prineside/tdi2/enums/TowerType;->TESLA:Lcom/prineside/tdi2/enums/TowerType;

    goto :goto_b

    :pswitch_3d
    sget-object v7, Lcom/prineside/tdi2/enums/TowerType;->VENOM:Lcom/prineside/tdi2/enums/TowerType;

    goto :goto_b

    :pswitch_3e
    sget-object v7, Lcom/prineside/tdi2/enums/TowerType;->MINIGUN:Lcom/prineside/tdi2/enums/TowerType;

    goto :goto_b

    :pswitch_3f
    sget-object v7, Lcom/prineside/tdi2/enums/TowerType;->MULTISHOT:Lcom/prineside/tdi2/enums/TowerType;

    goto :goto_b

    :pswitch_40
    sget-object v7, Lcom/prineside/tdi2/enums/TowerType;->BLAST:Lcom/prineside/tdi2/enums/TowerType;

    goto :goto_b

    :pswitch_41
    sget-object v7, Lcom/prineside/tdi2/enums/TowerType;->SPLASH:Lcom/prineside/tdi2/enums/TowerType;

    goto :goto_b

    :pswitch_42
    sget-object v7, Lcom/prineside/tdi2/enums/TowerType;->AIR:Lcom/prineside/tdi2/enums/TowerType;

    goto :goto_b

    :pswitch_43
    sget-object v7, Lcom/prineside/tdi2/enums/TowerType;->FREEZING:Lcom/prineside/tdi2/enums/TowerType;

    goto :goto_b

    :pswitch_44
    sget-object v7, Lcom/prineside/tdi2/enums/TowerType;->CANNON:Lcom/prineside/tdi2/enums/TowerType;

    goto :goto_b

    :pswitch_45
    sget-object v7, Lcom/prineside/tdi2/enums/TowerType;->SNIPER:Lcom/prineside/tdi2/enums/TowerType;

    goto :goto_b

    :pswitch_46
    sget-object v7, Lcom/prineside/tdi2/enums/TowerType;->BASIC:Lcom/prineside/tdi2/enums/TowerType;

    :goto_b
    if-eqz v7, :cond_1a

    iget-object v3, v0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->tower:Lcom/prineside/tdi2/systems/TowerSystem;

    invoke-virtual {v3, v7}, Lcom/prineside/tdi2/systems/TowerSystem;->buildTowerAction(Lcom/prineside/tdi2/enums/TowerType;)V

    :cond_1a
    :goto_c
    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    goto/16 :goto_2

    :cond_1b
    :goto_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_2d
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
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
    .packed-switch 0x2a
        :pswitch_13
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_18
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x24
        :pswitch_1a
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1f
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1e
        :pswitch_21
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_26
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x19
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x11
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
    .end packed-switch
.end method

.method public enableAllInput()V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/InputSystem;->a:Lcom/badlogic/gdx/InputMultiplexer;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->setInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    return-void
.end method

.method public enableOnlyStage()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager;->setAsInputHandler()V

    return-void
.end method

.method public getCameraController()Lcom/prineside/tdi2/CameraController;
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/InputSystem;->cameraController:Lcom/prineside/tdi2/CameraController;

    return-object v0
.end method

.method public getInputProcessor()Lcom/badlogic/gdx/InputProcessor;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v0}, Lcom/badlogic/gdx/Input;->getInputProcessor()Lcom/badlogic/gdx/InputProcessor;

    move-result-object v0

    return-object v0
.end method

.method public getSystemName()Ljava/lang/String;
    .locals 1

    const-string v0, "Input"

    return-object v0
.end method

.method public postSetup()V
    .locals 2

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/InputSystem;->enableAllInput()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/InputSystem;->cameraController:Lcom/prineside/tdi2/CameraController;

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/CameraController;->setMap(Lcom/prineside/tdi2/Map;)V

    return-void
.end method

.method public profileUpdate()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setCustomMapInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/InputSystem;->b:Lcom/badlogic/gdx/InputMultiplexer;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/InputMultiplexer;->addProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/InputSystem;->b:Lcom/badlogic/gdx/InputMultiplexer;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/InputSystem;->cameraController:Lcom/prineside/tdi2/CameraController;

    invoke-virtual {v1}, Lcom/prineside/tdi2/CameraController;->getInputProcessor()Lcom/badlogic/gdx/InputProcessor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/InputMultiplexer;->addProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/InputSystem;->b:Lcom/badlogic/gdx/InputMultiplexer;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/InputMultiplexer;->addProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    sget-object p1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    iget-object v0, p0, Lcom/prineside/tdi2/systems/InputSystem;->b:Lcom/badlogic/gdx/InputMultiplexer;

    invoke-interface {p1, v0}, Lcom/badlogic/gdx/Input;->setInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    return-void
.end method

.method public setHotKeysEnabled(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/prineside/tdi2/systems/InputSystem;->q:Z

    return-void
.end method

.method public setup()V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->gameState:Lcom/prineside/tdi2/systems/GameStateSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/GameStateSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/InputSystem;->t:Lcom/prineside/tdi2/systems/InputSystem$_Game_StateSystemListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    iget-object v0, v0, Lcom/prineside/tdi2/systems/MapSystem;->listeners:Lcom/prineside/tdi2/ListenerGroup;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/InputSystem;->v:Lcom/prineside/tdi2/systems/InputSystem$_MapSystemListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ListenerGroup;->add(Lcom/prineside/tdi2/GameListener;)Z

    new-instance v0, Lcom/prineside/tdi2/CameraController;

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v1, Lcom/prineside/tdi2/GameSystemProvider;->_graphics:Lcom/prineside/tdi2/systems/GraphicsSystem;

    iget-object v2, v2, Lcom/prineside/tdi2/systems/GraphicsSystem;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v1

    iget v1, v1, Lcom/prineside/tdi2/Map;->widthPixels:I

    iget-object v3, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v3, v3, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v3}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v3

    iget v3, v3, Lcom/prineside/tdi2/Map;->heightPixels:I

    invoke-direct {v0, v2, v1, v3}, Lcom/prineside/tdi2/CameraController;-><init>(Lcom/badlogic/gdx/graphics/OrthographicCamera;II)V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/InputSystem;->cameraController:Lcom/prineside/tdi2/CameraController;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/CameraController;->setScreenSize(II)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/InputSystem;->cameraController:Lcom/prineside/tdi2/CameraController;

    iget-object v1, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v1, v1, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v1}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v1

    iget v1, v1, Lcom/prineside/tdi2/Map;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v2, v2, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v2}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v2

    iget v2, v2, Lcom/prineside/tdi2/Map;->heightPixels:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/CameraController;->lookAt(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/InputSystem;->cameraController:Lcom/prineside/tdi2/CameraController;

    const/high16 v1, 0x42700000    # 60.0f

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/CameraController;->fitMapToScreen(F)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/Input;->setCatchKey(IZ)V

    new-instance v0, Lcom/badlogic/gdx/InputMultiplexer;

    invoke-direct {v0}, Lcom/badlogic/gdx/InputMultiplexer;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/InputSystem;->a:Lcom/badlogic/gdx/InputMultiplexer;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    iget-object v1, v1, Lcom/prineside/tdi2/managers/UiManager;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/InputMultiplexer;->addProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/InputSystem;->a:Lcom/badlogic/gdx/InputMultiplexer;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/InputSystem;->cameraController:Lcom/prineside/tdi2/CameraController;

    invoke-virtual {v1}, Lcom/prineside/tdi2/CameraController;->getInputProcessor()Lcom/badlogic/gdx/InputProcessor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/InputMultiplexer;->addProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/InputSystem;->a:Lcom/badlogic/gdx/InputMultiplexer;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/InputSystem;->z:Lcom/prineside/tdi2/systems/InputSystem$_InputProcessor;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/InputMultiplexer;->addProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    new-instance v0, Lcom/badlogic/gdx/InputMultiplexer;

    invoke-direct {v0}, Lcom/badlogic/gdx/InputMultiplexer;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/InputSystem;->b:Lcom/badlogic/gdx/InputMultiplexer;

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/InputSystem;->disableInput()V

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    iget v0, v0, Lcom/prineside/tdi2/Map;->widthTiles:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/prineside/tdi2/systems/InputSystem;->x:I

    iget-object v0, p0, Lcom/prineside/tdi2/Registrable;->S:Lcom/prineside/tdi2/GameSystemProvider;

    iget-object v0, v0, Lcom/prineside/tdi2/GameSystemProvider;->map:Lcom/prineside/tdi2/systems/MapSystem;

    invoke-virtual {v0}, Lcom/prineside/tdi2/systems/MapSystem;->getMap()Lcom/prineside/tdi2/Map;

    move-result-object v0

    iget v0, v0, Lcom/prineside/tdi2/Map;->heightTiles:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/prineside/tdi2/systems/InputSystem;->y:I

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/InputSystem;->u:Lcom/prineside/tdi2/systems/InputSystem$_ScreenResizeListener;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/Game;->addScreenResizeListener(Lcom/prineside/tdi2/Game$ScreenResizeListener;)V

    return-void
.end method
