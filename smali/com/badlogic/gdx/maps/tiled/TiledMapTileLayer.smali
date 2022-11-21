.class public Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;
.super Lcom/badlogic/gdx/maps/MapLayer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;
    }
.end annotation


# instance fields
.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:[[Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/maps/MapLayer;-><init>()V

    iput p1, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->l:I

    iput p2, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->m:I

    iput p3, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->n:I

    iput p4, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->o:I

    const/4 p3, 0x2

    new-array p3, p3, [I

    const/4 p4, 0x1

    aput p2, p3, p4

    const/4 p2, 0x0

    aput p1, p3, p2

    const-class p1, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    invoke-static {p1, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->p:[[Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    return-void
.end method


# virtual methods
.method public getCell(II)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    iget v1, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->l:I

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p2, :cond_2

    iget v1, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->m:I

    if-lt p2, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->p:[[Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    aget-object p1, v0, p1

    aget-object p1, p1, p2

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->m:I

    return v0
.end method

.method public getTileHeight()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->o:I

    return v0
.end method

.method public getTileWidth()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->n:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->l:I

    return v0
.end method

.method public setCell(IILcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;)V
    .locals 1

    if-ltz p1, :cond_2

    iget v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->l:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p2, :cond_2

    iget v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->m:I

    if-lt p2, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->p:[[Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    aget-object p1, v0, p1

    aput-object p3, p1, p2

    :cond_2
    :goto_0
    return-void
.end method
