.class public Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;
.super Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasResolver;,
        Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader<",
        "Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;",
        ">;"
    }
.end annotation


# instance fields
.field public k:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/Texture;",
            ">;"
        }
    .end annotation
.end field

.field public l:Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasResolver;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/assets/loaders/resolvers/InternalFileHandleResolver;

    invoke-direct {v0}, Lcom/badlogic/gdx/assets/loaders/resolvers/InternalFileHandleResolver;-><init>()V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->k:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    new-instance p1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->k:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method


# virtual methods
.method public b(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/ImageResolver;Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/utils/Array;Ljava/lang/String;IIIIILjava/lang/String;IILjava/lang/String;IILcom/badlogic/gdx/files/FileHandle;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "Lcom/badlogic/gdx/maps/ImageResolver;",
            "Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;",
            "Lcom/badlogic/gdx/utils/XmlReader$Element;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/utils/XmlReader$Element;",
            ">;",
            "Ljava/lang/String;",
            "IIIII",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "II",
            "Lcom/badlogic/gdx/files/FileHandle;",
            ")V"
        }
    .end annotation

    move-object v6, p0

    move/from16 v7, p7

    move/from16 v8, p13

    move/from16 v9, p14

    move-object/from16 v0, p15

    iget-object v1, v6, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->l:Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasResolver;

    invoke-interface {v1}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasResolver;->getAtlas()Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    move-result-object v10

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->getTextures()Lcom/badlogic/gdx/utils/ObjectSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ObjectSet;->iterator()Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/Texture;

    iget-object v3, v6, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->k:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v1

    const-string v2, "imagesource"

    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static/range {p16 .. p16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "imagewidth"

    invoke-virtual {v1, v3, v2}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static/range {p17 .. p17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "imageheight"

    invoke-virtual {v1, v3, v2}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "tilewidth"

    invoke-virtual {v1, v3, v2}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "tileheight"

    invoke-virtual {v1, v3, v2}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "margin"

    invoke-virtual {v1, v3, v2}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "spacing"

    invoke-virtual {v1, v3, v2}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v0, :cond_2

    invoke-virtual/range {p15 .. p15}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    div-int v0, p16, p8

    div-int v1, p17, p9

    mul-int v0, v0, v1

    add-int/2addr v0, v7

    add-int/lit8 v11, v0, -0x1

    move-object/from16 v0, p6

    invoke-virtual {v10, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->findRegions(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v12

    :cond_1
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    if-eqz v2, :cond_1

    iget v0, v2, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;->index:I

    add-int v3, v7, v0

    if-lt v3, v7, :cond_1

    if-gt v3, v11, :cond_1

    int-to-float v4, v8

    int-to-float v5, v9

    move-object v0, p0

    move-object/from16 v1, p3

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->a(Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IFF)V

    goto :goto_1

    :cond_2
    invoke-virtual/range {p5 .. p5}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v11

    :cond_3
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/XmlReader$Element;

    const-string v1, "id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v1

    add-int v3, v7, v1

    move-object/from16 v12, p3

    invoke-virtual {v12, v3}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->getTile(I)Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, "image"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v1, "source"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->findRegion(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$AtlasRegion;

    move-result-object v2

    if-eqz v2, :cond_4

    int-to-float v4, v8

    int-to-float v5, v9

    move-object v0, p0

    move-object/from16 v1, p3

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->a(Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IFF)V

    goto :goto_2

    :cond_4
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tileset atlasRegion not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    return-void
.end method

.method public h(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;)Lcom/badlogic/gdx/utils/Array;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;",
            ")",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ">;"
        }
    .end annotation

    new-instance p2, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p2}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->w(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/badlogic/gdx/assets/AssetDescriptor;

    const-class v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/assets/AssetDescriptor;-><init>(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/Class;)V

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_0
    return-object p2
.end method

.method public load(Ljava/lang/String;)Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;

    invoke-direct {v0}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->load(Ljava/lang/String;Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;)Lcom/badlogic/gdx/maps/tiled/TiledMap;

    move-result-object p1

    return-object p1
.end method

.method public load(Ljava/lang/String;Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;)Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/assets/loaders/AssetLoader;->resolve(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p1

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->b:Lcom/badlogic/gdx/utils/XmlReader;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/XmlReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->c:Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->w(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    new-instance v0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasResolver$DirectAtlasResolver;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasResolver$DirectAtlasResolver;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;)V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->l:Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasResolver;

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->u(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader$Parameters;Lcom/badlogic/gdx/maps/ImageResolver;)Lcom/badlogic/gdx/maps/tiled/TiledMap;

    move-result-object p1

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/utils/Array;-><init>([Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->setOwnedResources(Lcom/badlogic/gdx/utils/Array;)V

    iget-object v0, p2, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader$Parameters;->textureMinFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object p2, p2, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader$Parameters;->textureMagFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->x(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    return-object p1
.end method

.method public bridge synthetic loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V
    .locals 0

    check-cast p4, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;)V

    return-void
.end method

.method public loadAsync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;)V
    .locals 1

    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->w(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p2

    new-instance v0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasResolver$AssetManagerAtlasResolver;

    invoke-virtual {p2}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasResolver$AssetManagerAtlasResolver;-><init>(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->l:Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasResolver;

    invoke-virtual {p0, p3, p4, v0}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->u(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader$Parameters;Lcom/badlogic/gdx/maps/ImageResolver;)Lcom/badlogic/gdx/maps/tiled/TiledMap;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->j:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    return-void
.end method

.method public loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;)Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .locals 0

    if-eqz p4, :cond_0

    iget-object p1, p4, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader$Parameters;->textureMinFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object p2, p4, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader$Parameters;->textureMagFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->x(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->j:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    return-object p1
.end method

.method public bridge synthetic loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Ljava/lang/Object;
    .locals 0

    check-cast p4, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->loadSync(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader$AtlasTiledMapLoaderParameters;)Lcom/badlogic/gdx/maps/tiled/TiledMap;

    move-result-object p1

    return-object p1
.end method

.method public w(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->c:Lcom/badlogic/gdx/utils/XmlReader$Element;

    const-string v1, "properties"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "property"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/XmlReader$Element;

    const-string v2, "name"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "atlas"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "value"

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    invoke-static {p1, v0}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->i(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    return-object p1

    :cond_2
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The \'atlas\' file could not be found: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "The map is missing the \'atlas\' property"

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public x(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->k:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/graphics/GLTexture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/maps/tiled/AtlasTmxMapLoader;->k:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    return-void
.end method
