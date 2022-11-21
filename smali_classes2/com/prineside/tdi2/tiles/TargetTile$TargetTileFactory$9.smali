.class Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory$9;
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
.field public final synthetic a:Lcom/badlogic/gdx/math/RandomXS128;

.field public final synthetic b:Lcom/prineside/tdi2/tiles/TargetTile;

.field public final synthetic d:F

.field public final synthetic k:Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory;Lcom/badlogic/gdx/math/RandomXS128;Lcom/prineside/tdi2/tiles/TargetTile;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory$9;->k:Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory;

    iput-object p2, p0, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory$9;->a:Lcom/badlogic/gdx/math/RandomXS128;

    iput-object p3, p0, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory$9;->b:Lcom/prineside/tdi2/tiles/TargetTile;

    iput p4, p0, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory$9;->d:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory$9;->a:Lcom/badlogic/gdx/math/RandomXS128;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/RandomXS128;->nextFloat()F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory$9;->b:Lcom/prineside/tdi2/tiles/TargetTile;

    invoke-static {v0}, Lcom/prineside/tdi2/tiles/TargetTile;->f(Lcom/prineside/tdi2/tiles/TargetTile;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    new-instance v7, Lcom/prineside/tdi2/GameValueConfig;

    sget-object v2, Lcom/prineside/tdi2/enums/GameValueType;->STARTING_HEALTH:Lcom/prineside/tdi2/enums/GameValueType;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/prineside/tdi2/GameValueConfig;-><init>(Lcom/prineside/tdi2/enums/GameValueType;DZZ)V

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory$9;->d:F

    const/high16 v1, 0x3e800000    # 0.25f

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f400000    # 0.75f

    div-float/2addr v0, v1

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float v0, v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v0

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    if-ge v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory$9;->b:Lcom/prineside/tdi2/tiles/TargetTile;

    invoke-static {v0}, Lcom/prineside/tdi2/tiles/TargetTile;->f(Lcom/prineside/tdi2/tiles/TargetTile;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    new-instance v8, Lcom/prineside/tdi2/GameValueConfig;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->STARTING_HEALTH:Lcom/prineside/tdi2/enums/GameValueType;

    int-to-double v4, v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/prineside/tdi2/GameValueConfig;-><init>(Lcom/prineside/tdi2/enums/GameValueType;DZZ)V

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method
