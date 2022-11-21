.class Lcom/prineside/tdi2/tiles/TargetTile$ExplosionInterpolation;
.super Lcom/badlogic/gdx/math/Interpolation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/tiles/TargetTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExplosionInterpolation"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/math/Interpolation;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/tiles/TargetTile$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/tiles/TargetTile$ExplosionInterpolation;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(F)F
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/math/Interpolation;->pow2In:Lcom/badlogic/gdx/math/Interpolation$PowIn;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Interpolation$PowIn;->apply(F)F

    move-result v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float v0, v0, v1

    sget-object v1, Lcom/badlogic/gdx/math/Interpolation;->pow5In:Lcom/badlogic/gdx/math/Interpolation$PowIn;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/math/Interpolation$PowIn;->apply(F)F

    move-result p1

    const v1, 0x3e99999a    # 0.3f

    mul-float p1, p1, v1

    add-float/2addr v0, p1

    return v0
.end method
