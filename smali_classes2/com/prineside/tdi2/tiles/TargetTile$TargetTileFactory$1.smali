.class Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory$1;
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

.field public final synthetic d:Lcom/prineside/tdi2/enums/GameValueType;

.field public final synthetic k:Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory;FLcom/prineside/tdi2/tiles/TargetTile;Lcom/prineside/tdi2/enums/GameValueType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory$1;->k:Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory;

    iput p2, p0, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory$1;->a:F

    iput-object p3, p0, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory$1;->b:Lcom/prineside/tdi2/tiles/TargetTile;

    iput-object p4, p0, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory$1;->d:Lcom/prineside/tdi2/enums/GameValueType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget v0, p0, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory$1;->a:F

    const/high16 v1, 0x40400000    # 3.0f

    mul-float v0, v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->round(F)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory$1;->b:Lcom/prineside/tdi2/tiles/TargetTile;

    invoke-static {v1}, Lcom/prineside/tdi2/tiles/TargetTile;->f(Lcom/prineside/tdi2/tiles/TargetTile;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    new-instance v8, Lcom/prineside/tdi2/GameValueConfig;

    iget-object v3, p0, Lcom/prineside/tdi2/tiles/TargetTile$TargetTileFactory$1;->d:Lcom/prineside/tdi2/enums/GameValueType;

    int-to-double v4, v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/prineside/tdi2/GameValueConfig;-><init>(Lcom/prineside/tdi2/enums/GameValueType;DZZ)V

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-void
.end method
