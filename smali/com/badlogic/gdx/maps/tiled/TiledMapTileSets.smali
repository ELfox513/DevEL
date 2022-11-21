.class public Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;->a:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method


# virtual methods
.method public addTileSet(Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public getTile(I)Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;->a:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->getTile(I)Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTileSet(I)Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;

    return-object p1
.end method

.method public getTileSet(Ljava/lang/String;)Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;

    invoke-virtual {v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    return-object v0
.end method

.method public removeTileSet(I)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;->a:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    return-void
.end method

.method public removeTileSet(Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;->a:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    return-void
.end method
