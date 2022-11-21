.class Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory$5;
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

    iput-object p1, p0, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory$5;->d:Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory;

    iput p2, p0, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory$5;->a:F

    iput-object p3, p0, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory$5;->b:Lcom/prineside/tdi2/tiles/TargetTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget v0, p0, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory$5;->a:F

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v0, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    mul-float v0, v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v0

    const/4 v1, 0x5

    mul-int/lit8 v0, v0, 0x5

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory$5;->b:Lcom/prineside/tdi2/tiles/TargetTile;

    invoke-static {v0}, Lcom/prineside/tdi2/tiles/TargetTile;->f(Lcom/prineside/tdi2/tiles/TargetTile;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    new-instance v8, Lcom/prineside/tdi2/GameValueConfig;

    sget-object v3, Lcom/prineside/tdi2/enums/GameValueType;->TOWERS_EXPERIENCE_MULTIPLIER:Lcom/prineside/tdi2/enums/GameValueType;

    int-to-double v4, v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/prineside/tdi2/GameValueConfig;-><init>(Lcom/prineside/tdi2/enums/GameValueType;DZZ)V

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-void
.end method
