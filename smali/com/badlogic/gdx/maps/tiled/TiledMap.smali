.class public Lcom/badlogic/gdx/maps/tiled/TiledMap;
.super Lcom/badlogic/gdx/maps/Map;
.source "SourceFile"


# instance fields
.field public d:Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;

.field public k:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "+",
            "Lcom/badlogic/gdx/utils/Disposable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/badlogic/gdx/maps/Map;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;

    invoke-direct {v0}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMap;->d:Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMap;->k:Lcom/badlogic/gdx/utils/Array;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/Disposable;

    invoke-interface {v1}, Lcom/badlogic/gdx/utils/Disposable;->dispose()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getTileSets()Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TiledMap;->d:Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;

    return-object v0
.end method

.method public setOwnedResources(Lcom/badlogic/gdx/utils/Array;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "+",
            "Lcom/badlogic/gdx/utils/Disposable;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/TiledMap;->k:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method
