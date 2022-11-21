.class public abstract Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;
.super Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader$Parameters;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader$Parameters;",
        ">",
        "Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader<",
        "Lcom/badlogic/gdx/maps/tiled/TiledMap;",
        "TP;>;"
    }
.end annotation


# instance fields
.field public b:Lcom/badlogic/gdx/utils/XmlReader;

.field public c:Lcom/badlogic/gdx/utils/XmlReader$Element;

.field public d:Z

.field public e:Z

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Lcom/badlogic/gdx/maps/tiled/TiledMap;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/assets/loaders/AsynchronousAssetLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    new-instance p1, Lcom/badlogic/gdx/utils/XmlReader;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/XmlReader;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->b:Lcom/badlogic/gdx/utils/XmlReader;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->e:Z

    return-void
.end method

.method public static getTileIds(Lcom/badlogic/gdx/utils/XmlReader$Element;II)[I
    .locals 9

    const-string v0, "data"

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object p0

    const-string v0, "encoding"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    mul-int v2, p1, p2

    new-array v2, v2, [I

    const-string v3, "csv"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getText()Ljava/lang/String;

    move-result-object p0

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    :goto_0
    array-length p1, p0

    if-ge v4, p1, :cond_8

    aget-object p1, p0, v4

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    long-to-int p2, p1

    aput p2, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string v3, "base64"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, ") for TMX Layer Data"

    if-eqz v3, :cond_a

    :try_start_0
    const-string v0, "compression"

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/badlogic/gdx/utils/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object p0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :goto_1
    move-object v1, v0

    goto :goto_2

    :cond_1
    const-string v3, "gzip"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/util/zip/GZIPInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    array-length p0, p0

    invoke-direct {v3, v5, p0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_1

    :cond_2
    const-string v3, "zlib"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/util/zip/InflaterInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v3, v5}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_1

    :goto_2
    const/4 p0, 0x4

    new-array v0, p0, [B

    const/4 v3, 0x0

    :goto_3
    if-ge v3, p2, :cond_7

    const/4 v5, 0x0

    :goto_4
    if-ge v5, p1, :cond_6

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    :goto_5
    if-ge v6, p0, :cond_4

    rsub-int/lit8 v7, v6, 0x4

    invoke-virtual {v1, v0, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_3

    goto :goto_6

    :cond_3
    add-int/2addr v6, v7

    goto :goto_5

    :cond_4
    :goto_6
    if-ne v6, p0, :cond_5

    mul-int v6, v3, p1

    add-int/2addr v6, v5

    aget-byte v7, v0, v4

    invoke-static {v7}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->v(B)I

    move-result v7

    const/4 v8, 0x1

    aget-byte v8, v0, v8

    invoke-static {v8}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->v(B)I

    move-result v8

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    const/4 v8, 0x2

    aget-byte v8, v0, v8

    invoke-static {v8}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->v(B)I

    move-result v8

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v7, v8

    const/4 v8, 0x3

    aget-byte v8, v0, v8

    invoke-static {v8}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->v(B)I

    move-result v8

    shl-int/lit8 v8, v8, 0x18

    or-int/2addr v7, v8

    aput v7, v2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_5
    new-instance p0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p1, "Error Reading TMX Layer Data: Premature end of tile data"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    invoke-static {v1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_8
    return-object v2

    :cond_9
    :try_start_1
    new-instance p0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unrecognised compression ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_7

    :catch_0
    move-exception p0

    :try_start_2
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error Reading TMX Layer Data - IOException: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_7
    invoke-static {v1}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p0

    :cond_a
    new-instance p0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unrecognised encoding ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p1, "Unsupported encoding (XML) for TMX Layer Data"

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :goto_8
    throw p0

    :goto_9
    goto :goto_8
.end method

.method public static i(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
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

.method public static v(B)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method


# virtual methods
.method public a(Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IFF)V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;

    invoke-direct {v0, p2}, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    invoke-interface {v0, p3}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->setId(I)V

    invoke-interface {v0, p4}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->setOffsetX(F)V

    iget-boolean p2, p0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->e:Z

    if-eqz p2, :cond_0

    neg-float p5, p5

    :cond_0
    invoke-interface {v0, p5}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->setOffsetY(F)V

    invoke-virtual {p1, p3, v0}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->putTile(ILcom/badlogic/gdx/maps/tiled/TiledMapTile;)V

    return-void
.end method

.method public abstract b(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/ImageResolver;Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/utils/Array;Ljava/lang/String;IIIIILjava/lang/String;IILjava/lang/String;IILcom/badlogic/gdx/files/FileHandle;)V
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
.end method

.method public c(Lcom/badlogic/gdx/maps/tiled/TiledMapTile;Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    .locals 2

    const-string v0, "objectgroup"

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v0, "object"

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/XmlReader$Element;

    iget-object v1, p0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->j:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    invoke-virtual {p0, v1, p1, v0}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->p(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/maps/tiled/TiledMapTile;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(Lcom/badlogic/gdx/maps/tiled/TiledMapTile;Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    .locals 4

    const-string v0, "terrain"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const-string v0, "probability"

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    const-string v0, "type"

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    const-string v0, "properties"

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->r(Lcom/badlogic/gdx/maps/MapProperties;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    :cond_3
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    if-nez p3, :cond_0

    return-object p2

    :cond_0
    const-string v0, "int"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "float"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v0, "bool"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_3
    const-string v0, "color"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x3

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/badlogic/gdx/graphics/Color;->valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance p2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong type given for property "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", given : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", supported : string, bool, int, float, color"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public f(Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;Lcom/badlogic/gdx/maps/tiled/TiledMapTile;Lcom/badlogic/gdx/utils/XmlReader$Element;I)Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;
    .locals 4

    const-string v0, "animation"

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object p3

    if-eqz p3, :cond_1

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    new-instance v1, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    const-string v2, "frame"

    invoke-virtual {p3, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p3

    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/XmlReader$Element;

    const-string v3, "tileid"

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, p4

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->getTile(I)Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    const-string v3, "duration"

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;

    invoke-direct {p1, v1, v0}, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;-><init>(Lcom/badlogic/gdx/utils/IntArray;Lcom/badlogic/gdx/utils/Array;)V

    invoke-interface {p2}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->setId(I)V

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public g(ZZZ)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    invoke-direct {v0}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;-><init>()V

    if-eqz p3, :cond_3

    const/4 p3, 0x1

    const/4 v1, 0x3

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->setFlipHorizontally(Z)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->setRotation(I)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->setRotation(I)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->setRotation(I)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->setFlipVertically(Z)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->setRotation(I)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->setFlipHorizontally(Z)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->setFlipVertically(Z)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    :goto_0
    return-object v0
.end method

.method public bridge synthetic getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)Lcom/badlogic/gdx/utils/Array;
    .locals 0

    check-cast p3, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader$Parameters;

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader$Parameters;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    return-object p1
.end method

.method public getDependencies(Ljava/lang/String;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader$Parameters;)Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "TP;)",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/assets/AssetDescriptor;",
            ">;"
        }
    .end annotation

    iget-object p1, p0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->b:Lcom/badlogic/gdx/utils/XmlReader;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/utils/XmlReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->c:Lcom/badlogic/gdx/utils/XmlReader$Element;

    new-instance p1, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;

    invoke-direct {p1}, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;-><init>()V

    if-eqz p3, :cond_0

    iget-boolean v0, p3, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader$Parameters;->generateMipMaps:Z

    iput-boolean v0, p1, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->genMipMaps:Z

    iget-object v0, p3, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader$Parameters;->textureMinFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v0, p1, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object p3, p3, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader$Parameters;->textureMagFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object p3, p1, Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->h(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p1

    return-object p1
.end method

.method public abstract h(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/TextureLoader$TextureParameter;)Lcom/badlogic/gdx/utils/Array;
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
.end method

.method public j(Lcom/badlogic/gdx/maps/MapLayer;Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    .locals 6

    const-string v0, "name"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "opacity"

    const-string v2, "1.0"

    invoke-virtual {p2, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const-string v2, "visible"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v2, "offsetx"

    const/4 v4, 0x0

    invoke-virtual {p2, v2, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getFloatAttribute(Ljava/lang/String;F)F

    move-result v2

    const-string v5, "offsety"

    invoke-virtual {p2, v5, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getFloatAttribute(Ljava/lang/String;F)F

    move-result p2

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/maps/MapLayer;->setName(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/maps/MapLayer;->setOpacity(F)V

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/maps/MapLayer;->setVisible(Z)V

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/maps/MapLayer;->setOffsetX(F)V

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/maps/MapLayer;->setOffsetY(F)V

    return-void
.end method

.method public k(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/maps/MapLayers;Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/ImageResolver;)V
    .locals 3

    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "imagelayer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "offsetx"

    invoke-virtual {p3, p1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "0"

    if-eqz v0, :cond_0

    invoke-virtual {p3, p1, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    goto :goto_0

    :cond_0
    const-string p1, "x"

    invoke-virtual {p3, p1, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    :goto_0
    const-string v0, "offsety"

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p3, v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_1

    :cond_1
    const-string v0, "y"

    invoke-virtual {p3, v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    :goto_1
    iget-boolean v1, p0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->e:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->i:I

    int-to-float v1, v1

    sub-float v0, v1, v0

    :cond_2
    const/4 v1, 0x0

    const-string v2, "image"

    invoke-virtual {p3, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v1, "source"

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, v1}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->i(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p4

    invoke-virtual {p4}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p5, p4}, Lcom/badlogic/gdx/maps/ImageResolver;->getImage(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result p4

    int-to-float p4, p4

    sub-float/2addr v0, p4

    :cond_3
    new-instance p4, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;

    invoke-direct {p4, v1, p1, v0}, Lcom/badlogic/gdx/maps/tiled/TiledMapImageLayer;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FF)V

    invoke-virtual {p0, p4, p3}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->j(Lcom/badlogic/gdx/maps/MapLayer;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    const-string p1, "properties"

    invoke-virtual {p3, p1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p4}, Lcom/badlogic/gdx/maps/MapLayer;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object p3

    invoke-virtual {p0, p3, p1}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->r(Lcom/badlogic/gdx/maps/MapProperties;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    :cond_4
    invoke-virtual {p2, p4}, Lcom/badlogic/gdx/maps/MapLayers;->add(Lcom/badlogic/gdx/maps/MapLayer;)V

    :cond_5
    return-void
.end method

.method public l(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/maps/MapLayers;Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/ImageResolver;)V
    .locals 2

    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "group"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p5}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->m(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/maps/MapLayers;Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/ImageResolver;)V

    goto :goto_0

    :cond_0
    const-string v1, "layer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->s(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/maps/MapLayers;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    goto :goto_0

    :cond_1
    const-string v1, "objectgroup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1, p2, p3}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->q(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/maps/MapLayers;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    goto :goto_0

    :cond_2
    const-string v1, "imagelayer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual/range {p0 .. p5}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->k(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/maps/MapLayers;Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/ImageResolver;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public m(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/maps/MapLayers;Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/ImageResolver;)V
    .locals 9

    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "group"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/badlogic/gdx/maps/MapGroupLayer;

    invoke-direct {v0}, Lcom/badlogic/gdx/maps/MapGroupLayer;-><init>()V

    invoke-virtual {p0, v0, p3}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->j(Lcom/badlogic/gdx/maps/MapLayer;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    const-string v1, "properties"

    invoke-virtual {p3, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/maps/MapLayer;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->r(Lcom/badlogic/gdx/maps/MapProperties;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p3, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChild(I)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v6

    invoke-virtual {v0}, Lcom/badlogic/gdx/maps/MapGroupLayer;->getLayers()Lcom/badlogic/gdx/maps/MapLayers;

    move-result-object v5

    move-object v3, p0

    move-object v4, p1

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->l(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/maps/MapLayers;Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/ImageResolver;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/maps/MapGroupLayer;->getLayers()Lcom/badlogic/gdx/maps/MapLayers;

    move-result-object p1

    invoke-virtual {p1}, Lcom/badlogic/gdx/maps/MapLayers;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/badlogic/gdx/maps/MapLayer;

    invoke-virtual {p3, v0}, Lcom/badlogic/gdx/maps/MapLayer;->setParent(Lcom/badlogic/gdx/maps/MapLayer;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/maps/MapLayers;->add(Lcom/badlogic/gdx/maps/MapLayer;)V

    :cond_3
    return-void
.end method

.method public n(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/maps/MapLayer;Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    .locals 1

    invoke-virtual {p2}, Lcom/badlogic/gdx/maps/MapLayer;->getObjects()Lcom/badlogic/gdx/maps/MapObjects;

    move-result-object p2

    iget v0, p0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->i:I

    int-to-float v0, v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->o(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/maps/MapObjects;Lcom/badlogic/gdx/utils/XmlReader$Element;F)V

    return-void
.end method

.method public o(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/maps/MapObjects;Lcom/badlogic/gdx/utils/XmlReader$Element;F)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual/range {p3 .. p3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "object"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-boolean v2, v0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->d:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_0

    iget v4, v0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->f:I

    int-to-float v4, v4

    div-float v4, v3, v4

    goto :goto_0

    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_0
    if-eqz v2, :cond_1

    iget v2, v0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->g:I

    int-to-float v2, v2

    div-float/2addr v3, v2

    :cond_1
    const-string v2, "x"

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getFloatAttribute(Ljava/lang/String;F)F

    move-result v6

    mul-float v6, v6, v4

    iget-boolean v7, v0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->e:Z

    const-string v8, "y"

    if-eqz v7, :cond_2

    invoke-virtual {v1, v8, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getFloatAttribute(Ljava/lang/String;F)F

    move-result v7

    sub-float v7, p4, v7

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v8, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getFloatAttribute(Ljava/lang/String;F)F

    move-result v7

    :goto_1
    mul-float v7, v7, v3

    const-string v9, "width"

    invoke-virtual {v1, v9, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getFloatAttribute(Ljava/lang/String;F)F

    move-result v10

    mul-float v10, v10, v4

    const-string v11, "height"

    invoke-virtual {v1, v11, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getFloatAttribute(Ljava/lang/String;F)F

    move-result v12

    mul-float v12, v12, v3

    invoke-virtual/range {p3 .. p3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildCount()I

    move-result v13

    if-lez v13, :cond_a

    const-string v13, "polygon"

    invoke-virtual {v1, v13}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v13

    const/16 v16, -0x1

    const-string v14, ","

    const-string v5, " "

    const-string v15, "points"

    if-eqz v13, :cond_5

    invoke-virtual {v13, v15}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v13, v5

    mul-int/lit8 v13, v13, 0x2

    new-array v13, v13, [F

    move-object/from16 v19, v8

    const/4 v15, 0x0

    :goto_2
    array-length v8, v5

    if-ge v15, v8, :cond_4

    aget-object v8, v5, v15

    invoke-virtual {v8, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    mul-int/lit8 v20, v15, 0x2

    const/16 v18, 0x0

    aget-object v21, v8, v18

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    mul-float v21, v21, v4

    aput v21, v13, v20

    const/16 v17, 0x1

    add-int/lit8 v20, v20, 0x1

    aget-object v8, v8, v17

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    mul-float v8, v8, v3

    move-object/from16 v21, v5

    iget-boolean v5, v0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->e:Z

    if-eqz v5, :cond_3

    const/4 v5, -0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x1

    :goto_3
    int-to-float v5, v5

    mul-float v8, v8, v5

    aput v8, v13, v20

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v5, v21

    goto :goto_2

    :cond_4
    new-instance v5, Lcom/badlogic/gdx/math/Polygon;

    invoke-direct {v5, v13}, Lcom/badlogic/gdx/math/Polygon;-><init>([F)V

    invoke-virtual {v5, v6, v7}, Lcom/badlogic/gdx/math/Polygon;->setPosition(FF)V

    new-instance v8, Lcom/badlogic/gdx/maps/objects/PolygonMapObject;

    invoke-direct {v8, v5}, Lcom/badlogic/gdx/maps/objects/PolygonMapObject;-><init>(Lcom/badlogic/gdx/math/Polygon;)V

    goto/16 :goto_7

    :cond_5
    move-object/from16 v19, v8

    const-string v8, "polyline"

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-virtual {v8, v15}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v8, v5

    mul-int/lit8 v8, v8, 0x2

    new-array v8, v8, [F

    const/4 v13, 0x0

    :goto_4
    array-length v15, v5

    if-ge v13, v15, :cond_7

    aget-object v15, v5, v13

    invoke-virtual {v15, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    mul-int/lit8 v20, v13, 0x2

    const/16 v18, 0x0

    aget-object v21, v15, v18

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    mul-float v21, v21, v4

    aput v21, v8, v20

    const/16 v17, 0x1

    add-int/lit8 v20, v20, 0x1

    aget-object v15, v15, v17

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v15

    mul-float v15, v15, v3

    move-object/from16 v21, v5

    iget-boolean v5, v0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->e:Z

    if-eqz v5, :cond_6

    const/4 v5, -0x1

    goto :goto_5

    :cond_6
    const/4 v5, 0x1

    :goto_5
    int-to-float v5, v5

    mul-float v15, v15, v5

    aput v15, v8, v20

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v5, v21

    goto :goto_4

    :cond_7
    new-instance v5, Lcom/badlogic/gdx/math/Polyline;

    invoke-direct {v5, v8}, Lcom/badlogic/gdx/math/Polyline;-><init>([F)V

    invoke-virtual {v5, v6, v7}, Lcom/badlogic/gdx/math/Polyline;->setPosition(FF)V

    new-instance v8, Lcom/badlogic/gdx/maps/objects/PolylineMapObject;

    invoke-direct {v8, v5}, Lcom/badlogic/gdx/maps/objects/PolylineMapObject;-><init>(Lcom/badlogic/gdx/math/Polyline;)V

    goto :goto_7

    :cond_8
    const-string v5, "ellipse"

    invoke-virtual {v1, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v5

    if-eqz v5, :cond_b

    new-instance v5, Lcom/badlogic/gdx/maps/objects/EllipseMapObject;

    iget-boolean v8, v0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->e:Z

    if-eqz v8, :cond_9

    sub-float v8, v7, v12

    goto :goto_6

    :cond_9
    move v8, v7

    :goto_6
    invoke-direct {v5, v6, v8, v10, v12}, Lcom/badlogic/gdx/maps/objects/EllipseMapObject;-><init>(FFFF)V

    move-object v8, v5

    goto :goto_7

    :cond_a
    move-object/from16 v19, v8

    :cond_b
    const/4 v8, 0x0

    :goto_7
    const-string v5, "rotation"

    if-nez v8, :cond_11

    const-string v8, "gid"

    const/4 v13, 0x0

    invoke-virtual {v1, v8, v13}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_f

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    long-to-int v14, v13

    const/high16 v13, -0x80000000

    and-int/2addr v13, v14

    if-eqz v13, :cond_c

    const/4 v13, 0x1

    goto :goto_8

    :cond_c
    const/4 v13, 0x0

    :goto_8
    const/high16 v15, 0x40000000    # 2.0f

    and-int/2addr v15, v14

    move-object/from16 v16, v2

    if-eqz v15, :cond_d

    const/4 v15, 0x1

    goto :goto_9

    :cond_d
    const/4 v15, 0x0

    :goto_9
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getTileSets()Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;

    move-result-object v2

    const v20, 0x1fffffff

    move/from16 v21, v10

    and-int v10, v14, v20

    invoke-virtual {v2, v10}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;->getTile(I)Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v2

    new-instance v10, Lcom/badlogic/gdx/maps/tiled/objects/TiledMapTileMapObject;

    invoke-direct {v10, v2, v13, v15}, Lcom/badlogic/gdx/maps/tiled/objects/TiledMapTileMapObject;-><init>(Lcom/badlogic/gdx/maps/tiled/TiledMapTile;ZZ)V

    invoke-virtual {v10}, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v2

    invoke-virtual {v10}, Lcom/badlogic/gdx/maps/MapObject;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v13

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v8, v14}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v10, v6}, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->setX(F)V

    iget-boolean v8, v0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->e:Z

    if-eqz v8, :cond_e

    move v8, v7

    goto :goto_a

    :cond_e
    sub-float v8, v7, v12

    :goto_a
    invoke-virtual {v10, v8}, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->setY(F)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v1, v9, v8}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getFloatAttribute(Ljava/lang/String;F)F

    move-result v8

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v1, v11, v13}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getFloatAttribute(Ljava/lang/String;F)F

    move-result v13

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v8, v14

    mul-float v4, v4, v8

    invoke-virtual {v10, v4}, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->setScaleX(F)V

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v13, v2

    mul-float v3, v3, v13

    invoke-virtual {v10, v3}, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->setScaleY(F)V

    const/4 v2, 0x0

    invoke-virtual {v1, v5, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getFloatAttribute(Ljava/lang/String;F)F

    move-result v2

    invoke-virtual {v10, v2}, Lcom/badlogic/gdx/maps/objects/TextureMapObject;->setRotation(F)V

    move-object v8, v10

    move/from16 v10, v21

    goto :goto_c

    :cond_f
    move-object/from16 v16, v2

    move/from16 v21, v10

    new-instance v8, Lcom/badlogic/gdx/maps/objects/RectangleMapObject;

    iget-boolean v2, v0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->e:Z

    if-eqz v2, :cond_10

    sub-float v2, v7, v12

    goto :goto_b

    :cond_10
    move v2, v7

    :goto_b
    move/from16 v10, v21

    invoke-direct {v8, v6, v2, v10, v12}, Lcom/badlogic/gdx/maps/objects/RectangleMapObject;-><init>(FFFF)V

    goto :goto_c

    :cond_11
    move-object/from16 v16, v2

    :goto_c
    const-string v2, "name"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/badlogic/gdx/maps/MapObject;->setName(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {v8}, Lcom/badlogic/gdx/maps/MapObject;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_12
    const-string v2, "type"

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_13

    invoke-virtual {v8}, Lcom/badlogic/gdx/maps/MapObject;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_13
    const-string v2, "id"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_14

    invoke-virtual {v8}, Lcom/badlogic/gdx/maps/MapObject;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v2, v4}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_14
    invoke-virtual {v8}, Lcom/badlogic/gdx/maps/MapObject;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    move-object/from16 v5, v16

    invoke-virtual {v2, v5, v4}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of v2, v8, Lcom/badlogic/gdx/maps/tiled/objects/TiledMapTileMapObject;

    if-eqz v2, :cond_15

    invoke-virtual {v8}, Lcom/badlogic/gdx/maps/MapObject;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    move-object/from16 v5, v19

    invoke-virtual {v2, v5, v4}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d

    :cond_15
    move-object/from16 v5, v19

    invoke-virtual {v8}, Lcom/badlogic/gdx/maps/MapObject;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v2

    iget-boolean v4, v0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->e:Z

    if-eqz v4, :cond_16

    sub-float/2addr v7, v12

    :cond_16
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_d
    invoke-virtual {v8}, Lcom/badlogic/gdx/maps/MapObject;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v2

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v9, v4}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v8}, Lcom/badlogic/gdx/maps/MapObject;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v2

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v11, v4}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "visible"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_17

    const/4 v15, 0x1

    goto :goto_e

    :cond_17
    const/4 v15, 0x0

    :goto_e
    invoke-virtual {v8, v15}, Lcom/badlogic/gdx/maps/MapObject;->setVisible(Z)V

    const-string v2, "properties"

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {v8}, Lcom/badlogic/gdx/maps/MapObject;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->r(Lcom/badlogic/gdx/maps/MapProperties;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    :cond_18
    move-object/from16 v1, p2

    invoke-virtual {v1, v8}, Lcom/badlogic/gdx/maps/MapObjects;->add(Lcom/badlogic/gdx/maps/MapObject;)V

    :cond_19
    return-void
.end method

.method public p(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/maps/tiled/TiledMapTile;Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    .locals 1

    invoke-interface {p2}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getObjects()Lcom/badlogic/gdx/maps/MapObjects;

    move-result-object v0

    invoke-interface {p2}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0, p1, v0, p3, p2}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->o(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/maps/MapObjects;Lcom/badlogic/gdx/utils/XmlReader$Element;F)V

    return-void
.end method

.method public q(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/maps/MapLayers;Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    .locals 3

    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "objectgroup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/badlogic/gdx/maps/MapLayer;

    invoke-direct {v0}, Lcom/badlogic/gdx/maps/MapLayer;-><init>()V

    invoke-virtual {p0, v0, p3}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->j(Lcom/badlogic/gdx/maps/MapLayer;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    const-string v1, "properties"

    invoke-virtual {p3, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/badlogic/gdx/maps/MapLayer;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->r(Lcom/badlogic/gdx/maps/MapProperties;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    :cond_0
    const-string v1, "object"

    invoke-virtual {p3, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p3

    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->n(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/maps/MapLayer;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/maps/MapLayers;->add(Lcom/badlogic/gdx/maps/MapLayer;)V

    :cond_2
    return-void
.end method

.method public r(Lcom/badlogic/gdx/maps/MapProperties;Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "properties"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "property"

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object p2

    invoke-virtual {p2}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/XmlReader$Element;

    const-string v1, "name"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "value"

    invoke-virtual {v0, v3, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v0, v4, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getText()Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {p0, v1, v3, v2}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public s(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/maps/MapLayers;Lcom/badlogic/gdx/utils/XmlReader$Element;)V
    .locals 12

    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p3}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "layer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "width"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "height"

    invoke-virtual {p3, v3, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p1}, Lcom/badlogic/gdx/maps/Map;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v4

    const-string v5, "tilewidth"

    invoke-virtual {v4, v5, v0}, Lcom/badlogic/gdx/maps/MapProperties;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1}, Lcom/badlogic/gdx/maps/Map;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v5

    const-string v6, "tileheight"

    invoke-virtual {v5, v6, v0}, Lcom/badlogic/gdx/maps/MapProperties;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v5, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;

    invoke-direct {v5, v1, v3, v4, v0}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;-><init>(IIII)V

    invoke-virtual {p0, v5, p3}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->j(Lcom/badlogic/gdx/maps/MapLayer;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    invoke-static {p3, v1, v3}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->getTileIds(Lcom/badlogic/gdx/utils/XmlReader$Element;II)[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getTileSets()Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;

    move-result-object p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_6

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_5

    mul-int v7, v4, v1

    add-int/2addr v7, v6

    aget v7, v0, v7

    const/high16 v8, -0x80000000

    and-int/2addr v8, v7

    const/4 v9, 0x1

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    goto :goto_2

    :cond_0
    const/4 v8, 0x0

    :goto_2
    const/high16 v10, 0x40000000    # 2.0f

    and-int/2addr v10, v7

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    goto :goto_3

    :cond_1
    const/4 v10, 0x0

    :goto_3
    const/high16 v11, 0x20000000

    and-int/2addr v11, v7

    if-eqz v11, :cond_2

    goto :goto_4

    :cond_2
    const/4 v9, 0x0

    :goto_4
    const v11, 0x1fffffff

    and-int/2addr v7, v11

    invoke-virtual {p1, v7}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;->getTile(I)Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {p0, v8, v10, v9}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->g(ZZZ)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;->setTile(Lcom/badlogic/gdx/maps/tiled/TiledMapTile;)Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;

    iget-boolean v7, p0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->e:Z

    if-eqz v7, :cond_3

    add-int/lit8 v7, v3, -0x1

    sub-int/2addr v7, v4

    goto :goto_5

    :cond_3
    move v7, v4

    :goto_5
    invoke-virtual {v5, v6, v7, v8}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileLayer;->setCell(IILcom/badlogic/gdx/maps/tiled/TiledMapTileLayer$Cell;)V

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    const-string p1, "properties"

    invoke-virtual {p3, p1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {v5}, Lcom/badlogic/gdx/maps/MapLayer;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object p3

    invoke-virtual {p0, p3, p1}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->r(Lcom/badlogic/gdx/maps/MapProperties;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    :cond_7
    invoke-virtual {p2, v5}, Lcom/badlogic/gdx/maps/MapLayers;->add(Lcom/badlogic/gdx/maps/MapLayer;)V

    :cond_8
    return-void
.end method

.method public t(Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/ImageResolver;)V
    .locals 25

    move-object/from16 v15, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "tileset"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    const-string v3, "firstgid"

    invoke-virtual {v0, v3, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v14

    const-string v2, ""

    const-string v4, "source"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v6, "height"

    const-string v7, "width"

    const-string v8, "image"

    const/4 v13, 0x0

    if-eqz v12, :cond_1

    invoke-static {v1, v12}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->i(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    :try_start_0
    iget-object v9, v15, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->b:Lcom/badlogic/gdx/utils/XmlReader;

    invoke-virtual {v9, v0}, Lcom/badlogic/gdx/utils/XmlReader;->parse(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v7, v13}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v8, v6, v13}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v0, v2}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->i(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/SerializationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    move-object v0, v5

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_0
    move-object/from16 v19, v0

    move-object/from16 v16, v2

    move/from16 v17, v4

    move/from16 v18, v6

    move-object v4, v9

    goto :goto_1

    :catch_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Error parsing external tileset."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v8, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v7, v13}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v8, v6, v13}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v1, v2}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->i(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    move-object/from16 v16, v2

    move/from16 v17, v4

    move/from16 v18, v6

    move-object/from16 v19, v7

    move-object v4, v0

    goto :goto_1

    :cond_2
    move-object v4, v0

    move-object/from16 v16, v2

    move-object/from16 v19, v5

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_1
    const-string v0, "name"

    invoke-virtual {v4, v0, v5}, Lcom/badlogic/gdx/utils/XmlReader$Element;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "tilewidth"

    invoke-virtual {v4, v0, v13}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v8

    const-string v0, "tileheight"

    invoke-virtual {v4, v0, v13}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v9

    const-string v0, "spacing"

    invoke-virtual {v4, v0, v13}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v10

    const-string v0, "margin"

    invoke-virtual {v4, v0, v13}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v11

    const-string v0, "tileoffset"

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, "x"

    invoke-virtual {v0, v2, v13}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v2

    const-string v5, "y"

    invoke-virtual {v0, v5, v13}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v0

    move/from16 v21, v0

    move/from16 v20, v2

    goto :goto_2

    :cond_3
    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_2
    new-instance v7, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;

    invoke-direct {v7}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;-><init>()V

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->setName(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v0

    const-string v2, "properties"

    invoke-virtual {v4, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v15, v0, v2}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->r(Lcom/badlogic/gdx/maps/MapProperties;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    :cond_4
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "tile"

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v22

    move-object/from16 v5, v22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object v3, v7

    move-object/from16 v23, v7

    move v7, v14

    move/from16 v13, v20

    move/from16 v24, v14

    move/from16 v14, v21

    move-object/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    invoke-virtual/range {v0 .. v18}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->b(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/ImageResolver;Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/utils/Array;Ljava/lang/String;IIIIILjava/lang/String;IILjava/lang/String;IILcom/badlogic/gdx/files/FileHandle;)V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    invoke-virtual/range {v22 .. v22}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/XmlReader$Element;

    const-string v3, "id"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v3

    move/from16 v5, v24

    add-int v14, v5, v3

    move-object/from16 v3, v23

    invoke-virtual {v3, v14}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->getTile(I)Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v6

    move-object/from16 v7, p0

    if-eqz v6, :cond_6

    invoke-virtual {v7, v3, v6, v2, v5}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->f(Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;Lcom/badlogic/gdx/maps/tiled/TiledMapTile;Lcom/badlogic/gdx/utils/XmlReader$Element;I)Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    move-object v6, v8

    :cond_5
    invoke-virtual {v7, v6, v2}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->d(Lcom/badlogic/gdx/maps/tiled/TiledMapTile;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    invoke-virtual {v7, v6, v2}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->c(Lcom/badlogic/gdx/maps/tiled/TiledMapTile;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    :cond_6
    move-object/from16 v23, v3

    move/from16 v24, v5

    goto :goto_3

    :cond_7
    move-object/from16 v7, p0

    move-object/from16 v3, v23

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;

    invoke-virtual {v1}, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->getId()I

    move-result v2

    invoke-virtual {v3, v2, v1}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;->putTile(ILcom/badlogic/gdx/maps/tiled/TiledMapTile;)V

    goto :goto_4

    :cond_8
    iget-object v0, v7, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->j:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/maps/tiled/TiledMap;->getTileSets()Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/maps/tiled/TiledMapTileSets;->addTileSet(Lcom/badlogic/gdx/maps/tiled/TiledMapTileSet;)V

    goto :goto_5

    :cond_9
    move-object v7, v15

    :goto_5
    return-void
.end method

.method public u(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader$Parameters;Lcom/badlogic/gdx/maps/ImageResolver;)Lcom/badlogic/gdx/maps/tiled/TiledMap;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "TP;",
            "Lcom/badlogic/gdx/maps/ImageResolver;",
            ")",
            "Lcom/badlogic/gdx/maps/tiled/TiledMap;"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v0, p2

    new-instance v1, Lcom/badlogic/gdx/maps/tiled/TiledMap;

    invoke-direct {v1}, Lcom/badlogic/gdx/maps/tiled/TiledMap;-><init>()V

    iput-object v1, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->j:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v3, v0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader$Parameters;->convertObjectToTileSpace:Z

    iput-boolean v3, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->d:Z

    iget-boolean v0, v0, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader$Parameters;->flipY:Z

    iput-boolean v0, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->e:Z

    goto :goto_0

    :cond_0
    iput-boolean v2, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->d:Z

    iput-boolean v1, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->e:Z

    :goto_0
    iget-object v0, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->c:Lcom/badlogic/gdx/utils/XmlReader$Element;

    const-string v3, "orientation"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->c:Lcom/badlogic/gdx/utils/XmlReader$Element;

    const-string v7, "width"

    invoke-virtual {v5, v7, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v5

    iget-object v8, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->c:Lcom/badlogic/gdx/utils/XmlReader$Element;

    const-string v9, "height"

    invoke-virtual {v8, v9, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v8

    iget-object v10, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->c:Lcom/badlogic/gdx/utils/XmlReader$Element;

    const-string v11, "tilewidth"

    invoke-virtual {v10, v11, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v10

    iget-object v12, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->c:Lcom/badlogic/gdx/utils/XmlReader$Element;

    const-string v13, "tileheight"

    invoke-virtual {v12, v13, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v12

    iget-object v14, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->c:Lcom/badlogic/gdx/utils/XmlReader$Element;

    const-string v15, "hexsidelength"

    invoke-virtual {v14, v15, v2}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getIntAttribute(Ljava/lang/String;I)I

    move-result v14

    iget-object v2, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->c:Lcom/badlogic/gdx/utils/XmlReader$Element;

    const-string v1, "staggeraxis"

    invoke-virtual {v2, v1, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 p2, v1

    iget-object v1, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->c:Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-object/from16 v16, v2

    const-string v2, "staggerindex"

    invoke-virtual {v1, v2, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v17, v2

    iget-object v2, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->c:Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-object/from16 v18, v1

    const-string v1, "backgroundcolor"

    invoke-virtual {v2, v1, v4}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->j:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    invoke-virtual {v4}, Lcom/badlogic/gdx/maps/Map;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v4

    if-eqz v0, :cond_1

    invoke-virtual {v4, v3, v0}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v7, v3}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v9, v3}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v11, v3}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v13, v3}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v15, v3}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v16, :cond_2

    move-object/from16 v7, p2

    move-object/from16 v3, v16

    invoke-virtual {v4, v7, v3}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    if-eqz v18, :cond_3

    move-object/from16 v7, v17

    move-object/from16 v3, v18

    invoke-virtual {v4, v7, v3}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v4, v1, v2}, Lcom/badlogic/gdx/maps/MapProperties;->put(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    iput v10, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->f:I

    iput v12, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->g:I

    mul-int v5, v5, v10

    iput v5, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->h:I

    mul-int v1, v8, v12

    iput v1, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->i:I

    if-eqz v0, :cond_5

    const-string v1, "staggered"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    if-le v8, v0, :cond_5

    iget v0, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->h:I

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v0, v10

    iput v0, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->h:I

    iget v0, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->i:I

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v0, v12

    iput v0, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->i:I

    :cond_5
    iget-object v0, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->c:Lcom/badlogic/gdx/utils/XmlReader$Element;

    const-string v1, "properties"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->j:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    invoke-virtual {v1}, Lcom/badlogic/gdx/maps/Map;->getProperties()Lcom/badlogic/gdx/maps/MapProperties;

    move-result-object v1

    invoke-virtual {v6, v1, v0}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->r(Lcom/badlogic/gdx/maps/MapProperties;Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    :cond_6
    iget-object v0, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->c:Lcom/badlogic/gdx/utils/XmlReader$Element;

    const-string v1, "tileset"

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildrenByName(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    invoke-virtual {v6, v1, v7, v8}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->t(Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/ImageResolver;)V

    iget-object v2, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->c:Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/XmlReader$Element;->removeChild(Lcom/badlogic/gdx/utils/XmlReader$Element;)V

    goto :goto_1

    :cond_7
    move-object/from16 v7, p1

    move-object/from16 v8, p3

    iget-object v0, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->c:Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChildCount()I

    move-result v9

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_8

    iget-object v0, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->c:Lcom/badlogic/gdx/utils/XmlReader$Element;

    invoke-virtual {v0, v10}, Lcom/badlogic/gdx/utils/XmlReader$Element;->getChild(I)Lcom/badlogic/gdx/utils/XmlReader$Element;

    move-result-object v3

    iget-object v1, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->j:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    invoke-virtual {v1}, Lcom/badlogic/gdx/maps/Map;->getLayers()Lcom/badlogic/gdx/maps/MapLayers;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->l(Lcom/badlogic/gdx/maps/tiled/TiledMap;Lcom/badlogic/gdx/maps/MapLayers;Lcom/badlogic/gdx/utils/XmlReader$Element;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/maps/ImageResolver;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_8
    iget-object v0, v6, Lcom/badlogic/gdx/maps/tiled/BaseTmxMapLoader;->j:Lcom/badlogic/gdx/maps/tiled/TiledMap;

    return-object v0
.end method
