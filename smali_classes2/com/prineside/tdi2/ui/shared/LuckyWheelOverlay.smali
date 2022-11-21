.class public Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;,
        Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;
    }
.end annotation


# static fields
.field public static final G:Lcom/badlogic/gdx/math/Interpolation;

.field public static H:[Lcom/badlogic/gdx/graphics/Color;

.field public static I:Lcom/badlogic/gdx/graphics/Color;

.field public static J:[Lcom/badlogic/gdx/graphics/Color;

.field public static K:Lcom/badlogic/gdx/graphics/Color;

.field public static L:[Lcom/badlogic/gdx/graphics/Color;

.field public static M:Lcom/badlogic/gdx/graphics/Color;

.field public static N:[Lcom/badlogic/gdx/graphics/Color;

.field public static O:Lcom/badlogic/gdx/graphics/Color;

.field public static final P:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field public A:[Lcom/prineside/tdi2/ui/actors/TrailMultilineActor;

.field public B:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public C:F

.field public D:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

.field public E:F

.field public F:Z

.field public final a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public final b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

.field public c:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public d:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public e:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

.field public f:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public g:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public h:Lcom/prineside/tdi2/ui/actors/PieChartActor;

.field public i:Lcom/prineside/tdi2/ui/actors/PieChartActor;

.field public j:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field public k:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

.field public l:I

.field public m:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;",
            ">;"
        }
    .end annotation
.end field

.field public n:F

.field public o:Z

.field public p:F

.field public q:F

.field public r:F

.field public s:F

.field public t:F

.field public u:F

.field public v:Z

.field public w:Z

.field public x:F

.field public y:F

.field public z:Lcom/badlogic/gdx/scenes/scene2d/Group;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    sget-object v0, Lcom/badlogic/gdx/math/Interpolation;->sine:Lcom/badlogic/gdx/math/Interpolation;

    sput-object v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->G:Lcom/badlogic/gdx/math/Interpolation;

    sget-object v0, Lcom/prineside/tdi2/managers/ProgressManager;->RARITY_COLORS:[Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->H:[Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lcom/prineside/tdi2/utils/MaterialColor$YELLOW;->P600:Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->I:Lcom/badlogic/gdx/graphics/Color;

    sget-object v0, Lcom/prineside/tdi2/enums/RarityType;->values:[Lcom/prineside/tdi2/enums/RarityType;

    array-length v1, v0

    new-array v1, v1, [Lcom/badlogic/gdx/graphics/Color;

    sput-object v1, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->J:[Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->I:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e8f5c29    # 0.28f

    invoke-virtual {v1, v2, v2, v2, v3}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    sput-object v1, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->K:Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/prineside/tdi2/managers/ProgressManager;->RARITY_BRIGHT_COLORS:[Lcom/badlogic/gdx/graphics/Color;

    sput-object v1, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->L:[Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$YELLOW;->P300:Lcom/badlogic/gdx/graphics/Color;

    sput-object v1, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->M:Lcom/badlogic/gdx/graphics/Color;

    array-length v0, v0

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/Color;

    sput-object v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->N:[Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    const v1, 0x3f0f5c29    # 0.56f

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    sput-object v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->O:Lcom/badlogic/gdx/graphics/Color;

    const/4 v0, 0x0

    :goto_0
    sget-object v4, Lcom/prineside/tdi2/enums/RarityType;->values:[Lcom/prineside/tdi2/enums/RarityType;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    sget-object v4, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->J:[Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->H:[Lcom/badlogic/gdx/graphics/Color;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    invoke-virtual {v5, v2, v2, v2, v3}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    aput-object v5, v4, v0

    sget-object v4, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->N:[Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->L:[Lcom/badlogic/gdx/graphics/Color;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    invoke-virtual {v5, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->P:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .locals 21

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    sget-object v2, Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;->SHARED_COMPONENTS:Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;

    const/16 v3, 0x5a

    const-string v4, "LuckyWheelOverlay tint"

    invoke-virtual {v1, v2, v3, v4}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v1

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->uiManager:Lcom/prineside/tdi2/managers/UiManager;

    const/16 v4, 0x5b

    const-string v5, "LuckyWheelOverlay main"

    invoke-virtual {v3, v2, v4, v5}, Lcom/prineside/tdi2/managers/UiManager;->addLayer(Lcom/prineside/tdi2/managers/UiManager$MainUiLayer;ILjava/lang/String;)Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    move-result-object v2

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    const/4 v3, -0x1

    iput v3, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->l:I

    new-instance v4, Lcom/badlogic/gdx/utils/Array;

    const-class v5, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    iput-object v4, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->m:Lcom/badlogic/gdx/utils/Array;

    const/4 v4, 0x0

    iput v4, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->y:F

    const/4 v5, 0x5

    new-array v6, v5, [Lcom/prineside/tdi2/ui/actors/TrailMultilineActor;

    iput-object v6, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->A:[Lcom/prineside/tdi2/ui/actors/TrailMultilineActor;

    new-array v5, v5, [Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iput-object v5, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->B:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    iput v4, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->C:F

    new-instance v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v7, "blank"

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    sget-object v6, Lcom/prineside/tdi2/Config;->BACKGROUND_COLOR:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    const v8, 0x3f47ae14    # 0.78f

    iput v8, v7, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->expand()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->fill()Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v5

    sget-object v7, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    new-instance v5, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$1;

    invoke-direct {v5, v0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$1;-><init>(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;)V

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const/high16 v7, 0x43700000    # 240.0f

    invoke-virtual {v1, v7, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOrigin(FF)V

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v8, 0x43f00000    # 480.0f

    invoke-virtual {v2, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(FF)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v7, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOrigin(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v7, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOrigin(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;-><init>()V

    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v10, "particles/lucky-wheel-hit.prt"

    invoke-interface {v2, v10}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v11, "particle-triangle"

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v10

    invoke-virtual {v10}, Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;->getAtlas()Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    move-result-object v10

    invoke-virtual {v1, v2, v10}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->load(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->setEmittersCleanUpBlendFunction(Z)V

    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    const/16 v10, 0x8

    invoke-direct {v2, v1, v9, v10}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;-><init>(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;II)V

    iput-object v2, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->D:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    new-instance v1, Lcom/prineside/tdi2/ui/actors/PieChartActor;

    invoke-direct {v1}, Lcom/prineside/tdi2/ui/actors/PieChartActor;-><init>()V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->h:Lcom/prineside/tdi2/ui/actors/PieChartActor;

    const/16 v2, 0x168

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ui/actors/PieChartActor;->setSegmentCount(I)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->h:Lcom/prineside/tdi2/ui/actors/PieChartActor;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/actors/PieChartActor;->chart:Lcom/prineside/tdi2/shapes/PieChart;

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/shapes/PieChart;->setShadowSegments(I)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->h:Lcom/prineside/tdi2/ui/actors/PieChartActor;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/actors/PieChartActor;->chart:Lcom/prineside/tdi2/shapes/PieChart;

    invoke-virtual {v1, v9}, Lcom/prineside/tdi2/shapes/PieChart;->setFadeToOut(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->h:Lcom/prineside/tdi2/ui/actors/PieChartActor;

    const/high16 v11, 0x44200000    # 640.0f

    invoke-virtual {v1, v11, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->h:Lcom/prineside/tdi2/ui/actors/PieChartActor;

    const/high16 v12, -0x3d600000    # -80.0f

    invoke-virtual {v1, v12, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v13, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->h:Lcom/prineside/tdi2/ui/actors/PieChartActor;

    invoke-virtual {v1, v13}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    invoke-direct {v1}, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;-><init>()V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->e:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    invoke-virtual {v1, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v13, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->e:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    invoke-virtual {v1, v13}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v13, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v13, v13, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v14, "circle"

    invoke-virtual {v13, v14}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v13

    invoke-direct {v1, v13}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v13, 0x43920000    # 292.0f

    invoke-virtual {v1, v13, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v13, 0x42bc0000    # 94.0f

    invoke-virtual {v1, v13, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v13, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v13, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/prineside/tdi2/ui/actors/PieChartActor;

    invoke-direct {v1}, Lcom/prineside/tdi2/ui/actors/PieChartActor;-><init>()V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->i:Lcom/prineside/tdi2/ui/actors/PieChartActor;

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/ui/actors/PieChartActor;->setSegmentCount(I)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->i:Lcom/prineside/tdi2/ui/actors/PieChartActor;

    const/high16 v2, 0x438c0000    # 280.0f

    invoke-virtual {v1, v2, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->i:Lcom/prineside/tdi2/ui/actors/PieChartActor;

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-virtual {v1, v2, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->i:Lcom/prineside/tdi2/ui/actors/PieChartActor;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/actors/PieChartActor;->chart:Lcom/prineside/tdi2/shapes/PieChart;

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/shapes/PieChart;->setShadowSegments(I)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v3, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->i:Lcom/prineside/tdi2/ui/actors/PieChartActor;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->shapeManager:Lcom/prineside/tdi2/managers/ShapeManager;

    sget-object v3, Lcom/prineside/tdi2/enums/ShapeType;->CIRCLE:Lcom/prineside/tdi2/enums/ShapeType;

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/managers/ShapeManager;->getFactory(Lcom/prineside/tdi2/enums/ShapeType;)Lcom/prineside/tdi2/Shape$Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/prineside/tdi2/Shape$Factory;->obtain()Lcom/prineside/tdi2/Shape;

    move-result-object v1

    check-cast v1, Lcom/prineside/tdi2/shapes/Circle;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v19

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v20

    const/high16 v14, 0x43700000    # 240.0f

    const/high16 v15, 0x43700000    # 240.0f

    const/16 v16, 0x0

    const/high16 v17, 0x43000000    # 128.0f

    const/16 v18, 0x168

    move-object v13, v1

    invoke-virtual/range {v13 .. v20}, Lcom/prineside/tdi2/shapes/Circle;->setup(FFFFIFF)V

    new-instance v3, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$2;

    invoke-direct {v3, v0, v1}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$2;-><init>(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;Lcom/prineside/tdi2/shapes/Circle;)V

    const/high16 v1, 0x43800000    # 256.0f

    invoke-virtual {v3, v1, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->f:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->f:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v3, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->f:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "tower-gauss-base"

    invoke-virtual {v3, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    const/high16 v3, 0x43000000    # 128.0f

    invoke-virtual {v1, v3, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v6, 0x43300000    # 176.0f

    invoke-virtual {v1, v6, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->A:[Lcom/prineside/tdi2/ui/actors/TrailMultilineActor;

    array-length v13, v6

    const/high16 v14, 0x41800000    # 16.0f

    if-ge v1, v13, :cond_0

    new-instance v13, Lcom/prineside/tdi2/ui/actors/TrailMultilineActor;

    invoke-direct {v13}, Lcom/prineside/tdi2/ui/actors/TrailMultilineActor;-><init>()V

    aput-object v13, v6, v1

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->A:[Lcom/prineside/tdi2/ui/actors/TrailMultilineActor;

    aget-object v6, v6, v1

    iget-object v6, v6, Lcom/prineside/tdi2/ui/actors/TrailMultilineActor;->trail:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    invoke-virtual {v6, v4}, Lcom/prineside/tdi2/shapes/TrailMultiLine;->setAlpha(F)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->A:[Lcom/prineside/tdi2/ui/actors/TrailMultilineActor;

    aget-object v6, v6, v1

    sget-object v13, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/16 v15, 0x18

    const v12, 0x3c83126f    # 0.016f

    invoke-virtual {v6, v13, v15, v12, v14}, Lcom/prineside/tdi2/ui/actors/TrailMultilineActor;->setup(Lcom/badlogic/gdx/graphics/Color;IFF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->A:[Lcom/prineside/tdi2/ui/actors/TrailMultilineActor;

    aget-object v6, v6, v1

    const v12, 0x43858000    # 267.0f

    int-to-float v13, v1

    const/high16 v14, 0x41400000    # 12.0f

    mul-float v13, v13, v14

    add-float/2addr v13, v12

    invoke-virtual {v6, v7, v13}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v12, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->A:[Lcom/prineside/tdi2/ui/actors/TrailMultilineActor;

    aget-object v12, v12, v1

    invoke-virtual {v6, v12}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v1, v1, 0x1

    const/high16 v12, -0x3d600000    # -80.0f

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->z:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->z:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v6, 0x41e00000    # 28.0f

    const/high16 v7, 0x42d20000    # 105.0f

    invoke-virtual {v1, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->z:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v9, 0x41600000    # 14.0f

    const/high16 v12, 0x41a80000    # 21.0f

    invoke-virtual {v1, v9, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOrigin(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->z:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v9, 0x43620000    # 226.0f

    const/high16 v12, 0x435b0000    # 219.0f

    invoke-virtual {v1, v9, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v9, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->z:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v12, "tower-gauss-weapon"

    invoke-virtual {v9, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v1, v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->z:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v6, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    const/4 v1, 0x0

    :goto_1
    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->B:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    array-length v7, v6

    if-ge v1, v7, :cond_1

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v12, "tower-gauss-weapon-glow"

    invoke-virtual {v9, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v9

    invoke-direct {v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    aput-object v7, v6, v1

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->B:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aget-object v6, v6, v1

    const/high16 v7, -0x3f800000    # -4.0f

    const/high16 v9, 0x42100000    # 36.0f

    int-to-float v12, v1

    const/high16 v13, 0x41400000    # 12.0f

    mul-float v12, v12, v13

    add-float/2addr v12, v9

    invoke-virtual {v6, v7, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->B:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aget-object v6, v6, v1

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7, v7, v7, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    iget-object v6, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->z:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v7, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->B:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    sget-object v6, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    invoke-virtual {v1, v2, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v7, 0x44110000    # 580.0f

    invoke-virtual {v1, v7, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v7, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v7, Lcom/prineside/tdi2/ui/actors/QuadActor;

    sget-object v8, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    new-array v9, v10, [F

    fill-array-data v9, :array_0

    invoke-direct {v7, v8, v9}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    const/high16 v9, 0x41c00000    # 24.0f

    const/high16 v12, 0x43e00000    # 448.0f

    invoke-virtual {v7, v9, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v9, 0x42180000    # 38.0f

    invoke-virtual {v7, v9, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const v9, 0x3f0f5c29    # 0.56f

    invoke-virtual {v7, v4, v4, v4, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v7, Lcom/prineside/tdi2/ui/actors/QuadActor;

    new-array v9, v10, [F

    fill-array-data v9, :array_1

    invoke-direct {v7, v8, v9}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    const/high16 v8, 0x41200000    # 10.0f

    const/high16 v9, 0x43df0000    # 446.0f

    invoke-virtual {v7, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v8, 0x42180000    # 38.0f

    invoke-virtual {v7, v8, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    const v8, 0x3f0f5c29    # 0.56f

    invoke-virtual {v7, v4, v4, v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v7, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->j:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->j:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v8, 0x42800000    # 64.0f

    invoke-virtual {v7, v2, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->j:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v8, 0x43d00000    # 416.0f

    invoke-virtual {v7, v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->j:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v7, v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->j:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->j:Lcom/badlogic/gdx/scenes/scene2d/Group;

    new-instance v7, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$3;

    invoke-direct {v7, v0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$3;-><init>(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;)V

    invoke-virtual {v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->j:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>()V

    const/high16 v4, 0x43240000    # 164.0f

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v4, -0x3e000000    # -32.0f

    const/high16 v7, -0x3e000000    # -32.0f

    invoke-virtual {v1, v4, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v4, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->j:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v4, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v6, "ui-lucky-wheel-handle"

    invoke-virtual {v4, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    const/high16 v4, 0x42800000    # 64.0f

    invoke-virtual {v1, v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->j:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v1, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v11, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v2, -0x3ca00000    # -224.0f

    const/high16 v3, -0x3d600000    # -80.0f

    invoke-virtual {v1, v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    return-void

    :array_0
    .array-data 4
        0x40000000    # 2.0f
        0x40800000    # 4.0f
        0x0
        0x43dd0000    # 442.0f
        0x41b00000    # 22.0f
        0x43e00000    # 448.0f
        0x41c00000    # 24.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x40000000    # 2.0f
        0x40800000    # 4.0f
        0x0
        0x43dd0000    # 442.0f
        0x41200000    # 10.0f
        0x43df0000    # 446.0f
        0x41100000    # 9.0f
        0x40400000    # 3.0f
    .end array-data
.end method

.method public static synthetic a(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->o:Z

    return p0
.end method

.method public static synthetic b(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->o:Z

    return p1
.end method

.method public static synthetic c(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->v:Z

    return p0
.end method

.method public static synthetic d(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->u()V

    return-void
.end method

.method public static synthetic e(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->t()V

    return-void
.end method

.method public static synthetic f(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;)V
    .locals 0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->s()V

    return-void
.end method

.method public static synthetic g(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;)Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    return-object p0
.end method

.method public static synthetic h(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;)Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->j:Lcom/badlogic/gdx/scenes/scene2d/Group;

    return-object p0
.end method

.method public static synthetic i()Lcom/badlogic/gdx/math/Vector2;
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->P:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method public static synthetic j(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->F:Z

    return p0
.end method

.method public static synthetic k(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->w(F)V

    return-void
.end method

.method public static synthetic l(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;)Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->e:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    return-object p0
.end method

.method public static synthetic m(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->w:Z

    return p1
.end method


# virtual methods
.method public final n(FF)I
    .locals 5

    sub-float p2, p1, p2

    const/high16 v0, 0x42b40000    # 90.0f

    add-float/2addr p2, v0

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p2, v0

    add-float/2addr p2, v0

    rem-float/2addr p2, v0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->m:Lcom/badlogic/gdx/utils/Array;

    iget v2, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v3, -0x1

    if-ge v0, v2, :cond_1

    iget-object v1, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v1, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->c(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)F

    move-result v2

    invoke-static {v1}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->e(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/StrictMath;->min(FF)F

    move-result v2

    invoke-static {v1}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->c(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)F

    move-result v4

    invoke-static {v1}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->e(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)F

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/StrictMath;->max(FF)F

    move-result v1

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    if-eq v0, v3, :cond_2

    return v0

    :cond_2
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid weapon rotation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw p2

    :goto_3
    goto :goto_2
.end method

.method public final o()F
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->o:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->n:F

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget v0, v0, Lcom/prineside/tdi2/managers/ProgressManager;->luckyWheelLastRotation:F

    :goto_0
    return v0
.end method

.method public final p()F
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->o:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->y:F

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget v0, v0, Lcom/prineside/tdi2/managers/ProgressManager;->luckyWheelLastWeaponAngle:F

    :goto_0
    return v0
.end method

.method public postRender(F)V
    .locals 1

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->F:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->E:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->E:F

    :goto_0
    iget p1, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->E:F

    const v0, 0x3c887a8d    # 0.01666f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->q()V

    iget p1, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->E:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->E:F

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final q()V
    .locals 12

    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->v:Z

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->x:F

    const v3, 0x3d087a8d    # 0.03332f

    add-float/2addr v0, v3

    iput v0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->x:F

    cmpl-float v3, v0, v2

    if-ltz v3, :cond_0

    iput-boolean v1, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->v:Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->rebuild()V

    goto/16 :goto_2

    :cond_0
    sget-object v3, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->G:Lcom/badlogic/gdx/math/Interpolation;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/math/Interpolation;->apply(F)F

    move-result v0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->m:Lcom/badlogic/gdx/utils/Array;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v5, :cond_2

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;

    aget-object v4, v4, v3

    iget-boolean v5, v4, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->wasHit:Z

    if-eqz v5, :cond_1

    invoke-static {v4}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->q(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    move-result-object v5

    iget v5, v5, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->chance:F

    sub-float v6, v2, v0

    mul-float v5, v5, v6

    invoke-static {v4}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->i(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    move-result-object v6

    iput v5, v6, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;->value:F

    invoke-static {v4}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->g(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    move-result-object v4

    iput v5, v4, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;->value:F

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->i:Lcom/prineside/tdi2/ui/actors/PieChartActor;

    iget-object v3, v3, Lcom/prineside/tdi2/ui/actors/PieChartActor;->chart:Lcom/prineside/tdi2/shapes/PieChart;

    invoke-virtual {v3}, Lcom/prineside/tdi2/shapes/PieChart;->requestVerticesRebuild()V

    iget-object v3, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->h:Lcom/prineside/tdi2/ui/actors/PieChartActor;

    iget-object v3, v3, Lcom/prineside/tdi2/ui/actors/PieChartActor;->chart:Lcom/prineside/tdi2/shapes/PieChart;

    invoke-virtual {v3}, Lcom/prineside/tdi2/shapes/PieChart;->requestVerticesRebuild()V

    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->m:Lcom/badlogic/gdx/utils/Array;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v5, :cond_4

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;

    aget-object v4, v4, v3

    iget-boolean v5, v4, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->wasHit:Z

    if-nez v5, :cond_3

    iget v5, v4, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->respinPrepareFromAngle:F

    invoke-static {v4}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->o(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)F

    move-result v6

    invoke-static {v5, v6}, Lcom/prineside/tdi2/utils/PMath;->getDistanceBetweenAngles(FF)F

    move-result v5

    iget v6, v4, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->respinPrepareFromAngle:F

    mul-float v5, v5, v0

    add-float/2addr v6, v5

    const/high16 v5, 0x42b40000    # 90.0f

    sub-float/2addr v6, v5

    invoke-static {v6}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->getPosRotForAngle(F)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v5

    invoke-static {v4}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->m(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v6

    iget v7, v5, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v8, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    invoke-virtual {v6, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-static {v4}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->m(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v4

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setRotation(F)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    iget-boolean v0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->o:Z

    const/high16 v3, 0x43700000    # 240.0f

    const/4 v4, 0x0

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->u:F

    const v5, 0x3c887a8d    # 0.01666f

    add-float/2addr v0, v5

    iput v0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->u:F

    iget v0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->y:F

    iget v6, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->n:F

    invoke-virtual {p0, v0, v6}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->n(FF)I

    move-result v0

    iget v6, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->l:I

    if-eq v0, v6, :cond_a

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    sget-object v7, Lcom/prineside/tdi2/enums/StaticSoundType;->TICK:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/SoundManager;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    iget v6, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->l:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_7

    iget-object v7, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->m:Lcom/badlogic/gdx/utils/Array;

    iget-object v7, v7, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;

    aget-object v6, v7, v6

    iget-object v7, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->i:Lcom/prineside/tdi2/ui/actors/PieChartActor;

    invoke-virtual {v7}, Lcom/prineside/tdi2/ui/actors/PieChartActor;->getConfigs()Lcom/badlogic/gdx/utils/Array;

    move-result-object v7

    iget-object v7, v7, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    iget v8, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->l:I

    aget-object v7, v7, v8

    invoke-static {v6}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->q(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    move-result-object v8

    iget v8, v8, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->wheelMultiplier:I

    if-nez v8, :cond_5

    sget-object v8, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->H:[Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v6}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->q(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    move-result-object v9

    iget-object v9, v9, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->item:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v9}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v9

    invoke-virtual {v9}, Lcom/prineside/tdi2/Item;->getRarity()Lcom/prineside/tdi2/enums/RarityType;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget-object v8, v8, v9

    goto :goto_3

    :cond_5
    sget-object v8, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->I:Lcom/badlogic/gdx/graphics/Color;

    :goto_3
    iput-object v8, v7, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;->color:Lcom/badlogic/gdx/graphics/Color;

    iget-object v7, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->h:Lcom/prineside/tdi2/ui/actors/PieChartActor;

    invoke-virtual {v7}, Lcom/prineside/tdi2/ui/actors/PieChartActor;->getConfigs()Lcom/badlogic/gdx/utils/Array;

    move-result-object v7

    iget-object v7, v7, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    iget v8, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->l:I

    aget-object v7, v7, v8

    invoke-static {v6}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->q(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    move-result-object v8

    iget v8, v8, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->wheelMultiplier:I

    if-nez v8, :cond_6

    sget-object v8, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->J:[Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v6}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->q(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    move-result-object v6

    iget-object v6, v6, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->item:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v6}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v6

    invoke-virtual {v6}, Lcom/prineside/tdi2/Item;->getRarity()Lcom/prineside/tdi2/enums/RarityType;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-object v6, v8, v6

    goto :goto_4

    :cond_6
    sget-object v6, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->K:Lcom/badlogic/gdx/graphics/Color;

    :goto_4
    iput-object v6, v7, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;->color:Lcom/badlogic/gdx/graphics/Color;

    :cond_7
    iput v0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->l:I

    iget-object v6, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->m:Lcom/badlogic/gdx/utils/Array;

    iget-object v6, v6, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v6, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;

    aget-object v6, v6, v0

    iget-object v7, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->i:Lcom/prineside/tdi2/ui/actors/PieChartActor;

    invoke-virtual {v7}, Lcom/prineside/tdi2/ui/actors/PieChartActor;->getConfigs()Lcom/badlogic/gdx/utils/Array;

    move-result-object v7

    iget-object v7, v7, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    aget-object v7, v7, v0

    invoke-static {v6}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->q(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    move-result-object v8

    iget v8, v8, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->wheelMultiplier:I

    if-nez v8, :cond_8

    sget-object v8, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->L:[Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v6}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->q(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    move-result-object v9

    iget-object v9, v9, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->item:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v9}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v9

    invoke-virtual {v9}, Lcom/prineside/tdi2/Item;->getRarity()Lcom/prineside/tdi2/enums/RarityType;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget-object v8, v8, v9

    goto :goto_5

    :cond_8
    sget-object v8, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->M:Lcom/badlogic/gdx/graphics/Color;

    :goto_5
    iput-object v8, v7, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;->color:Lcom/badlogic/gdx/graphics/Color;

    iget-object v7, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->h:Lcom/prineside/tdi2/ui/actors/PieChartActor;

    invoke-virtual {v7}, Lcom/prineside/tdi2/ui/actors/PieChartActor;->getConfigs()Lcom/badlogic/gdx/utils/Array;

    move-result-object v7

    iget-object v7, v7, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    aget-object v0, v7, v0

    invoke-static {v6}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->q(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    move-result-object v7

    iget v7, v7, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->wheelMultiplier:I

    if-nez v7, :cond_9

    sget-object v7, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->N:[Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v6}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->q(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    move-result-object v6

    iget-object v6, v6, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->item:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v6}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v6

    invoke-virtual {v6}, Lcom/prineside/tdi2/Item;->getRarity()Lcom/prineside/tdi2/enums/RarityType;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-object v6, v7, v6

    goto :goto_6

    :cond_9
    sget-object v6, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->O:Lcom/badlogic/gdx/graphics/Color;

    :goto_6
    iput-object v6, v0, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;->color:Lcom/badlogic/gdx/graphics/Color;

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->i:Lcom/prineside/tdi2/ui/actors/PieChartActor;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/actors/PieChartActor;->chart:Lcom/prineside/tdi2/shapes/PieChart;

    invoke-virtual {v0}, Lcom/prineside/tdi2/shapes/PieChart;->requestVerticesRebuild()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->h:Lcom/prineside/tdi2/ui/actors/PieChartActor;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/actors/PieChartActor;->chart:Lcom/prineside/tdi2/shapes/PieChart;

    invoke-virtual {v0}, Lcom/prineside/tdi2/shapes/PieChart;->requestVerticesRebuild()V

    :cond_a
    iget v0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->u:F

    iget v6, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->t:F

    div-float/2addr v0, v6

    cmpl-float v6, v0, v2

    if-ltz v6, :cond_11

    iput v2, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->C:F

    iput-boolean v1, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->o:Z

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->shapeManager:Lcom/prineside/tdi2/managers/ShapeManager;

    sget-object v6, Lcom/prineside/tdi2/enums/ShapeType;->BULLET_SMOKE_MULTI_LINE:Lcom/prineside/tdi2/enums/ShapeType;

    invoke-virtual {v0, v6}, Lcom/prineside/tdi2/managers/ShapeManager;->getFactory(Lcom/prineside/tdi2/enums/ShapeType;)Lcom/prineside/tdi2/Shape$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/prineside/tdi2/Shape$Factory;->obtain()Lcom/prineside/tdi2/Shape;

    move-result-object v0

    check-cast v0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v7, "bullet-trace-smoke"

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v6

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v7

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    cmpg-float v7, v7, v8

    if-gez v7, :cond_b

    const/4 v7, 0x1

    goto :goto_7

    :cond_b
    const/4 v7, 0x0

    :goto_7
    invoke-virtual {v0, v6, v1, v7}, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->setTexture(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;ZZ)V

    const v6, 0x41cccccd    # 25.6f

    iput v6, v0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->maxSegmentWidth:F

    const/high16 v6, 0x40400000    # 3.0f

    iput v6, v0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->nodesDisperseTime:F

    const v6, 0x3f0f5c29    # 0.56f

    iput v6, v0, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->maxAlpha:F

    iget v7, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->y:F

    const/high16 v8, 0x41c00000    # 24.0f

    invoke-static {v3, v3, v7, v8}, Lcom/prineside/tdi2/utils/PMath;->getPointByAngleFromPoint(FFFF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v7

    iget v8, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v10, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->y:F

    const/high16 v11, 0x44700000    # 960.0f

    invoke-static {v3, v3, v10, v11}, Lcom/prineside/tdi2/utils/PMath;->getPointByAngleFromPoint(FFFF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v10

    iget v11, v10, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v10, v10, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v8, v7, v11, v10}, Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;->setup(FFFF)V

    new-instance v7, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$11;

    invoke-direct {v7, p0, v0, v5}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$11;-><init>(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;Lcom/prineside/tdi2/shapes/BulletSmokeMultiLine;F)V

    invoke-virtual {v7, v2, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->m:Lcom/badlogic/gdx/utils/Array;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;

    iget v5, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->l:I

    aget-object v0, v0, v5

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->q(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    move-result-object v5

    iget v5, v5, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->wheelMultiplier:I

    const v7, 0x3e0f5c29    # 0.14f

    if-nez v5, :cond_c

    sget-object v5, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->L:[Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->q(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    move-result-object v8

    iget-object v8, v8, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->item:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v8}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v8

    invoke-virtual {v8}, Lcom/prineside/tdi2/Item;->getRarity()Lcom/prineside/tdi2/enums/RarityType;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    invoke-virtual {v5, v7, v7, v7, v2}, Lcom/badlogic/gdx/graphics/Color;->add(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    sget-object v7, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->N:[Lcom/badlogic/gdx/graphics/Color;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->q(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    move-result-object v8

    iget-object v8, v8, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->item:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v8}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v8

    invoke-virtual {v8}, Lcom/prineside/tdi2/Item;->getRarity()Lcom/prineside/tdi2/enums/RarityType;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    invoke-virtual {v7, v4, v4, v4, v2}, Lcom/badlogic/gdx/graphics/Color;->add(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    goto :goto_8

    :cond_c
    sget-object v5, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->M:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    invoke-virtual {v5, v7, v7, v7, v2}, Lcom/badlogic/gdx/graphics/Color;->add(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    sget-object v7, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->O:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    invoke-virtual {v7, v4, v4, v4, v2}, Lcom/badlogic/gdx/graphics/Color;->add(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    :goto_8
    iget-object v8, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->i:Lcom/prineside/tdi2/ui/actors/PieChartActor;

    invoke-virtual {v8}, Lcom/prineside/tdi2/ui/actors/PieChartActor;->getConfigs()Lcom/badlogic/gdx/utils/Array;

    move-result-object v8

    iget-object v8, v8, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v8, [Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    iget v10, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->l:I

    aget-object v8, v8, v10

    iput-object v5, v8, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;->color:Lcom/badlogic/gdx/graphics/Color;

    iget-object v5, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->h:Lcom/prineside/tdi2/ui/actors/PieChartActor;

    invoke-virtual {v5}, Lcom/prineside/tdi2/ui/actors/PieChartActor;->getConfigs()Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    iget-object v5, v5, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    iget v8, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->l:I

    aget-object v5, v5, v8

    iput-object v7, v5, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;->color:Lcom/badlogic/gdx/graphics/Color;

    iget-object v5, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->i:Lcom/prineside/tdi2/ui/actors/PieChartActor;

    iget-object v5, v5, Lcom/prineside/tdi2/ui/actors/PieChartActor;->chart:Lcom/prineside/tdi2/shapes/PieChart;

    invoke-virtual {v5}, Lcom/prineside/tdi2/shapes/PieChart;->requestVerticesRebuild()V

    iget-object v5, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->h:Lcom/prineside/tdi2/ui/actors/PieChartActor;

    iget-object v5, v5, Lcom/prineside/tdi2/ui/actors/PieChartActor;->chart:Lcom/prineside/tdi2/shapes/PieChart;

    invoke-virtual {v5}, Lcom/prineside/tdi2/shapes/PieChart;->requestVerticesRebuild()V

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->q(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    move-result-object v5

    iget v5, v5, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->wheelMultiplier:I

    if-nez v5, :cond_d

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->q(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    move-result-object v7

    iget-object v7, v7, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->item:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v7}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v7

    invoke-virtual {v7}, Lcom/prineside/tdi2/Item;->getRarity()Lcom/prineside/tdi2/enums/RarityType;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/prineside/tdi2/managers/SoundManager;->playRarity(Lcom/prineside/tdi2/enums/RarityType;)V

    goto :goto_9

    :cond_d
    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->soundManager:Lcom/prineside/tdi2/managers/SoundManager;

    sget-object v7, Lcom/prineside/tdi2/enums/StaticSoundType;->SUCCESS:Lcom/prineside/tdi2/enums/StaticSoundType;

    invoke-virtual {v5, v7}, Lcom/prineside/tdi2/managers/SoundManager;->playStatic(Lcom/prineside/tdi2/enums/StaticSoundType;)V

    :goto_9
    const/4 v5, 0x0

    :goto_a
    iget-object v7, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->m:Lcom/badlogic/gdx/utils/Array;

    iget v8, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v8, :cond_f

    iget-object v7, v7, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;

    aget-object v7, v7, v5

    invoke-static {v7}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->m(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v8

    invoke-virtual {v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    invoke-static {v7}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->k(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v8

    invoke-virtual {v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    invoke-static {v7}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->k(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v8

    const v10, 0x3e4ccccd    # 0.2f

    invoke-static {v4, v10}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    if-ne v0, v7, :cond_e

    invoke-static {v7}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->m(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v7

    const v8, 0x3f8ccccd    # 1.1f

    invoke-static {v8, v8, v10}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleTo(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;

    move-result-object v8

    invoke-static {v8}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->parallel(Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    goto :goto_b

    :cond_e
    invoke-static {v7}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->m(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v7

    const v8, 0x3f666666    # 0.9f

    invoke-static {v8, v8, v10}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleTo(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;

    move-result-object v8

    invoke-static {v6, v10}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->parallel(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    :goto_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_f
    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->q(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    move-result-object v5

    iget v5, v5, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->wheelMultiplier:I

    if-nez v5, :cond_10

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->q(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    move-result-object v6

    iget-object v6, v6, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->item:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v6}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v6

    invoke-virtual {v6}, Lcom/prineside/tdi2/Item;->getRarity()Lcom/prineside/tdi2/enums/RarityType;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/ProgressManager;->getRarityBrightColor(Lcom/prineside/tdi2/enums/RarityType;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v5

    goto :goto_c

    :cond_10
    sget-object v5, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->M:Lcom/badlogic/gdx/graphics/Color;

    :goto_c
    iget-object v6, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->D:Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool;

    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/graphics/g2d/ParticleEffectPool$PooledEffect;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getTint()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [F

    iget v10, v5, Lcom/badlogic/gdx/graphics/Color;->r:F

    aput v10, v8, v1

    iget v10, v5, Lcom/badlogic/gdx/graphics/Color;->g:F

    aput v10, v8, v9

    const/4 v10, 0x2

    iget v5, v5, Lcom/badlogic/gdx/graphics/Color;->b:F

    aput v5, v8, v10

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$GradientColorValue;->setColors([F)V

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getAngle()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v5

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->c(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)F

    move-result v7

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHighMin(F)V

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getAngle()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v5

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->e(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)F

    move-result v7

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHighMax(F)V

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->e(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)F

    move-result v5

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->c(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)F

    move-result v7

    invoke-static {v5, v7}, Lcom/prineside/tdi2/utils/PMath;->getDistanceBetweenAngles(FF)F

    move-result v5

    invoke-static {v5}, Ljava/lang/StrictMath;->abs(F)F

    move-result v5

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;->getEmitters()Lcom/badlogic/gdx/utils/Array;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter;->getEmission()Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    move-result-object v7

    const/high16 v8, 0x41f00000    # 30.0f

    div-float/2addr v5, v8

    const/high16 v8, 0x43960000    # 300.0f

    mul-float v5, v5, v8

    invoke-virtual {v7, v5}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;->setHigh(F)V

    iget-object v5, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->e:Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;

    invoke-virtual {v5, v6, v3, v3}, Lcom/prineside/tdi2/ui/actors/ParticlesCanvas;->addParticle(Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;FF)Lcom/prineside/tdi2/ui/actors/ParticlesCanvas$ParticleConfig;

    iput-boolean v9, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->wasHit:Z

    invoke-virtual {p0, v0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->r(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)V

    goto :goto_d

    :cond_11
    iget v5, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->q:F

    sget-object v6, Lcom/badlogic/gdx/math/Interpolation;->exp10Out:Lcom/badlogic/gdx/math/Interpolation$ExpOut;

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/math/Interpolation$ExpOut;->apply(F)F

    move-result v6

    iget v7, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->p:F

    iget v8, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->q:F

    sub-float/2addr v7, v8

    mul-float v6, v6, v7

    add-float/2addr v5, v6

    iput v5, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->n:F

    const/high16 v5, 0x3fa00000    # 1.25f

    mul-float v5, v5, v0

    iput v5, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->C:F

    iget v5, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->s:F

    sget-object v6, Lcom/badlogic/gdx/math/Interpolation;->smoother:Lcom/badlogic/gdx/math/Interpolation;

    invoke-virtual {v6, v0}, Lcom/badlogic/gdx/math/Interpolation;->apply(F)F

    move-result v0

    iget v6, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->r:F

    iget v7, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->s:F

    sub-float/2addr v6, v7

    mul-float v0, v0, v6

    add-float/2addr v5, v0

    iput v5, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->y:F

    goto :goto_d

    :cond_12
    iget v0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->C:F

    const v5, 0x3f7bbc2c

    mul-float v0, v0, v5

    iput v0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->C:F

    :goto_d
    iget v0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->C:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_13

    iput v2, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->C:F

    :cond_13
    iget v0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->n:F

    const/high16 v5, 0x43b40000    # 360.0f

    rem-float/2addr v0, v5

    add-float/2addr v0, v5

    rem-float/2addr v0, v5

    iput v0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->n:F

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->o()F

    move-result v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setRotation(F)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->z:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->p()F

    move-result v5

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setRotation(F)V

    iget v0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->C:F

    const/high16 v5, 0x3e800000    # 0.25f

    sub-float/2addr v0, v5

    const/high16 v5, 0x3f400000    # 0.75f

    div-float/2addr v0, v5

    :goto_e
    iget-object v5, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->A:[Lcom/prineside/tdi2/ui/actors/TrailMultilineActor;

    array-length v6, v5

    if-ge v1, v6, :cond_17

    array-length v6, v5

    int-to-float v6, v6

    div-float v6, v2, v6

    int-to-float v7, v1

    mul-float v6, v6, v7

    cmpl-float v8, v0, v6

    if-lez v8, :cond_15

    sub-float v6, v0, v6

    array-length v5, v5

    int-to-float v5, v5

    mul-float v6, v6, v5

    cmpg-float v5, v6, v4

    if-gez v5, :cond_14

    goto :goto_f

    :cond_14
    cmpl-float v5, v6, v2

    if-lez v5, :cond_16

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_10

    :cond_15
    :goto_f
    const/4 v6, 0x0

    :cond_16
    :goto_10
    sget-object v5, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->P:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v5, v4, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v8

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->p()F

    move-result v9

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/math/Vector2;->rotateDeg(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v8

    const/high16 v9, 0x41d80000    # 27.0f

    const/high16 v10, 0x41400000    # 12.0f

    mul-float v7, v7, v10

    add-float/2addr v7, v9

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    iget-object v7, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->A:[Lcom/prineside/tdi2/ui/actors/TrailMultilineActor;

    aget-object v7, v7, v1

    iget-object v7, v7, Lcom/prineside/tdi2/ui/actors/TrailMultilineActor;->trail:Lcom/prineside/tdi2/shapes/TrailMultiLine;

    invoke-virtual {v7, v6}, Lcom/prineside/tdi2/shapes/TrailMultiLine;->setAlpha(F)V

    iget-object v7, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->A:[Lcom/prineside/tdi2/ui/actors/TrailMultilineActor;

    aget-object v7, v7, v1

    iget v8, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v8, v3

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v5, v3

    invoke-virtual {v7, v8, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v5, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->B:[Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    aget-object v5, v5, v1

    invoke-virtual {v5, v2, v2, v2, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_17
    return-void
.end method

.method public final r(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)V
    .locals 8

    const-string v0, "LuckyWheelOverlay"

    const-string v1, "onSpinFinished"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/prineside/tdi2/managers/ProgressManager;->luckyWheelSpinInProgress:Z

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->getLuckyWheelOptions()Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->q(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v4, 0x5

    if-ge v2, v4, :cond_2

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_2

    iget-object v4, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->wheelMultiplier:I

    if-eqz v4, :cond_1

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    const/4 v5, 0x0

    :goto_1
    iget-object v6, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->m:Lcom/badlogic/gdx/utils/Array;

    iget v7, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v5, v7, :cond_1

    iget-object v6, v6, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v6, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;

    aget-object v6, v6, v5

    invoke-static {v6}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->q(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    move-result-object v6

    if-ne v6, v4, :cond_0

    iget-object v6, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->m:Lcom/badlogic/gdx/utils/Array;

    iget-object v6, v6, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v6, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;

    aget-object v6, v6, v5

    iput-boolean v3, v6, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->wasHit:Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->q(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    move-result-object v2

    iget v2, v2, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->wheelMultiplier:I

    if-nez v2, :cond_3

    new-instance v0, Lcom/prineside/tdi2/IssuedItems;

    sget-object v2, Lcom/prineside/tdi2/IssuedItems$IssueReason;->LUCKY_SHOT:Lcom/prineside/tdi2/IssuedItems$IssueReason;

    invoke-static {}, Lcom/prineside/tdi2/Game;->getTimestampSeconds()I

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/prineside/tdi2/IssuedItems;-><init>(Lcom/prineside/tdi2/IssuedItems$IssueReason;I)V

    iget-object v2, v0, Lcom/prineside/tdi2/IssuedItems;->items:Lcom/badlogic/gdx/utils/Array;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->q(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    move-result-object v3

    iget-object v3, v3, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->item:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v2, v0, v1}, Lcom/prineside/tdi2/managers/ProgressManager;->addIssuedPrizes(Lcom/prineside/tdi2/IssuedItems;Z)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->q(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    move-result-object p1

    iget-object p1, p1, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->item:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v0, p1}, Lcom/prineside/tdi2/managers/ProgressManager;->addItems(Lcom/prineside/tdi2/ItemStack;)V

    goto/16 :goto_4

    :cond_3
    const/4 v2, 0x0

    :goto_2
    iget v3, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v3, :cond_5

    iget-object v3, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->item:Lcom/prineside/tdi2/ItemStack;

    if-eqz v4, :cond_4

    check-cast v3, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->item:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v3}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v3

    invoke-virtual {v3}, Lcom/prineside/tdi2/Item;->affectedByLuckyWheelMultiplier()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->item:Lcom/prineside/tdi2/ItemStack;

    check-cast v3, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->item:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v3}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v3

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->q(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    move-result-object v5

    iget v5, v5, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->wheelMultiplier:I

    invoke-static {v3, v5}, Lcom/prineside/tdi2/utils/PMath;->multiplyWithoutOverflow(II)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/prineside/tdi2/ItemStack;->setCount(I)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->m:Lcom/badlogic/gdx/utils/Array;

    iget v0, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v0, :cond_7

    iget-object p1, p1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast p1, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;

    aget-object p1, p1, v1

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->q(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    move-result-object p1

    iget-object p1, p1, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->item:Lcom/prineside/tdi2/ItemStack;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->m:Lcom/badlogic/gdx/utils/Array;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast p1, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;

    aget-object p1, p1, v1

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->a(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->m:Lcom/badlogic/gdx/utils/Array;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast p1, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;

    aget-object p1, p1, v1

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->a(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->m:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v2, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;

    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->q(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    move-result-object v2

    iget-object v2, v2, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->item:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v2}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->m:Lcom/badlogic/gdx/utils/Array;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast p1, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;

    aget-object p1, p1, v1

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->a(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object p1, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->m:Lcom/badlogic/gdx/utils/Array;

    iget-object p1, p1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast p1, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;

    aget-object p1, p1, v1

    invoke-static {p1}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->a(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object p1

    const/high16 v0, 0x3fc00000    # 1.5f

    const v2, 0x3e99999a    # 0.3f

    invoke-static {v0, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleTo(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleTo(FFF)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_7
    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->t()V

    :goto_4
    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->u()V

    return-void

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "can\'t remove last hit option from manager"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public rebuild()V
    .locals 12

    const-class v0, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ProgressManager;->getLuckyWheelOptions()Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->m:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->clear()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget v4, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v4, :cond_0

    new-instance v4, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;

    invoke-direct {v4}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;-><init>()V

    iget-object v5, v1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    aget-object v5, v5, v3

    invoke-static {v4, v5}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->r(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;)Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    iget-object v5, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->m:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->v()V

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    iget-object v6, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->m:Lcom/badlogic/gdx/utils/Array;

    iget v7, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v7, :cond_2

    iget-object v6, v6, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v6, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;

    aget-object v6, v6, v4

    invoke-static {v6}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->q(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    move-result-object v6

    iget v6, v6, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->wheelMultiplier:I

    if-nez v6, :cond_1

    sget-object v6, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->J:[Lcom/badlogic/gdx/graphics/Color;

    iget-object v7, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->m:Lcom/badlogic/gdx/utils/Array;

    iget-object v7, v7, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;

    aget-object v7, v7, v4

    invoke-static {v7}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->q(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    move-result-object v7

    iget-object v7, v7, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->item:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v7}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v7

    invoke-virtual {v7}, Lcom/prineside/tdi2/Item;->getRarity()Lcom/prineside/tdi2/enums/RarityType;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget-object v6, v6, v7

    goto :goto_2

    :cond_1
    sget-object v6, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->K:Lcom/badlogic/gdx/graphics/Color;

    :goto_2
    new-instance v7, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    iget-object v8, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->m:Lcom/badlogic/gdx/utils/Array;

    iget-object v8, v8, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v8, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;

    aget-object v8, v8, v4

    invoke-static {v8}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->q(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    move-result-object v8

    iget v8, v8, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->chance:F

    invoke-direct {v7, v6, v8, v3}, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;-><init>(Lcom/badlogic/gdx/graphics/Color;FF)V

    iget-object v6, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->m:Lcom/badlogic/gdx/utils/Array;

    iget-object v6, v6, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v6, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;

    aget-object v6, v6, v4

    iput-object v6, v7, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;->userObject:Ljava/lang/Object;

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->m:Lcom/badlogic/gdx/utils/Array;

    iget-object v6, v6, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v6, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;

    aget-object v6, v6, v4

    invoke-static {v6, v7}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->h(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;)Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    iget-object v6, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->m:Lcom/badlogic/gdx/utils/Array;

    iget-object v6, v6, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v6, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;

    aget-object v6, v6, v4

    invoke-static {v6}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->q(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    move-result-object v6

    iget v6, v6, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->chance:F

    add-float/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->h:Lcom/prineside/tdi2/ui/actors/PieChartActor;

    invoke-virtual {v4, v1}, Lcom/prineside/tdi2/ui/actors/PieChartActor;->setConfigs(Lcom/badlogic/gdx/utils/Array;)V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->h:Lcom/prineside/tdi2/ui/actors/PieChartActor;

    iget-object v1, v1, Lcom/prineside/tdi2/ui/actors/PieChartActor;->chart:Lcom/prineside/tdi2/shapes/PieChart;

    invoke-virtual {v1}, Lcom/prineside/tdi2/shapes/PieChart;->requestVerticesRebuild()V

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    const/4 v0, 0x0

    :goto_3
    iget-object v4, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->m:Lcom/badlogic/gdx/utils/Array;

    iget v6, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v6, :cond_4

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;

    aget-object v4, v4, v0

    invoke-static {v4}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->q(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    move-result-object v4

    iget v4, v4, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->wheelMultiplier:I

    if-nez v4, :cond_3

    sget-object v4, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->H:[Lcom/badlogic/gdx/graphics/Color;

    iget-object v6, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->m:Lcom/badlogic/gdx/utils/Array;

    iget-object v6, v6, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v6, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;

    aget-object v6, v6, v0

    invoke-static {v6}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->q(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    move-result-object v6

    iget-object v6, v6, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->item:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v6}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v6

    invoke-virtual {v6}, Lcom/prineside/tdi2/Item;->getRarity()Lcom/prineside/tdi2/enums/RarityType;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget-object v4, v4, v6

    goto :goto_4

    :cond_3
    sget-object v4, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->I:Lcom/badlogic/gdx/graphics/Color;

    :goto_4
    new-instance v6, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    iget-object v7, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->m:Lcom/badlogic/gdx/utils/Array;

    iget-object v7, v7, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v7, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;

    aget-object v7, v7, v0

    invoke-static {v7}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->q(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    move-result-object v7

    iget v7, v7, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->chance:F

    invoke-direct {v6, v4, v7, v3}, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;-><init>(Lcom/badlogic/gdx/graphics/Color;FF)V

    iget-object v4, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->m:Lcom/badlogic/gdx/utils/Array;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;

    aget-object v4, v4, v0

    iput-object v4, v6, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;->userObject:Ljava/lang/Object;

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->m:Lcom/badlogic/gdx/utils/Array;

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;

    aget-object v4, v4, v0

    invoke-static {v4, v6}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->j(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;)Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->i:Lcom/prineside/tdi2/ui/actors/PieChartActor;

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/actors/PieChartActor;->setConfigs(Lcom/badlogic/gdx/utils/Array;)V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->i:Lcom/prineside/tdi2/ui/actors/PieChartActor;

    iget-object v0, v0, Lcom/prineside/tdi2/ui/actors/PieChartActor;->chart:Lcom/prineside/tdi2/shapes/PieChart;

    invoke-virtual {v0}, Lcom/prineside/tdi2/shapes/PieChart;->requestVerticesRebuild()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->f:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    :goto_5
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->m:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v1, :cond_8

    iget-object v0, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->o(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)F

    move-result v1

    const/high16 v4, 0x42b40000    # 90.0f

    sub-float/2addr v1, v4

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    new-instance v6, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$9;

    invoke-direct {v6, p0, v0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$9;-><init>(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)V

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setTransform(Z)V

    const/high16 v7, 0x42a00000    # 80.0f

    invoke-virtual {v4, v7, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v8, 0x42200000    # 40.0f

    invoke-virtual {v4, v8, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setOrigin(FF)V

    iget-object v8, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->f:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v8, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-static {v0, v4}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->n(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;Lcom/badlogic/gdx/scenes/scene2d/Group;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->q(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    move-result-object v8

    iget v8, v8, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->wheelMultiplier:I

    if-nez v8, :cond_5

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->q(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    move-result-object v8

    iget-object v8, v8, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->item:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v8}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v8

    invoke-virtual {v8, v7, v6}, Lcom/prineside/tdi2/Item;->generateIcon(FZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->q(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    move-result-object v10

    iget-object v10, v10, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->item:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v10}, Lcom/prineside/tdi2/ItemStack;->getCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v11, 0x18

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-static {v0, v8}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->b(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->a(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->a(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v8

    const/high16 v9, 0x42000000    # 32.0f

    invoke-virtual {v8, v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->a(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v8

    const/high16 v9, -0x3e000000    # -32.0f

    invoke-virtual {v8, v3, v9}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->a(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_6

    :cond_5
    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->q(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    move-result-object v8

    iget v8, v8, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->wheelMultiplier:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_6

    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v10, "lucky-wheel-x2"

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v8, v7, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_6

    :cond_6
    new-instance v8, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v9, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v9, v9, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v10, "lucky-wheel-x3"

    invoke-virtual {v9, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v8, v7, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v4, v8}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :goto_6
    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->q(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    move-result-object v8

    iget v8, v8, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->chance:F

    div-float/2addr v8, v5

    const/high16 v9, 0x42c80000    # 100.0f

    mul-float v8, v8, v9

    invoke-static {v8}, Ljava/lang/StrictMath;->round(F)I

    move-result v8

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "%"

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v10, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v10, v10, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v11, 0x15

    invoke-virtual {v10, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v10

    invoke-direct {v9, v8, v10}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v9, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;->setAlignment(I)V

    const/high16 v6, 0x41c00000    # 24.0f

    invoke-virtual {v9, v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const v6, 0x3f0f5c29    # 0.56f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v9, v7, v7, v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    const/high16 v6, -0x3d440000    # -94.0f

    invoke-virtual {v9, v3, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    invoke-virtual {v4, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->q(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    move-result-object v4

    iget v4, v4, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->wheelMultiplier:I

    if-nez v4, :cond_7

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-static {v0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->q(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    move-result-object v6

    iget-object v6, v6, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->item:Lcom/prineside/tdi2/ItemStack;

    invoke-virtual {v6}, Lcom/prineside/tdi2/ItemStack;->getItem()Lcom/prineside/tdi2/Item;

    move-result-object v6

    invoke-virtual {v6}, Lcom/prineside/tdi2/Item;->getRarity()Lcom/prineside/tdi2/enums/RarityType;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/prineside/tdi2/managers/ProgressManager;->getRarityBrightColor(Lcom/prineside/tdi2/enums/RarityType;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_7

    :cond_7
    sget-object v4, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->M:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_7
    invoke-static {v0, v9}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->l(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;Lcom/badlogic/gdx/scenes/scene2d/ui/Label;)Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    invoke-static {v3}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(F)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v4

    const v6, 0x3e4ccccd    # 0.2f

    invoke-static {v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v6

    const/high16 v8, 0x3fc00000    # 1.5f

    invoke-static {v8}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->delay(F)Lcom/badlogic/gdx/scenes/scene2d/actions/DelayAction;

    move-result-object v8

    invoke-static {v3, v7}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FF)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v7

    invoke-static {v4, v6, v8, v7}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    invoke-virtual {v0, v1}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->setItemContainerAngle(F)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    :cond_8
    const/4 v0, -0x1

    iput v0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->l:I

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->u()V

    return-void
.end method

.method public final s()V
    .locals 6

    const-string v0, "LuckyWheelOverlay"

    const-string v1, "prepareNextWheel"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->w:Z

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->u()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->d:Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v1, Lcom/badlogic/gdx/math/Interpolation;->pow2In:Lcom/badlogic/gdx/math/Interpolation$PowIn;

    const/4 v2, 0x0

    const v3, 0x3e99999a    # 0.3f

    invoke-static {v2, v2, v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;

    move-result-object v1

    new-instance v2, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$4;

    invoke-direct {v2, p0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$4;-><init>(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;)V

    invoke-static {v2}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->run(Ljava/lang/Runnable;)Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;

    move-result-object v2

    sget-object v4, Lcom/badlogic/gdx/math/Interpolation;->pow2Out:Lcom/badlogic/gdx/math/Interpolation$PowOut;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5, v5, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;

    move-result-object v3

    new-instance v4, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$5;

    invoke-direct {v4, p0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$5;-><init>(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;)V

    invoke-static {v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->run(Ljava/lang/Runnable;)Lcom/badlogic/gdx/scenes/scene2d/actions/RunnableAction;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->sequence(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/SequenceAction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 5

    const-string v0, "LuckyWheelOverlay"

    if-nez p1, :cond_1

    iget-boolean v1, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->o:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->v:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->w:Z

    if-eqz v1, :cond_1

    :cond_0
    const-string p1, "can\'t hide while spinning / preparing"

    invoke-static {v0, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->rebuild()V

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v2}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v2

    iget-object v3, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    new-instance v4, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$10;

    invoke-direct {v4, p0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$10;-><init>(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;)V

    invoke-static {v1, v2, v3, v4}, Lcom/prineside/tdi2/utils/UiUtils;->bouncyShowOverlay(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Group;Ljava/lang/Runnable;)V

    iget-boolean v1, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->F:Z

    if-nez v1, :cond_3

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget-boolean v1, v1, Lcom/prineside/tdi2/managers/ProgressManager;->luckyWheelSpinInProgress:Z

    if-eqz v1, :cond_3

    const-string v1, "showing lucky wheel while spin in progress"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    sget-object v1, Lcom/prineside/tdi2/Item$D;->LUCKY_SHOT_TOKEN:Lcom/prineside/tdi2/items/LuckyShotTokenItem;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/prineside/tdi2/managers/ProgressManager;->removeItems(Lcom/prineside/tdi2/Item;I)Z

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iput-boolean v2, v0, Lcom/prineside/tdi2/managers/ProgressManager;->luckyWheelSpinAvailable:Z

    const v0, 0x3e99999a    # 0.3f

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    double-to-float v1, v1

    const v2, 0x3f19999a    # 0.6f

    mul-float v1, v1, v2

    add-float/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->w(F)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->a:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->b:Lcom/prineside/tdi2/managers/UiManager$UiLayer;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/UiManager$UiLayer;->getTable()Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    move-result-object v1

    iget-object v2, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->c:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-static {v0, v1, v2}, Lcom/prineside/tdi2/utils/UiUtils;->bouncyHideOverlay(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Group;)V

    :cond_3
    :goto_0
    iput-boolean p1, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->F:Z

    return-void
.end method

.method public final t()V
    .locals 9

    const-string v0, "LuckyWheelOverlay"

    const-string v1, "prepareRespin"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/prineside/tdi2/managers/ProgressManager;->luckyWheelSpinAvailable:Z

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const-class v2, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->m:Lcom/badlogic/gdx/utils/Array;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v3, v5, :cond_1

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;

    aget-object v5, v5, v3

    iget-boolean v5, v5, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->wasHit:Z

    if-eqz v5, :cond_0

    check-cast v4, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget v3, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->rebuild()V

    return-void

    :cond_2
    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->m:Lcom/badlogic/gdx/utils/Array;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v6, 0x0

    if-ge v3, v5, :cond_4

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;

    aget-object v4, v4, v3

    invoke-static {v4}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->m(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v5

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    invoke-virtual {v0, v4, v1}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v5

    const/high16 v7, 0x3f000000    # 0.5f

    if-eqz v5, :cond_3

    invoke-static {v4}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->m(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->G:Lcom/badlogic/gdx/math/Interpolation;

    invoke-static {v6, v6, v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    goto :goto_2

    :cond_3
    invoke-static {v4}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->o(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)F

    move-result v5

    iput v5, v4, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->respinPrepareFromAngle:F

    invoke-static {v4}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->m(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v4

    sget-object v5, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->G:Lcom/badlogic/gdx/math/Interpolation;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6, v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->alpha(FFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/AlphaAction;

    move-result-object v8

    invoke-static {v6, v6, v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->scaleTo(FFFLcom/badlogic/gdx/math/Interpolation;)Lcom/badlogic/gdx/scenes/scene2d/actions/ScaleToAction;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/badlogic/gdx/scenes/scene2d/actions/Actions;->parallel(Lcom/badlogic/gdx/scenes/scene2d/Action;Lcom/badlogic/gdx/scenes/scene2d/Action;)Lcom/badlogic/gdx/scenes/scene2d/actions/ParallelAction;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    new-instance v3, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v3}, Lcom/badlogic/gdx/utils/FloatArray;-><init>()V

    const/4 v4, 0x0

    :goto_3
    iget v5, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v5, :cond_5

    iget-object v5, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;

    aget-object v5, v5, v4

    invoke-static {v5}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->q(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    move-result-object v5

    iget v5, v5, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->chance:F

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    iget-object v5, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v5, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;

    aget-object v5, v5, v4

    invoke-static {v5}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->q(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    move-result-object v5

    iput v6, v5, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->chance:F

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->v()V

    :goto_4
    iget v4, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v4, :cond_6

    iget-object v4, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;

    aget-object v4, v4, v2

    invoke-static {v4}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->q(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    move-result-object v4

    iget-object v5, v3, Lcom/badlogic/gdx/utils/FloatArray;->items:[F

    aget v5, v5, v2

    iput v5, v4, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->chance:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    iput-boolean v1, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->v:Z

    iput v6, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->x:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->u()V

    return-void
.end method

.method public final u()V
    .locals 30

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    iget-boolean v1, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->o:Z

    if-nez v1, :cond_7

    iget-boolean v1, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->v:Z

    if-nez v1, :cond_7

    iget-boolean v1, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->w:Z

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ProgressManager;->isLuckyWheelSpinAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    goto/16 :goto_5

    :cond_1
    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v1}, Lcom/prineside/tdi2/managers/ProgressManager;->getLuckyWheelRespinPriceTokens()I

    move-result v1

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v3}, Lcom/prineside/tdi2/managers/ProgressManager;->getLuckyWheelRespinPriceAccelerators()I

    move-result v3

    const/16 v4, 0x18

    const/high16 v5, 0x42000000    # 32.0f

    const/high16 v6, 0x42ac0000    # 86.0f

    const/high16 v7, 0x42280000    # 42.0f

    const-string v10, "lucky-shot-token"

    const/16 v11, 0x15

    const-string v13, ""

    const/high16 v14, 0x42400000    # 48.0f

    const/high16 v15, 0x40c00000    # 6.0f

    const/high16 v2, 0x42a00000    # 80.0f

    const/high16 v8, 0x43400000    # 192.0f

    if-gtz v1, :cond_3

    if-lez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_3
    :goto_0
    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    if-lez v1, :cond_4

    const/high16 v16, 0x43c40000    # 392.0f

    const/high16 v12, 0x43c40000    # 392.0f

    goto :goto_1

    :cond_4
    const/high16 v12, 0x43400000    # 192.0f

    :goto_1
    invoke-virtual {v9, v12, v7}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    if-lez v1, :cond_5

    const/high16 v7, 0x43780000    # 248.0f

    goto :goto_2

    :cond_5
    const/high16 v7, 0x43e00000    # 448.0f

    :goto_2
    invoke-virtual {v9, v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v7, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v12, "icon-restart"

    invoke-virtual {v6, v12}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v6

    invoke-direct {v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P300:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v9, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v7

    invoke-virtual {v7, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v12, v12, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v5, "lucky_shot_respin_title"

    invoke-virtual {v12, v5}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v12, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v12

    invoke-direct {v7, v5, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v9, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    const-string v5, "x"

    if-lez v1, :cond_6

    new-instance v6, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v7, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v7

    new-instance v9, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$6;

    invoke-direct {v9, v0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$6;-><init>(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;)V

    invoke-direct {v6, v13, v7, v9}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    new-instance v7, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v7, v8, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v12, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v12

    invoke-direct {v9, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    invoke-virtual {v9, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v9

    invoke-virtual {v9, v15}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v9, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v12, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v12, v12, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v4, 0x1e

    invoke-virtual {v12, v4}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v12

    invoke-direct {v9, v1, v12}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v7, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v1, Lcom/prineside/tdi2/utils/QuadDrawable;

    new-instance v4, Lcom/prineside/tdi2/ui/actors/QuadActor;

    sget-object v7, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    const/16 v9, 0x8

    new-array v12, v9, [F

    fill-array-data v12, :array_0

    invoke-direct {v4, v7, v12}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-direct {v1, v4}, Lcom/prineside/tdi2/utils/QuadDrawable;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;)V

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/high16 v21, 0x43400000    # 192.0f

    const/high16 v22, 0x42a00000    # 80.0f

    move-object/from16 v17, v6

    move-object/from16 v18, v1

    invoke-virtual/range {v17 .. v22}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    const v4, 0x3f47ae14    # 0.78f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v1, v7, v7, v7, v4}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    sget-object v9, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P900:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v9

    invoke-virtual {v9, v7, v7, v7, v4}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v9

    sget-object v12, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P700:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v12

    invoke-virtual {v12, v7, v7, v7, v4}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v12

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    const v15, 0x3f0f5c29    # 0.56f

    invoke-virtual {v4, v7, v7, v7, v15}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    invoke-virtual {v6, v1, v9, v12, v4}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v6, v8, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v1, 0x43780000    # 248.0f

    const/4 v4, 0x0

    invoke-virtual {v6, v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_6
    if-lez v3, :cond_2

    new-instance v1, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v4, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    new-instance v6, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$7;

    invoke-direct {v6, v0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$7;-><init>(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;)V

    invoke-direct {v1, v13, v4, v6}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v4, v8, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v9, "time-accelerator"

    invoke-virtual {v7, v9}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    invoke-virtual {v6, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v6

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v6, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v7, 0x1e

    invoke-virtual {v5, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    invoke-direct {v6, v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/prineside/tdi2/utils/QuadDrawable;

    new-instance v4, Lcom/prineside/tdi2/ui/actors/QuadActor;

    sget-object v5, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    const/16 v6, 0x8

    new-array v7, v6, [F

    fill-array-data v7, :array_1

    invoke-direct {v4, v5, v7}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-direct {v3, v4}, Lcom/prineside/tdi2/utils/QuadDrawable;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;)V

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/high16 v28, 0x43400000    # 192.0f

    const/high16 v29, 0x42a00000    # 80.0f

    move-object/from16 v24, v1

    move-object/from16 v25, v3

    invoke-virtual/range {v24 .. v29}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    const v4, 0x3f47ae14    # 0.78f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v5, v5, v5, v4}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P900:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    invoke-virtual {v6, v5, v5, v5, v4}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    sget-object v7, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P700:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    invoke-virtual {v7, v5, v5, v5, v4}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    const v9, 0x3f0f5c29    # 0.56f

    invoke-virtual {v4, v5, v5, v5, v9}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    invoke-virtual {v1, v3, v6, v7, v4}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v1, v8, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v3, 0x43e00000    # 448.0f

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :goto_3
    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    const/high16 v3, 0x42280000    # 42.0f

    invoke-virtual {v1, v8, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/high16 v3, 0x42ac0000    # 86.0f

    invoke-virtual {v1, v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v5, "icon-lucky-wheel-plus"

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P300:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v5, 0x42000000    # 32.0f

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v3

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->localeManager:Lcom/prineside/tdi2/managers/LocaleManager;

    iget-object v5, v5, Lcom/prineside/tdi2/managers/LocaleManager;->i18n:Lcom/prineside/tdi2/utils/I18NBundle;

    const-string v6, "lucky_shot_new_wheel_title"

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v6, v6, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v7, 0x18

    invoke-virtual {v6, v7}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v1, Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v3, v11}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v3

    new-instance v4, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$8;

    invoke-direct {v4, v0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$8;-><init>(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;)V

    invoke-direct {v1, v13, v3, v4}, Lcom/prineside/tdi2/ui/actors/ComplexButton;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;Ljava/lang/Runnable;)V

    new-instance v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    invoke-virtual {v3, v8, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v5, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    invoke-virtual {v4, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v4

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    sget-object v5, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v5, v5, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v6, 0x1e

    invoke-virtual {v5, v6}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v5

    const-string v6, "x1"

    invoke-direct {v4, v6, v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v3, Lcom/prineside/tdi2/utils/QuadDrawable;

    new-instance v4, Lcom/prineside/tdi2/ui/actors/QuadActor;

    sget-object v5, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    const/16 v6, 0x8

    new-array v6, v6, [F

    fill-array-data v6, :array_2

    invoke-direct {v4, v5, v6}, Lcom/prineside/tdi2/ui/actors/QuadActor;-><init>(Lcom/badlogic/gdx/graphics/Color;[F)V

    invoke-direct {v3, v4}, Lcom/prineside/tdi2/utils/QuadDrawable;-><init>(Lcom/prineside/tdi2/ui/actors/QuadActor;)V

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/high16 v22, 0x43400000    # 192.0f

    const/high16 v23, 0x42a00000    # 80.0f

    move-object/from16 v18, v1

    move-object/from16 v19, v3

    invoke-virtual/range {v18 .. v23}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackground(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;FFFF)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    sget-object v3, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    const v4, 0x3f47ae14    # 0.78f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3, v5, v5, v5, v4}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v3

    sget-object v6, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P900:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v6}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    invoke-virtual {v6, v5, v5, v5, v4}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    sget-object v7, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P700:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    invoke-virtual {v7, v5, v5, v5, v4}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v7

    sget-object v4, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P800:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    const v9, 0x3f0f5c29    # 0.56f

    invoke-virtual {v4, v5, v5, v5, v9}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v4

    invoke-virtual {v1, v3, v6, v7, v4}, Lcom/prineside/tdi2/ui/actors/ComplexButton;->setBackgroundColors(Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)Lcom/prineside/tdi2/ui/actors/ComplexButton;

    invoke-virtual {v1, v8, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v3, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    invoke-direct {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;-><init>()V

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    const/high16 v3, 0x430c0000    # 140.0f

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v2

    invoke-virtual {v1, v2, v14}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setSize(FF)V

    iget-object v2, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->g:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v3, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v3, v3, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v3, v10}, Lcom/prineside/tdi2/managers/AssetManager;->getDrawable(Ljava/lang/String;)Lcom/badlogic/gdx/scenes/scene2d/utils/TextureRegionDrawable;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Image;-><init>(Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->size(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    move-result-object v2

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;->padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    new-instance v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    sget-object v5, Lcom/prineside/tdi2/Item$D;->LUCKY_SHOT_TOKEN:Lcom/prineside/tdi2/items/LuckyShotTokenItem;

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/ProgressManager;->getItemsCount(Lcom/prineside/tdi2/Item;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v4, v4, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const/16 v5, 0x1e

    invoke-virtual {v4, v5}, Lcom/prineside/tdi2/managers/AssetManager;->getLabelStyle(I)Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Label;-><init>(Ljava/lang/CharSequence;Lcom/badlogic/gdx/scenes/scene2d/ui/Label$LabelStyle;)V

    const v3, 0x3f47ae14    # 0.78f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4, v4, v4, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(FFFF)V

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Lcom/badlogic/gdx/scenes/scene2d/ui/Cell;

    :cond_7
    :goto_4
    const/4 v2, 0x0

    :goto_5
    if-eqz v2, :cond_8

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->j:Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    goto :goto_6

    :cond_8
    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->j:Lcom/badlogic/gdx/scenes/scene2d/Group;

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    iget-object v1, v0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->k:Lcom/badlogic/gdx/scenes/scene2d/ui/Image;

    sget-object v2, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P600:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    :goto_6
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x40400000    # 3.0f
        0x42a00000    # 80.0f
        0x433d0000    # 189.0f
        0x429a0000    # 77.0f
        0x43400000    # 192.0f
        0x40400000    # 3.0f
    .end array-data

    :array_1
    .array-data 4
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x0
        0x429a0000    # 77.0f
        0x43400000    # 192.0f
        0x42a00000    # 80.0f
        0x433d0000    # 189.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x40400000    # 3.0f
        0x40400000    # 3.0f
        0x0
        0x429a0000    # 77.0f
        0x43400000    # 192.0f
        0x42a00000    # 80.0f
        0x433d0000    # 189.0f
        0x0
    .end array-data
.end method

.method public final v()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->m:Lcom/badlogic/gdx/utils/Array;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v2, v5, :cond_0

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;

    aget-object v4, v4, v2

    invoke-static {v4}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->q(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    move-result-object v4

    iget v4, v4, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->chance:F

    add-float/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/high16 v2, 0x43b40000    # 360.0f

    div-float v3, v2, v3

    :goto_1
    iget-object v4, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->m:Lcom/badlogic/gdx/utils/Array;

    iget v5, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v5, :cond_1

    iget-object v4, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v4, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;

    aget-object v4, v4, v0

    invoke-static {v4}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->q(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;)Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;

    move-result-object v5

    iget v5, v5, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOption;->chance:F

    mul-float v5, v5, v3

    add-float/2addr v5, v1

    invoke-static {v4, v1}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->d(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;F)F

    invoke-static {v4, v5}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->f(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;F)F

    add-float/2addr v1, v5

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float v1, v1, v6

    invoke-static {v4, v1}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->p(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;F)F

    add-int/lit8 v0, v0, 0x1

    move v1, v5

    goto :goto_1

    :cond_1
    iget-object v0, v4, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;

    add-int/lit8 v5, v5, -0x1

    aget-object v0, v0, v5

    invoke-static {v0, v2}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;->f(Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay$WheelOptionConfig;F)F

    return-void
.end method

.method public final w(F)V
    .locals 5

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/ProgressManager;->isLuckyWheelSpinAvailable()Z

    move-result v0

    const-string v1, "LuckyWheelOverlay"

    if-nez v0, :cond_0

    const-string p1, "spin not available"

    invoke-static {v1, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "spin"

    invoke-static {v1, v0}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/prineside/tdi2/managers/ProgressManager;->luckyWheelSpinInProgress:Z

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/prineside/tdi2/managers/ProgressManager;->luckyWheelSpinAvailable:Z

    iput-boolean v1, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->o:Z

    iget v2, v0, Lcom/prineside/tdi2/managers/ProgressManager;->luckyWheelLastRotation:F

    iput v2, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->q:F

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float v3, v3, p1

    float-to-int v3, v3

    add-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    const/high16 v4, 0x43b40000    # 360.0f

    mul-float v3, v3, v4

    add-float/2addr v2, v3

    iget-object v0, v0, Lcom/prineside/tdi2/managers/ProgressManager;->luckyWheelSpinRandom:Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v0

    mul-float v0, v0, v4

    add-float/2addr v2, v0

    iput v2, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->p:F

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget v2, v0, Lcom/prineside/tdi2/managers/ProgressManager;->luckyWheelLastWeaponAngle:F

    iput v2, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->s:F

    const/high16 v3, 0x40400000    # 3.0f

    mul-float p1, p1, v3

    float-to-int v3, p1

    add-int/2addr v3, v1

    int-to-float v1, v3

    mul-float v1, v1, v4

    sub-float/2addr v2, v1

    iget-object v0, v0, Lcom/prineside/tdi2/managers/ProgressManager;->luckyWheelSpinRandom:Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v0

    mul-float v0, v0, v4

    sub-float/2addr v2, v0

    iput v2, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->r:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->u:F

    const/high16 v0, 0x40200000    # 2.5f

    invoke-static {}, Ljava/lang/StrictMath;->random()D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    add-float/2addr v1, v0

    add-float/2addr v1, p1

    iput v1, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->t:F

    sget-object p1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object p1, p1, Lcom/prineside/tdi2/Game;->progressManager:Lcom/prineside/tdi2/managers/ProgressManager;

    iget v0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->p:F

    iput v0, p1, Lcom/prineside/tdi2/managers/ProgressManager;->luckyWheelLastRotation:F

    iget v0, p0, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->r:F

    iput v0, p1, Lcom/prineside/tdi2/managers/ProgressManager;->luckyWheelLastWeaponAngle:F

    invoke-virtual {p0}, Lcom/prineside/tdi2/ui/shared/LuckyWheelOverlay;->u()V

    return-void
.end method
