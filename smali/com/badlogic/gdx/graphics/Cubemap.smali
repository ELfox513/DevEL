.class public Lcom/badlogic/gdx/graphics/Cubemap;
.super Lcom/badlogic/gdx/graphics/GLTexture;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/Cubemap$CubemapSide;
    }
.end annotation


# static fields
.field public static t:Lcom/badlogic/gdx/assets/AssetManager;

.field public static final u:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/badlogic/gdx/Application;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/Cubemap;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public s:Lcom/badlogic/gdx/graphics/CubemapData;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/Cubemap;->u:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(IIILcom/badlogic/gdx/graphics/Pixmap$Format;)V
    .locals 9

    new-instance v1, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-direct {v0, p3, p2, p4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    new-instance v5, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-direct {v0, p3, p2, p4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    invoke-direct {v5, v0, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    new-instance v6, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-direct {v0, p1, p3, p4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    invoke-direct {v6, v0, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    new-instance v7, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-direct {v0, p1, p3, p4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    invoke-direct {v7, v0, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    new-instance p3, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-direct {v0, p1, p2, p4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    invoke-direct {p3, v0, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    new-instance v8, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-direct {v0, p1, p2, p4}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    invoke-direct {v8, v0, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    move-object v0, p0

    move-object v2, v5

    move-object v3, v6

    move-object v4, v7

    move-object v5, p3

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/Cubemap;-><init>(Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/Cubemap;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Z)V
    .locals 5

    invoke-static {p1, p7}, Lcom/badlogic/gdx/graphics/TextureData$Factory;->loadFromFile(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v0

    invoke-static {p2, p7}, Lcom/badlogic/gdx/graphics/TextureData$Factory;->loadFromFile(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v1

    invoke-static {p3, p7}, Lcom/badlogic/gdx/graphics/TextureData$Factory;->loadFromFile(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v2

    invoke-static {p4, p7}, Lcom/badlogic/gdx/graphics/TextureData$Factory;->loadFromFile(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v3

    invoke-static {p5, p7}, Lcom/badlogic/gdx/graphics/TextureData$Factory;->loadFromFile(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object v4

    invoke-static {p6, p7}, Lcom/badlogic/gdx/graphics/TextureData$Factory;->loadFromFile(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/TextureData;

    move-result-object p7

    move-object p1, p0

    move-object p2, v0

    move-object p3, v1

    move-object p4, v2

    move-object p5, v3

    move-object p6, v4

    invoke-direct/range {p1 .. p7}, Lcom/badlogic/gdx/graphics/Cubemap;-><init>(Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/CubemapData;)V
    .locals 1

    const v0, 0x8513

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/GLTexture;-><init>(I)V

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/Cubemap;->s:Lcom/badlogic/gdx/graphics/CubemapData;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/Cubemap;->load(Lcom/badlogic/gdx/graphics/CubemapData;)V

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/CubemapData;->isManaged()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-static {p1, p0}, Lcom/badlogic/gdx/graphics/Cubemap;->c(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/Cubemap;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/Cubemap;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap;Z)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    invoke-direct {v2, p1, v1, p7, v0}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    :goto_0
    if-nez p2, :cond_1

    move-object v3, v1

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    invoke-direct {p1, p2, v1, p7, v0}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    move-object v3, p1

    :goto_1
    if-nez p3, :cond_2

    move-object v4, v1

    goto :goto_2

    :cond_2
    new-instance p1, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    invoke-direct {p1, p3, v1, p7, v0}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    move-object v4, p1

    :goto_2
    if-nez p4, :cond_3

    move-object v5, v1

    goto :goto_3

    :cond_3
    new-instance p1, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    invoke-direct {p1, p4, v1, p7, v0}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    move-object v5, p1

    :goto_3
    if-nez p5, :cond_4

    move-object v6, v1

    goto :goto_4

    :cond_4
    new-instance p1, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    invoke-direct {p1, p5, v1, p7, v0}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    move-object v6, p1

    :goto_4
    if-nez p6, :cond_5

    move-object p7, v1

    goto :goto_5

    :cond_5
    new-instance p1, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;

    invoke-direct {p1, p6, v1, p7, v0}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V

    move-object p7, p1

    :goto_5
    move-object p1, p0

    move-object p2, v2

    move-object p3, v3

    move-object p4, v4

    move-object p5, v5

    move-object p6, v6

    invoke-direct/range {p1 .. p7}, Lcom/badlogic/gdx/graphics/Cubemap;-><init>(Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;)V
    .locals 8

    new-instance v7, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/glutils/FacedCubemapData;-><init>(Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;Lcom/badlogic/gdx/graphics/TextureData;)V

    invoke-direct {p0, v7}, Lcom/badlogic/gdx/graphics/Cubemap;-><init>(Lcom/badlogic/gdx/graphics/CubemapData;)V

    return-void
.end method

.method public static c(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/Cubemap;)V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/graphics/Cubemap;->u:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/Array;

    if-nez v1, :cond_0

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    :cond_0
    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static clearAllCubemaps(Lcom/badlogic/gdx/Application;)V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/Cubemap;->u:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getManagedStatus()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Managed cubemap/app: { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/badlogic/gdx/graphics/Cubemap;->u:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/Application;

    sget-object v3, Lcom/badlogic/gdx/graphics/Cubemap;->u:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNumManagedCubemaps()I
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/graphics/Cubemap;->u:Ljava/util/Map;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    return v0
.end method

.method public static invalidateAllCubemaps(Lcom/badlogic/gdx/Application;)V
    .locals 8

    sget-object v0, Lcom/badlogic/gdx/graphics/Cubemap;->u:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/utils/Array;

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/Cubemap;->t:Lcom/badlogic/gdx/assets/AssetManager;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/Cubemap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Cubemap;->d()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/assets/AssetManager;->finishLoading()V

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/Array;-><init>(Lcom/badlogic/gdx/utils/Array;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->iterator()Lcom/badlogic/gdx/utils/Array$ArrayIterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/graphics/Cubemap;

    sget-object v4, Lcom/badlogic/gdx/graphics/Cubemap;->t:Lcom/badlogic/gdx/assets/AssetManager;

    invoke-virtual {v4, v3}, Lcom/badlogic/gdx/assets/AssetManager;->getAssetFileName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Cubemap;->d()V

    goto :goto_1

    :cond_2
    sget-object v5, Lcom/badlogic/gdx/graphics/Cubemap;->t:Lcom/badlogic/gdx/assets/AssetManager;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/assets/AssetManager;->getReferenceCount(Ljava/lang/String;)I

    move-result v5

    sget-object v6, Lcom/badlogic/gdx/graphics/Cubemap;->t:Lcom/badlogic/gdx/assets/AssetManager;

    invoke-virtual {v6, v4, v1}, Lcom/badlogic/gdx/assets/AssetManager;->setReferenceCount(Ljava/lang/String;I)V

    iput v1, v3, Lcom/badlogic/gdx/graphics/GLTexture;->a:I

    new-instance v6, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;

    invoke-direct {v6}, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;-><init>()V

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/Cubemap;->getCubemapData()Lcom/badlogic/gdx/graphics/CubemapData;

    move-result-object v7

    iput-object v7, v6, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;->cubemapData:Lcom/badlogic/gdx/graphics/CubemapData;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/GLTexture;->getMinFilter()Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    move-result-object v7

    iput-object v7, v6, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/GLTexture;->getMagFilter()Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    move-result-object v7

    iput-object v7, v6, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/GLTexture;->getUWrap()Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    move-result-object v7

    iput-object v7, v6, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;->wrapU:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/GLTexture;->getVWrap()Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    move-result-object v7

    iput-object v7, v6, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;->wrapV:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iput-object v3, v6, Lcom/badlogic/gdx/assets/loaders/CubemapLoader$CubemapParameter;->cubemap:Lcom/badlogic/gdx/graphics/Cubemap;

    new-instance v7, Lcom/badlogic/gdx/graphics/Cubemap$1;

    invoke-direct {v7, v5}, Lcom/badlogic/gdx/graphics/Cubemap$1;-><init>(I)V

    iput-object v7, v6, Lcom/badlogic/gdx/assets/AssetLoaderParameters;->loadedCallback:Lcom/badlogic/gdx/assets/AssetLoaderParameters$LoadedCallback;

    sget-object v5, Lcom/badlogic/gdx/graphics/Cubemap;->t:Lcom/badlogic/gdx/assets/AssetManager;

    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/assets/AssetManager;->unload(Ljava/lang/String;)V

    sget-object v5, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v5}, Lcom/badlogic/gdx/graphics/GL20;->glGenTexture()I

    move-result v5

    iput v5, v3, Lcom/badlogic/gdx/graphics/GLTexture;->a:I

    sget-object v3, Lcom/badlogic/gdx/graphics/Cubemap;->t:Lcom/badlogic/gdx/assets/AssetManager;

    const-class v5, Lcom/badlogic/gdx/graphics/Cubemap;

    invoke-virtual {v3, v4, v5, v6}, Lcom/badlogic/gdx/assets/AssetManager;->load(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/assets/AssetLoaderParameters;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Array;->addAll(Lcom/badlogic/gdx/utils/Array;)V

    :cond_4
    return-void
.end method

.method public static setAssetManager(Lcom/badlogic/gdx/assets/AssetManager;)V
    .locals 0

    sput-object p0, Lcom/badlogic/gdx/graphics/Cubemap;->t:Lcom/badlogic/gdx/assets/AssetManager;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Cubemap;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGenTexture()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Cubemap;->s:Lcom/badlogic/gdx/graphics/CubemapData;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/Cubemap;->load(Lcom/badlogic/gdx/graphics/CubemapData;)V

    return-void

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Tried to reload an unmanaged Cubemap"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dispose()V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->a:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/GLTexture;->a()V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Cubemap;->s:Lcom/badlogic/gdx/graphics/CubemapData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/CubemapData;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/badlogic/gdx/graphics/Cubemap;->u:Ljava/util/Map;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    :cond_1
    return-void
.end method

.method public getCubemapData()Lcom/badlogic/gdx/graphics/CubemapData;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Cubemap;->s:Lcom/badlogic/gdx/graphics/CubemapData;

    return-object v0
.end method

.method public getDepth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Cubemap;->s:Lcom/badlogic/gdx/graphics/CubemapData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/CubemapData;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Cubemap;->s:Lcom/badlogic/gdx/graphics/CubemapData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/CubemapData;->getWidth()I

    move-result v0

    return v0
.end method

.method public isManaged()Z
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Cubemap;->s:Lcom/badlogic/gdx/graphics/CubemapData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/CubemapData;->isManaged()Z

    move-result v0

    return v0
.end method

.method public load(Lcom/badlogic/gdx/graphics/CubemapData;)V
    .locals 3

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/CubemapData;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/CubemapData;->prepare()V

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/GLTexture;->bind()V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->b:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->d:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/GLTexture;->unsafeSetFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Z)V

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->k:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->p:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/GLTexture;->unsafeSetWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Z)V

    iget v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->q:F

    invoke-virtual {p0, v0, v2}, Lcom/badlogic/gdx/graphics/GLTexture;->unsafeSetAnisotropicFilter(FZ)F

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/CubemapData;->consumeCubemapData()V

    sget-object p1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->glTarget:I

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindTexture(II)V

    return-void
.end method
