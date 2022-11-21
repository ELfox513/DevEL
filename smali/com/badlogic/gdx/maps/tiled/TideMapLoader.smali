.class public Lcom/badlogic/gdx/maps/tiled/TideMapLoader;
.super Lcom/badlogic/gdx/assets/loaders/SynchronousAssetLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/maps/tiled/TideMapLoader$Parameters;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/assets/loaders/SynchronousAssetLoader<",
        "Lcom/badlogic/gdx/maps/tiled/TiledMap;",
        "Lcom/badlogic/gdx/maps/tiled/TideMapLoader$Parameters;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Lcom/badlogic/gdx/utils/XmlReader;

.field public c:Lcom/badlogic/gdx/utils/XmlReader$Element;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/assets/loaders/resolvers/InternalFileHandleResolver;

    invoke-direct {v0}, Lcom/badlogic/gdx/assets/loaders/resolvers/InternalFileHandleResolver;-><init>()V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/assets/loaders/SynchronousAssetLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    new-instance v0, Lcom/badlogic/gdx/utils/XmlReader;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/XmlReader;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->b:Lcom/badlogic/gdx/utils/XmlReader;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/assets/loaders/SynchronousAssetLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    new-instance p1, Lcom/badlogic/gdx/utils/XmlReader;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/XmlReader;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->b:Lcom/badlogic/gdx/utils/XmlReader;

    return-void
.end method

.method public static a(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 2

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "\\/"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->parent()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p0

    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    const-string v1, ".."

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->parent()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/files/FileHandle;->child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p0

    goto :goto_0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public final b(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    .locals 26

    move-object/from16 v0, p2

    const-class v1, Ljava/lang/Integer;

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Layer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "Id"

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Visible"

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Dimensions"

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v4

    const-string v5, "LayerSize"

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "TileSize"

    invoke-virtual {v4, v6}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, " x "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    aget-object v8, v5, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    aget-object v5, v5, v9

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v6, v4, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aget-object v4, v4, v9

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    new-instance v9, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;

    invoke-direct {v9, v8, v5, v6, v4}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;-><init>(IIII)V

    invoke-virtual {v9, v2}, Lcom/badlogic/gdx/maps/MapLayer;->setName(Ljava/lang/String;)V

    const-string v2, "True"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v9, v2}, Lcom/badlogic/gdx/maps/MapLayer;->setVisible(Z)V

    const-string v2, "TileArray"

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v2

    const-string v3, "Row"

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getTileSets()Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;

    move-result-object v3

    const/4 v4, 0x0

    iget v5, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v6, v5, :cond_8

    invoke-virtual {v2, v6}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/badlogic/gdx/utils/XmlReader$Element;

    add-int/lit8 v11, v5, -0x1

    sub-int/2addr v11, v6

    invoke-virtual {v10}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildCount()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    if-ge v13, v12, :cond_7

    invoke-virtual {v10, v13}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChild(I)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v15

    invoke-virtual {v15}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v16, v2

    const-string v2, "TileSheet"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    move/from16 v18, v5

    const-string v5, "firstgid"

    move-object/from16 v19, v10

    const-string v10, "Ref"

    if-eqz v17, :cond_0

    invoke-virtual {v15, v10}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;->getTileSet(Ljava/lang/String;)Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v2

    invoke-virtual {v2, v5, v1}, Lcom/badlogic/gdx/maps/MapProperties;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move v8, v2

    move/from16 v22, v6

    move/from16 v17, v12

    :goto_2
    move/from16 v23, v13

    goto/16 :goto_6

    :cond_0
    move/from16 v17, v12

    const-string v12, "Null"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    const-string v2, "Count"

    invoke-virtual {v15, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v14, v2

    :goto_3
    move/from16 v22, v6

    goto :goto_2

    :cond_1
    const-string v12, "Static"

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    const-string v0, "Index"

    if-eqz v20, :cond_2

    new-instance v2, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    invoke-direct {v2}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;-><init>()V

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v8

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->getTile(I)Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->setTile(Lcom/badlogic/gdx/maps/tiled/TiledMapTile;)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    add-int/lit8 v0, v14, 0x1

    invoke-virtual {v9, v14, v11, v2}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->setCell(IILcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;)V

    move v14, v0

    goto :goto_3

    :cond_2
    move-object/from16 v20, v4

    const-string v4, "Animated"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "Interval"

    invoke-virtual {v15, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v7, "Frames"

    invoke-virtual {v15, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v7

    new-instance v15, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v15}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    move/from16 v21, v8

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildCount()I

    move-result v8

    move/from16 v22, v6

    move/from16 v23, v13

    move-object/from16 v6, v20

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v8, :cond_5

    move/from16 v24, v8

    invoke-virtual {v7, v13}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChild(I)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v8

    move-object/from16 v25, v7

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-virtual {v8, v10}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;->getTileSet(Ljava/lang/String;)Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;

    move-result-object v6

    invoke-virtual {v6}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v7

    invoke-virtual {v7, v5, v1}, Lcom/badlogic/gdx/maps/MapProperties;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move/from16 v21, v7

    goto :goto_5

    :cond_3
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v8, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;)I

    move-result v7

    add-int v7, v21, v7

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->getTile(I)Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v7

    check-cast v7, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;

    invoke-virtual {v15, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    :cond_4
    :goto_5
    add-int/lit8 v13, v13, 0x1

    move/from16 v8, v24

    move-object/from16 v7, v25

    goto :goto_4

    :cond_5
    new-instance v0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    invoke-direct {v0}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;-><init>()V

    new-instance v2, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;

    int-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v4, v5

    invoke-direct {v2, v4, v15}, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;-><init>(FLcom/badlogic/gdx/utils/Array;)V

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->setTile(Lcom/badlogic/gdx/maps/tiled/TiledMapTile;)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    add-int/lit8 v2, v14, 0x1

    invoke-virtual {v9, v14, v11, v0}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->setCell(IILcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;)V

    move v14, v2

    move-object v4, v6

    move/from16 v8, v21

    goto :goto_6

    :cond_6
    move/from16 v22, v6

    move/from16 v21, v8

    move/from16 v23, v13

    move-object/from16 v4, v20

    :goto_6
    add-int/lit8 v13, v23, 0x1

    move-object/from16 v0, p2

    move-object/from16 v2, v16

    move/from16 v12, v17

    move/from16 v5, v18

    move-object/from16 v10, v19

    move/from16 v6, v22

    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_7
    move-object/from16 v16, v2

    move-object/from16 v20, v4

    move/from16 v18, v5

    move/from16 v22, v6

    move/from16 v21, v8

    add-int/lit8 v6, v22, 0x1

    move-object/from16 v0, p2

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_8
    const-string v0, "Properties"

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v9}, Lcom/badlogic/gdx/maps/MapLayer;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v1

    move-object/from16 v2, p0

    invoke-virtual {v2, v1, v0}, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->d(Lcom/badlogic/gdx/maps/MapProperties;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    goto :goto_7

    :cond_9
    move-object/from16 v2, p0

    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/Map;->getLayers()Lcom/badlogic/gdx/maps/MapLayers;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/badlogic/gdx/maps/MapLayers;->add(Lcom/badlogic/gdx/maps/MapLayer;)V

    goto :goto_8

    :cond_a
    move-object/from16 v2, p0

    :goto_8
    return-void
.end method

.method public final c(Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/ImageResolver;)Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .locals 3

    new-instance v0, Lcom/badlogic/gdx/maps/tiled/TiledMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/maps/tiled/TiledMap;-><init>()V

    const-string v1, "Properties"

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/maps/Map;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->d(Lcom/badlogic/gdx/maps/MapProperties;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    :cond_0
    const-string v1, "TileSheets"

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v1

    const-string v2, "TileSheet"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-virtual {p0, v0, v2, p2, p3}, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->e(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/ImageResolver;)V

    goto :goto_0

    :cond_1
    const-string p2, "Layers"

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object p1

    const-string p2, "Layer"

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->b(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public final d(Lcom/badlogic/gdx/maps/MapProperties;Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    .locals 4

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Properties"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Property"

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/XmlReader$Element;

    const-string v1, "Key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Type"

    invoke-virtual {v0, v3, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Int32"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v3, "String"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v3, "Boolean"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final e(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/ImageResolver;)V
    .locals 19

    move-object/from16 v0, p2

    invoke-virtual/range {p2 .. p2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TileSheet"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Id"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Description"

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getText()Ljava/lang/String;

    const-string v2, "ImageSource"

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getText()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Alignment"

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v3

    const-string v4, "SheetSize"

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "TileSize"

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Margin"

    invoke-virtual {v3, v6}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Spacing"

    invoke-virtual {v3, v7}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    const-string v3, " x "

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    aget-object v8, v4, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    const/4 v8, 0x1

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    invoke-virtual {v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v5, v4, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v6, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v10, v9, v7

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    aget-object v9, v9, v8

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v6, v3, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aget-object v3, v3, v8

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v7, p3

    invoke-static {v7, v2}, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->a(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v7, p4

    invoke-interface {v7, v2}, Lcom/badlogic/gdx/maps/ImageResolver;->getImage(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getTileSets()Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;

    invoke-virtual {v11}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->size()I

    move-result v11

    add-int/2addr v8, v11

    goto :goto_0

    :cond_0
    new-instance v14, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;

    invoke-direct {v14}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;-><init>()V

    invoke-virtual {v14, v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->setName(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-string v11, "firstgid"

    invoke-virtual {v1, v11, v10}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v10

    sub-int v13, v10, v4

    move v12, v9

    :goto_1
    if-gt v12, v13, :cond_2

    move v11, v15

    :goto_2
    if-gt v11, v1, :cond_1

    new-instance v10, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;

    new-instance v9, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-object/from16 p1, v9

    move/from16 p3, v1

    move-object v1, v10

    move-object v10, v2

    move/from16 v16, v11

    move/from16 v17, v12

    move/from16 v18, v13

    move v13, v5

    move-object/from16 p4, v2

    move-object v2, v14

    move v14, v4

    invoke-direct/range {v9 .. v14}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    invoke-direct {v1, v9}, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-interface {v1, v8}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->setId(I)V

    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v2, v8, v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->putTile(ILcom/badlogic/gdx/maps/tiled/TiledMapTile;)V

    add-int v1, v5, v6

    add-int v11, v16, v1

    move/from16 v1, p3

    move-object v14, v2

    move v8, v9

    move/from16 v13, v18

    move-object/from16 v2, p4

    goto :goto_2

    :cond_1
    move/from16 p3, v1

    move-object/from16 p4, v2

    move/from16 v17, v12

    move/from16 v18, v13

    move-object v2, v14

    add-int v1, v4, v3

    add-int v12, v17, v1

    move/from16 v1, p3

    move-object/from16 v2, p4

    goto :goto_1

    :cond_2
    move-object v2, v14

    const-string v1, "Properties"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v1

    move-object/from16 v3, p0

    invoke-virtual {v3, v1, v0}, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->d(Lcom/badlogic/gdx/maps/MapProperties;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    goto :goto_3

    :cond_3
    move-object/from16 v3, p0

    :goto_3
    invoke-virtual {v7, v2}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;->addTileSet(Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;)V

    goto :goto_4

    :cond_4
    move-object/from16 v3, p0

    :goto_4
    return-void
.end method

.method public final f(Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/Array;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/XmlReader$Element;",
            "Lcom/badlogic/gdx/files/FileHandle;",
            ")",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/files/FileHandle;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    const-string v1, "TileSheets"

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object p1

    const-string v1, "TileSheet"

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/XmlReader$Element;

    const-string v2, "ImageSource"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->a(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Lcom/badlogic/gdx/utils/Array;
    .locals 0

    check-cast p3, Lcom/badlogic/gdx/maps/tiled/TideMapLoader$Parameters;

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/TideMapLoader$Parameters;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    return-object p1
.end method

.method public getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/TideMapLoader$Parameters;)Lcom/badlogic/gdx/utils/Array;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "Lcom/badlogic/gdx/maps/tiled/TideMapLoader$Parameters;",
            ")",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ">;"
        }
    .end annotation

    new-instance p3, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p3}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->b:Lcom/badlogic/gdx/utils/XmlReader;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/utils/XmlReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->c:Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->f(Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/files/FileHandle;

    new-instance v1, Lcom/badlogic/gdx/assets/AssetDescriptor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v1, v0, v2}, Lcom/badlogic/gdx/assets/AssetDescriptor;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {p3, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object p3

    :catch_0
    move-exception p2

    new-instance p3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Couldn\'t load tilemap \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw p3

    :goto_2
    goto :goto_1
.end method

.method public load(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/TideMapLoader$Parameters;)Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .locals 1

    :try_start_0
    iget-object p4, p0, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->c:Lcom/badlogic/gdx/utils/XmlReader$Element;

    new-instance v0, Lcom/badlogic/gdx/maps/ImageResolver$AssetManagerImageResolver;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/maps/ImageResolver$AssetManagerImageResolver;-><init>(Lcom/badlogic/gdx/assets/AssetManager;)V

    invoke-virtual {p0, p4, p3, v0}, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->c(Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/ImageResolver;)Lcom/badlogic/gdx/maps/tiled/TiledMap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t load tilemap \'"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
.end method

.method public load(Ljava/lang/String;)Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .locals 6

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/assets/loaders/AssetLoader;->resolve(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->b:Lcom/badlogic/gdx/utils/XmlReader;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/XmlReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->c:Lcom/badlogic/gdx/utils/XmlReader$Element;

    new-instance v1, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iget-object v2, p0, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->c:Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-virtual {p0, v2, v0}, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->f(Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/files/FileHandle;

    invoke-virtual {v3}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v5, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    invoke-virtual {v1, v4, v5}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/badlogic/gdx/maps/ImageResolver$DirectImageResolver;

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/maps/ImageResolver$DirectImageResolver;-><init>(Lcom/badlogic/gdx/utils/ObjectMap;)V

    iget-object v3, p0, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->c:Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-virtual {p0, v3, v0, v2}, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->c(Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/ImageResolver;)Lcom/badlogic/gdx/maps/tiled/TiledMap;

    move-result-object v0

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ObjectMap;->values()Lcom/badlogic/gdx/utils/ObjectMap$Values;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/ObjectMap$Values;->toArray()Lcom/badlogic/gdx/utils/Array;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->setOwnedResources(Lcom/badlogic/gdx/utils/Array;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t load tilemap \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public bridge synthetic load(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Ljava/lang/Object;
    .locals 0

    check-cast p4, Lcom/badlogic/gdx/maps/tiled/TideMapLoader$Parameters;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/maps/tiled/TideMapLoader;->load(Lcom/badlogic/gdx/assets/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/TideMapLoader$Parameters;)Lcom/badlogic/gdx/maps/tiled/TiledMap;

    move-result-object p1

    return-object p1
.end method
