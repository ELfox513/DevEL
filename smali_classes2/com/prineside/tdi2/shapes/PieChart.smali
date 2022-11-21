.class public Lcom/prineside/tdi2/shapes/PieChart;
.super Lcom/prineside/tdi2/Shape;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;,
        Lcom/prineside/tdi2/shapes/PieChart$PieChartFactory;
    }
.end annotation


# static fields
.field public static final A:Lcom/badlogic/gdx/math/Vector2;

.field public static final B:Lcom/badlogic/gdx/math/Vector2;

.field public static final C:Lcom/badlogic/gdx/math/Vector2;

.field public static final D:Lcom/badlogic/gdx/math/Vector2;

.field public static final E:Lcom/badlogic/gdx/graphics/Color;

.field public static final y:Lcom/badlogic/gdx/math/Vector2;

.field public static final z:Lcom/badlogic/gdx/math/Vector2;


# instance fields
.field public a:[F

.field public angleShiftRad:F

.field public b:I

.field public d:I

.field public innerRadius:F

.field public k:F

.field public p:F

.field public q:F

.field public r:I

.field public rotationDirection:F

.field public s:Z

.field public t:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;",
            ">;"
        }
    .end annotation
.end field

.field public final u:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public v:F

.field public w:F

.field public x:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/shapes/PieChart;->y:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/shapes/PieChart;->z:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/shapes/PieChart;->A:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/shapes/PieChart;->B:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/shapes/PieChart;->C:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/shapes/PieChart;->D:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    sput-object v0, Lcom/prineside/tdi2/shapes/PieChart;->E:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/prineside/tdi2/Shape;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/prineside/tdi2/shapes/PieChart;->a:[F

    const/4 v1, 0x0

    iput v1, p0, Lcom/prineside/tdi2/shapes/PieChart;->innerRadius:F

    iput v1, p0, Lcom/prineside/tdi2/shapes/PieChart;->angleShiftRad:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/prineside/tdi2/shapes/PieChart;->rotationDirection:F

    iput-boolean v0, p0, Lcom/prineside/tdi2/shapes/PieChart;->x:Z

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    invoke-virtual {v0}, Lcom/prineside/tdi2/managers/AssetManager;->getBlankWhiteTextureRegion()Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/shapes/PieChart;->u:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v1

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v2

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v1, v1, v4

    add-float/2addr v3, v1

    iput v3, p0, Lcom/prineside/tdi2/shapes/PieChart;->v:F

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v0

    mul-float v2, v2, v4

    add-float/2addr v0, v2

    iput v0, p0, Lcom/prineside/tdi2/shapes/PieChart;->w:F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/shapes/PieChart$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/shapes/PieChart;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/prineside/tdi2/shapes/PieChart;->t:Lcom/badlogic/gdx/utils/Array;

    if-eqz v1, :cond_12

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v1, :cond_0

    goto/16 :goto_a

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    iget-object v6, v0, Lcom/prineside/tdi2/shapes/PieChart;->t:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v6, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    iget v6, v6, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;->value:F

    add-float/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    cmpg-float v4, v5, v3

    if-lez v4, :cond_10

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_10

    invoke-static {v5}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_8

    :cond_2
    iget-object v4, v0, Lcom/prineside/tdi2/shapes/PieChart;->t:Lcom/badlogic/gdx/utils/Array;

    iget v4, v4, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v6, v4, :cond_4

    iget-object v8, v0, Lcom/prineside/tdi2/shapes/PieChart;->t:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v8, v6}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    iget v9, v8, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;->value:F

    cmpg-float v10, v9, v3

    if-ltz v10, :cond_3

    div-float/2addr v9, v5

    iget v10, v0, Lcom/prineside/tdi2/shapes/PieChart;->d:I

    int-to-float v10, v10

    mul-float v9, v9, v10

    invoke-static {v9}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v9

    invoke-static {v8, v9}, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;->b(Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;I)I

    invoke-static {v8}, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;->a(Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;)I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Config #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " value must be >= 0, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;->value:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " given"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    mul-int/lit8 v4, v7, 0x14

    iput v4, v0, Lcom/prineside/tdi2/shapes/PieChart;->b:I

    iget v5, v0, Lcom/prineside/tdi2/shapes/PieChart;->r:I

    if-eqz v5, :cond_5

    iget-object v5, v0, Lcom/prineside/tdi2/shapes/PieChart;->t:Lcom/badlogic/gdx/utils/Array;

    iget v5, v5, Lcom/badlogic/gdx/utils/Array;->size:I

    mul-int/lit8 v5, v5, 0x2

    mul-int/lit8 v5, v5, 0x14

    add-int/2addr v4, v5

    iput v4, v0, Lcom/prineside/tdi2/shapes/PieChart;->b:I

    :cond_5
    iget-object v4, v0, Lcom/prineside/tdi2/shapes/PieChart;->a:[F

    array-length v4, v4

    iget v5, v0, Lcom/prineside/tdi2/shapes/PieChart;->b:I

    if-ge v4, v5, :cond_6

    invoke-static {v5}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v4

    new-array v4, v4, [F

    iput-object v4, v0, Lcom/prineside/tdi2/shapes/PieChart;->a:[F

    :cond_6
    const v4, 0x40c90fdb

    int-to-float v5, v7

    div-float/2addr v4, v5

    iget v5, v0, Lcom/prineside/tdi2/shapes/PieChart;->r:I

    invoke-static {v5}, Ljava/lang/StrictMath;->abs(I)I

    move-result v5

    iget-object v6, v0, Lcom/prineside/tdi2/shapes/PieChart;->t:Lcom/badlogic/gdx/utils/Array;

    iget v6, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_2
    if-ge v7, v6, :cond_f

    iget-object v9, v0, Lcom/prineside/tdi2/shapes/PieChart;->t:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v9, v7}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    iget v10, v9, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;->segmentShift:F

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v10, v10, v3

    if-lez v10, :cond_7

    iget-object v10, v0, Lcom/prineside/tdi2/shapes/PieChart;->t:Lcom/badlogic/gdx/utils/Array;

    iget v10, v10, Lcom/badlogic/gdx/utils/Array;->size:I

    if-le v10, v1, :cond_7

    sget-object v10, Lcom/prineside/tdi2/shapes/PieChart;->D:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v10, v11, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v10

    invoke-static {v9}, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;->a(Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;)I

    move-result v12

    int-to-float v12, v12

    mul-float v12, v12, v4

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float v12, v12, v13

    int-to-float v13, v8

    mul-float v13, v13, v4

    add-float/2addr v12, v13

    invoke-virtual {v10, v12}, Lcom/badlogic/gdx/math/Vector2;->rotateRad(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v10

    iget v12, v9, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;->segmentShift:F

    invoke-virtual {v10, v12}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    goto :goto_3

    :cond_7
    sget-object v10, Lcom/prineside/tdi2/shapes/PieChart;->D:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v10, v3, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    :goto_3
    iget-object v10, v9, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v10

    sget-object v12, Lcom/prineside/tdi2/shapes/PieChart;->E:Lcom/badlogic/gdx/graphics/Color;

    iget-object v13, v9, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v12, v13}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v13

    const v14, 0x3f99999a    # 1.2f

    invoke-virtual {v13, v14, v14, v14, v11}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v13

    invoke-virtual {v13}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v13

    iget-object v14, v9, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v12, v14}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v14

    const v15, 0x3f4ccccd    # 0.8f

    invoke-virtual {v14, v15, v15, v15, v11}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v14

    invoke-virtual {v14}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v14

    iget-object v15, v9, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v12, v15}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v12

    invoke-virtual {v12, v11, v11, v11, v3}, Lcom/badlogic/gdx/graphics/Color;->mul(FFFF)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v12

    invoke-virtual {v12}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v12

    const/4 v15, 0x0

    :goto_4
    invoke-static {v9}, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;->a(Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;)I

    move-result v2

    if-ge v15, v2, :cond_e

    sget-object v2, Lcom/prineside/tdi2/shapes/PieChart;->C:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v2, v11, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    int-to-float v3, v8

    mul-float v3, v3, v4

    iget v11, v0, Lcom/prineside/tdi2/shapes/PieChart;->rotationDirection:F

    mul-float v3, v3, v11

    iget v11, v0, Lcom/prineside/tdi2/shapes/PieChart;->angleShiftRad:F

    add-float/2addr v3, v11

    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/math/Vector2;->rotateRad(F)Lcom/badlogic/gdx/math/Vector2;

    sget-object v1, Lcom/prineside/tdi2/shapes/PieChart;->z:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    iget v11, v0, Lcom/prineside/tdi2/shapes/PieChart;->q:F

    invoke-virtual {v3, v11}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    iget v11, v0, Lcom/prineside/tdi2/shapes/PieChart;->k:F

    move/from16 v16, v6

    iget v6, v0, Lcom/prineside/tdi2/shapes/PieChart;->p:F

    invoke-virtual {v3, v11, v6}, Lcom/badlogic/gdx/math/Vector2;->add(FF)Lcom/badlogic/gdx/math/Vector2;

    sget-object v3, Lcom/prineside/tdi2/shapes/PieChart;->y:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v6

    iget v11, v0, Lcom/prineside/tdi2/shapes/PieChart;->innerRadius:F

    invoke-virtual {v6, v11}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v6

    iget v11, v0, Lcom/prineside/tdi2/shapes/PieChart;->k:F

    move/from16 v17, v10

    iget v10, v0, Lcom/prineside/tdi2/shapes/PieChart;->p:F

    invoke-virtual {v6, v11, v10}, Lcom/badlogic/gdx/math/Vector2;->add(FF)Lcom/badlogic/gdx/math/Vector2;

    iget v6, v0, Lcom/prineside/tdi2/shapes/PieChart;->rotationDirection:F

    mul-float v6, v6, v4

    iget v10, v0, Lcom/prineside/tdi2/shapes/PieChart;->angleShiftRad:F

    add-float/2addr v6, v10

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/math/Vector2;->rotateRad(F)Lcom/badlogic/gdx/math/Vector2;

    sget-object v6, Lcom/prineside/tdi2/shapes/PieChart;->B:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v6, v2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v10

    iget v11, v0, Lcom/prineside/tdi2/shapes/PieChart;->q:F

    invoke-virtual {v10, v11}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v10

    iget v11, v0, Lcom/prineside/tdi2/shapes/PieChart;->k:F

    move/from16 v18, v4

    iget v4, v0, Lcom/prineside/tdi2/shapes/PieChart;->p:F

    invoke-virtual {v10, v11, v4}, Lcom/badlogic/gdx/math/Vector2;->add(FF)Lcom/badlogic/gdx/math/Vector2;

    sget-object v4, Lcom/prineside/tdi2/shapes/PieChart;->A:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/math/Vector2;->set(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    iget v10, v0, Lcom/prineside/tdi2/shapes/PieChart;->innerRadius:F

    invoke-virtual {v2, v10}, Lcom/badlogic/gdx/math/Vector2;->scl(F)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    iget v10, v0, Lcom/prineside/tdi2/shapes/PieChart;->k:F

    iget v11, v0, Lcom/prineside/tdi2/shapes/PieChart;->p:F

    invoke-virtual {v2, v10, v11}, Lcom/badlogic/gdx/math/Vector2;->add(FF)Lcom/badlogic/gdx/math/Vector2;

    mul-int/lit8 v2, v8, 0x14

    if-ge v15, v5, :cond_9

    iget v10, v0, Lcom/prineside/tdi2/shapes/PieChart;->r:I

    if-gez v10, :cond_8

    :goto_5
    const/4 v10, 0x0

    goto :goto_6

    :cond_8
    move v10, v13

    goto :goto_6

    :cond_9
    invoke-static {v9}, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;->a(Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;)I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    sub-int/2addr v10, v5

    if-le v15, v10, :cond_b

    iget v10, v0, Lcom/prineside/tdi2/shapes/PieChart;->r:I

    if-gez v10, :cond_a

    goto :goto_5

    :cond_a
    move v10, v14

    goto :goto_6

    :cond_b
    move/from16 v10, v17

    :goto_6
    iget-object v11, v0, Lcom/prineside/tdi2/shapes/PieChart;->a:[F

    move/from16 v19, v5

    iget v5, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    move-object/from16 v20, v9

    sget-object v9, Lcom/prineside/tdi2/shapes/PieChart;->D:Lcom/badlogic/gdx/math/Vector2;

    move/from16 v21, v12

    iget v12, v9, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v5, v12

    aput v5, v11, v2

    add-int/lit8 v5, v2, 0x1

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v9, v9, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v3, v9

    aput v3, v11, v5

    add-int/lit8 v3, v2, 0x2

    aput v10, v11, v3

    add-int/lit8 v3, v2, 0x3

    iget v5, v0, Lcom/prineside/tdi2/shapes/PieChart;->v:F

    aput v5, v11, v3

    add-int/lit8 v3, v2, 0x4

    move/from16 v22, v13

    iget v13, v0, Lcom/prineside/tdi2/shapes/PieChart;->w:F

    aput v13, v11, v3

    add-int/lit8 v3, v2, 0x5

    move/from16 v23, v14

    iget v14, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v14, v12

    aput v14, v11, v3

    add-int/lit8 v3, v2, 0x6

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v4, v9

    aput v4, v11, v3

    add-int/lit8 v3, v2, 0x7

    aput v10, v11, v3

    add-int/lit8 v3, v2, 0x8

    aput v5, v11, v3

    add-int/lit8 v3, v2, 0x9

    aput v13, v11, v3

    add-int/lit8 v3, v2, 0xa

    iget v4, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v4, v12

    aput v4, v11, v3

    add-int/lit8 v3, v2, 0xb

    iget v4, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v4, v9

    aput v4, v11, v3

    add-int/lit8 v3, v2, 0xc

    iget-boolean v4, v0, Lcom/prineside/tdi2/shapes/PieChart;->s:Z

    if-eqz v4, :cond_c

    move/from16 v6, v21

    goto :goto_7

    :cond_c
    move v6, v10

    :goto_7
    aput v6, v11, v3

    add-int/lit8 v3, v2, 0xd

    aput v5, v11, v3

    add-int/lit8 v3, v2, 0xe

    aput v13, v11, v3

    add-int/lit8 v3, v2, 0xf

    iget v6, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v6, v12

    aput v6, v11, v3

    add-int/lit8 v3, v2, 0x10

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v1, v9

    aput v1, v11, v3

    add-int/lit8 v1, v2, 0x11

    if-eqz v4, :cond_d

    move/from16 v10, v21

    :cond_d
    aput v10, v11, v1

    add-int/lit8 v1, v2, 0x12

    aput v5, v11, v1

    add-int/lit8 v2, v2, 0x13

    aput v13, v11, v2

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v15, v15, 0x1

    move/from16 v6, v16

    move/from16 v10, v17

    move/from16 v4, v18

    move/from16 v5, v19

    move-object/from16 v9, v20

    move/from16 v12, v21

    move/from16 v13, v22

    move/from16 v14, v23

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    goto/16 :goto_4

    :cond_e
    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v16, v6

    add-int/lit8 v7, v7, 0x1

    const/4 v1, 0x1

    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_f
    iput-boolean v1, v0, Lcom/prineside/tdi2/shapes/PieChart;->x:Z

    return-void

    :cond_10
    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid values sum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PieChart"

    invoke-static {v2, v1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/prineside/tdi2/shapes/PieChart;->t:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v1, :cond_11

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/prineside/tdi2/shapes/PieChart;->t:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;

    iget v5, v5, Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;->value:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_11
    const/4 v3, 0x0

    iput v3, v0, Lcom/prineside/tdi2/shapes/PieChart;->b:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/prineside/tdi2/shapes/PieChart;->x:Z

    :cond_12
    :goto_a
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 4

    iget-object v0, p0, Lcom/prineside/tdi2/shapes/PieChart;->t:Lcom/badlogic/gdx/utils/Array;

    if-eqz v0, :cond_3

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/prineside/tdi2/shapes/PieChart;->x:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/prineside/tdi2/shapes/PieChart;->a()V

    :cond_1
    iget v0, p0, Lcom/prineside/tdi2/shapes/PieChart;->b:I

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/prineside/tdi2/shapes/PieChart;->u:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    iget-object v1, p0, Lcom/prineside/tdi2/shapes/PieChart;->a:[F

    const/4 v2, 0x0

    iget v3, p0, Lcom/prineside/tdi2/shapes/PieChart;->b:I

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    :cond_3
    :goto_0
    return-void
.end method

.method public free()V
    .locals 1

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->shapeManager:Lcom/prineside/tdi2/managers/ShapeManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/ShapeManager;->F:Lcom/prineside/tdi2/managers/ShapeManager$Factories;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/ShapeManager$Factories;->PIE_CHART:Lcom/prineside/tdi2/shapes/PieChart$PieChartFactory;

    invoke-virtual {v0, p0}, Lcom/prineside/tdi2/Shape$Factory;->free(Lcom/prineside/tdi2/Shape;)V

    return-void
.end method

.method public getX()F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/shapes/PieChart;->k:F

    return v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/shapes/PieChart;->p:F

    return v0
.end method

.method public requestVerticesRebuild()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/prineside/tdi2/shapes/PieChart;->x:Z

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/shapes/PieChart;->t:Lcom/badlogic/gdx/utils/Array;

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/shapes/PieChart;->r:I

    iput-boolean v0, p0, Lcom/prineside/tdi2/shapes/PieChart;->x:Z

    iput-boolean v0, p0, Lcom/prineside/tdi2/shapes/PieChart;->s:Z

    return-void
.end method

.method public setFadeToOut(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/prineside/tdi2/shapes/PieChart;->s:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/prineside/tdi2/shapes/PieChart;->x:Z

    return-void
.end method

.method public setShadowSegments(I)V
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/shapes/PieChart;->r:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/prineside/tdi2/shapes/PieChart;->x:Z

    return-void
.end method

.method public setup(FFFILcom/badlogic/gdx/utils/Array;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFI",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/prineside/tdi2/shapes/PieChart$ChartEntryConfig;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    if-lt p4, v0, :cond_0

    iput p4, p0, Lcom/prineside/tdi2/shapes/PieChart;->d:I

    iput p1, p0, Lcom/prineside/tdi2/shapes/PieChart;->k:F

    iput p2, p0, Lcom/prineside/tdi2/shapes/PieChart;->p:F

    iput p3, p0, Lcom/prineside/tdi2/shapes/PieChart;->q:F

    iput-object p5, p0, Lcom/prineside/tdi2/shapes/PieChart;->t:Lcom/badlogic/gdx/utils/Array;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/prineside/tdi2/shapes/PieChart;->x:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Min segment count is 3, "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " given"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
