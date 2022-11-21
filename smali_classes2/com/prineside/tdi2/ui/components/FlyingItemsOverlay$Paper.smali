.class public Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;
.super Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/PooledCustomEffect;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Paper"
.end annotation


# instance fields
.field public A:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public B:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public C:F

.field public D:F

.field public pool:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;",
            ">;"
        }
    .end annotation
.end field

.field public r:Lcom/badlogic/gdx/math/Vector2;

.field public s:Lcom/badlogic/gdx/math/Vector2;

.field public t:F

.field public u:F

.field public v:F

.field public w:F

.field public x:F

.field public y:F

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/ParticleEffect;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->r:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->s:Lcom/badlogic/gdx/math/Vector2;

    const/4 v0, -0x1

    iput v0, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->z:I

    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v0, v0, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/AssetManager;->TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    iget-object v0, v0, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->flyingPaper1_1:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    iput-object v0, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->A:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput-object v0, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->B:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-void
.end method


# virtual methods
.method public allowCompletion()V
    .locals 0

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 11

    iget-object v1, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->A:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->r:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    const/high16 v3, 0x42000000    # 32.0f

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->s:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v2, v4

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v4, 0x41800000    # 16.0f

    sub-float/2addr v0, v4

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v3, v0

    iget v8, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->w:F

    iget v9, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->x:F

    iget v10, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->y:F

    const/high16 v4, 0x42000000    # 32.0f

    const/high16 v5, 0x41800000    # 16.0f

    const/high16 v6, 0x42800000    # 64.0f

    const/high16 v7, 0x42000000    # 32.0f

    move-object v0, p1

    invoke-interface/range {v0 .. v10}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFFFFFF)V

    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->update(F)V

    invoke-virtual {p0, p1}, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    return-void
.end method

.method public free()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->pool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    return-void
.end method

.method public isComplete()Z
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->C:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->r:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector2;->setZero()Lcom/badlogic/gdx/math/Vector2;

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->s:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector2;->setZero()Lcom/badlogic/gdx/math/Vector2;

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->t:F

    iput v0, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->v:F

    iput v0, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->w:F

    iput v0, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->x:F

    iput v0, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->y:F

    return-void
.end method

.method public setPosition(FF)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->r:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public setup(I)V
    .locals 9

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float v0, v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->C:F

    iget v2, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->z:I

    if-eq p1, v2, :cond_3

    const/4 v2, 0x5

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq p1, v2, :cond_2

    const/16 v2, 0x14

    if-eq p1, v2, :cond_1

    const/16 v2, 0x64

    if-eq p1, v2, :cond_0

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->B:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    iget-object v7, v7, Lcom/prineside/tdi2/managers/AssetManager;->TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    iget-object v8, v7, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->flyingPaper1_1:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    aput-object v8, v2, v6

    iget-object v6, v7, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->flyingPaper1_2:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    aput-object v6, v2, v5

    iget-object v5, v7, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->flyingPaper1_3:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    aput-object v5, v2, v4

    iget-object v4, v7, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->flyingPaper1_4:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    aput-object v4, v2, v3

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v0, v0, v2

    iput v0, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->C:F

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->B:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v2, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v2, v2, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    iget-object v2, v2, Lcom/prineside/tdi2/managers/AssetManager;->TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    iget-object v7, v2, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->flyingPaper100_1:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    aput-object v7, v0, v6

    iget-object v6, v2, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->flyingPaper1_2:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    aput-object v6, v0, v5

    iget-object v5, v2, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->flyingPaper1_3:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    aput-object v5, v0, v4

    iget-object v2, v2, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->flyingPaper1_4:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    aput-object v2, v0, v3

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->B:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    iget-object v7, v7, Lcom/prineside/tdi2/managers/AssetManager;->TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    iget-object v8, v7, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->flyingPaper20_1:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    aput-object v8, v2, v6

    iget-object v6, v7, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->flyingPaper1_2:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    aput-object v6, v2, v5

    iget-object v5, v7, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->flyingPaper1_3:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    aput-object v5, v2, v4

    iget-object v4, v7, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->flyingPaper1_4:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    aput-object v4, v2, v3

    const v2, 0x3f59999a    # 0.85f

    mul-float v0, v0, v2

    iput v0, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->C:F

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->B:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    sget-object v7, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v7, v7, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    iget-object v7, v7, Lcom/prineside/tdi2/managers/AssetManager;->TR:Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;

    iget-object v8, v7, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->flyingPaper5_1:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    aput-object v8, v2, v6

    iget-object v6, v7, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->flyingPaper1_2:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    aput-object v6, v2, v5

    iget-object v5, v7, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->flyingPaper1_3:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    aput-object v5, v2, v4

    iget-object v4, v7, Lcom/prineside/tdi2/managers/AssetManager$TextureRegions;->flyingPaper1_4:Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    aput-object v4, v2, v3

    const v2, 0x3f19999a    # 0.6f

    mul-float v0, v0, v2

    iput v0, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->C:F

    :goto_0
    iput p1, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->z:I

    :cond_3
    const/4 p1, 0x0

    iput p1, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->D:F

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result p1

    mul-float p1, p1, v1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->u:F

    const/high16 p1, 0x42dc0000    # 110.0f

    invoke-static {}, Lcom/prineside/tdi2/utils/FastRandom;->getFloat()F

    move-result v0

    const/high16 v1, 0x43160000    # 150.0f

    mul-float v0, v0, v1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->v:F

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public update(F)V
    .locals 8

    iget v0, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->D:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v2, v0, v1

    const/high16 v3, 0x40400000    # 3.0f

    mul-float v0, v0, v3

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v2, v3

    if-lez v4, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_0
    cmpl-float v4, v0, v3

    if-lez v4, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_1
    sget-object v4, Lcom/badlogic/gdx/math/Interpolation;->swingOut:Lcom/badlogic/gdx/math/Interpolation$SwingOut;

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/math/Interpolation$SwingOut;->apply(F)F

    move-result v2

    iput v2, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->w:F

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/math/Interpolation$SwingOut;->apply(F)F

    move-result v0

    iput v0, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->x:F

    iget v0, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->v:F

    const/high16 v2, 0x43340000    # 180.0f

    mul-float v2, v2, p1

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->v:F

    const/high16 v2, -0x3ccc0000    # -180.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    iput v2, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->v:F

    :cond_2
    iget v0, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->C:F

    mul-float v0, v0, v1

    iget v1, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->u:F

    const v2, 0x40490fdb    # (float)Math.PI

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->D:F

    add-float/2addr v3, v1

    const/high16 v2, 0x3fc00000    # 1.5f

    cmpl-float v4, v3, v2

    if-lez v4, :cond_3

    const/high16 v3, 0x3fc00000    # 1.5f

    :cond_3
    iget v2, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->u:F

    const v4, 0x3dcccccd    # 0.1f

    mul-float v5, v2, v4

    add-float/2addr v3, v5

    const/high16 v5, 0x42700000    # 60.0f

    mul-float v5, v5, v0

    mul-float v5, v5, v3

    iput v5, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->t:F

    iget-object v6, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->s:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v5, v5, p1

    add-float/2addr v7, v5

    mul-float v2, v2, p1

    const/high16 v5, 0x42480000    # 50.0f

    mul-float v2, v2, v5

    add-float/2addr v7, v2

    iput v7, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v5, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->v:F

    mul-float v5, v5, p1

    add-float/2addr v2, v5

    iput v2, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/high16 v2, 0x41400000    # 12.0f

    mul-float v0, v0, v2

    mul-float v0, v0, v3

    iput v0, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->y:F

    iget v0, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->C:F

    const v2, 0x3e19999a    # 0.15f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->B:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->A:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    goto :goto_0

    :cond_4
    cmpl-float v2, v0, v4

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->B:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->A:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    goto :goto_0

    :cond_5
    const v2, 0x3d4ccccd    # 0.05f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_6

    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->B:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->A:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->B:[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->A:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    :goto_0
    sub-float/2addr v0, p1

    iput v0, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->C:F

    add-float/2addr v1, p1

    iput v1, p0, Lcom/prineside/tdi2/ui/components/FlyingItemsOverlay$Paper;->D:F

    return-void
.end method
