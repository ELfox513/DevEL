.class Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory;->createRandom(FLcom/badlogic/gdx/math/RandomXS128;)Lcom/prineside/tdi2/tiles/TargetTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:F

.field public final synthetic b:Lcom/prineside/tdi2/tiles/TargetTile;

.field public final synthetic d:Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory;FLcom/prineside/tdi2/tiles/TargetTile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory$6;->d:Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory;

    iput p2, p0, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory$6;->a:F

    iput-object p3, p0, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory$6;->b:Lcom/prineside/tdi2/tiles/TargetTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    iget v0, p0, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory$6;->a:F

    const/high16 v1, 0x3e800000    # 0.25f

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f400000    # 0.75f

    div-float/2addr v0, v1

    const/high16 v1, 0x40400000    # 3.0f

    mul-float v0, v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    move-wide v7, v2

    goto :goto_0

    :cond_0
    move-wide v7, v0

    :goto_0
    iget-object v0, p0, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory$6;->b:Lcom/prineside/tdi2/tiles/TargetTile;

    invoke-static {v0}, Lcom/prineside/tdi2/tiles/TargetTile;->f(Lcom/prineside/tdi2/tiles/TargetTile;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    new-instance v1, Lcom/prineside/tdi2/GameValueConfig;

    sget-object v6, Lcom/prineside/tdi2/enums/GameValueType;->TOWERS_EXPERIENCE_GENERATION:Lcom/prineside/tdi2/enums/GameValueType;

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/prineside/tdi2/GameValueConfig;-><init>(Lcom/prineside/tdi2/enums/GameValueType;DZZ)V

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-void
.end method
