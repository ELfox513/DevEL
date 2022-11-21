.class public Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/maps/tiled/TiledMapTile;


# static fields
.field public static h:J

.field public static final i:J


# instance fields
.field public a:I

.field public b:Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

.field public c:Lcom/badlogic/gdx/maps/MapProperties;

.field public d:Lcom/badlogic/gdx/maps/MapObjects;

.field public e:[Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;

.field public f:[I

.field public g:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    sput-wide v0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->i:J

    return-void
.end method

.method public constructor <init>(FLcom/badlogic/gdx/utils/Array;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;->ALPHA:Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->b:Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

    iget v0, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    new-array v1, v0, [Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;

    iput-object v1, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->e:[Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    mul-int v1, v0, p1

    iput v1, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->g:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->f:[I

    const/4 v0, 0x0

    :goto_0
    iget v1, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->e:[Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->f:[I

    aput p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/IntArray;Lcom/badlogic/gdx/utils/Array;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/IntArray;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;->ALPHA:Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->b:Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

    iget v0, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    new-array v0, v0, [Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->e:[Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/IntArray;->toArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->f:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->g:I

    :goto_0
    iget v1, p1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->e:[Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;

    aput-object v2, v1, v0

    iget v1, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->g:I

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->g:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static updateAnimationBaseTime()V
    .locals 4

    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    sget-wide v2, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->i:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->h:J

    return-void
.end method


# virtual methods
.method public getAnimationIntervals()[I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->f:[I

    return-object v0
.end method

.method public getBlendMode()Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->b:Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

    return-object v0
.end method

.method public getCurrentFrame()Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->e:[Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;

    invoke-virtual {p0}, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->getCurrentFrameIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getCurrentFrameIndex()I
    .locals 4

    sget-wide v0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->h:J

    iget v2, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->g:I

    int-to-long v2, v2

    rem-long/2addr v0, v2

    long-to-int v1, v0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->f:[I

    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget v2, v2, v0

    if-gt v1, v2, :cond_0

    return v0

    :cond_0
    sub-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Could not determine current animation frame in AnimatedTiledMapTile.  This should never happen."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public getFrameTiles()[Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->e:[Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->a:I

    return v0
.end method

.method public getObjects()Lcom/badlogic/gdx/maps/MapObjects;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->d:Lcom/badlogic/gdx/maps/MapObjects;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/maps/MapObjects;

    invoke-direct {v0}, Lcom/badlogic/gdx/maps/MapObjects;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->d:Lcom/badlogic/gdx/maps/MapObjects;

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->d:Lcom/badlogic/gdx/maps/MapObjects;

    return-object v0
.end method

.method public getOffsetX()F
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->getCurrentFrame()Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v0

    invoke-interface {v0}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getOffsetX()F

    move-result v0

    return v0
.end method

.method public getOffsetY()F
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->getCurrentFrame()Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v0

    invoke-interface {v0}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getOffsetY()F

    move-result v0

    return v0
.end method

.method public getProperties()Lcom/badlogic/gdx/maps/MapProperties;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->c:Lcom/badlogic/gdx/maps/MapProperties;

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/maps/MapProperties;

    invoke-direct {v0}, Lcom/badlogic/gdx/maps/MapProperties;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->c:Lcom/badlogic/gdx/maps/MapProperties;

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->c:Lcom/badlogic/gdx/maps/MapProperties;

    return-object v0
.end method

.method public getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->getCurrentFrame()Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v0

    invoke-interface {v0}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public setAnimationIntervals([I)V
    .locals 3

    array-length v0, p1

    iget-object v1, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->f:[I

    array-length v1, v1

    if-ne v0, v1, :cond_1

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->f:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->g:I

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->g:I

    aget v2, p1, v0

    add-int/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->g:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " frame intervals. The given int[] must have a size of "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->f:[I

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public setBlendMode(Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->b:Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->a:I

    return-void
.end method

.method public setOffsetX(F)V
    .locals 1

    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "Cannot set offset of AnimatedTiledMapTile."

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOffsetY(F)V
    .locals 1

    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "Cannot set offset of AnimatedTiledMapTile."

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTextureRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 1

    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "Cannot set the texture region of AnimatedTiledMapTile."

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
