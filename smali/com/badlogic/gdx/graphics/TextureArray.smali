.class public Lcom/badlogic/gdx/graphics/TextureArray;
.super Lcom/badlogic/gdx/graphics/GLTexture;
.source "SourceFile"


# static fields
.field public static final t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/badlogic/gdx/Application;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/TextureArray;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public s:Lcom/badlogic/gdx/graphics/TextureArrayData;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/TextureArray;->t:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/TextureArrayData;)V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGenTexture()I

    move-result v0

    const v1, 0x8c1a

    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/graphics/GLTexture;-><init>(II)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/TextureArray;->e(Lcom/badlogic/gdx/graphics/TextureArrayData;)V

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureArrayData;->isManaged()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-static {p1, p0}, Lcom/badlogic/gdx/graphics/TextureArray;->c(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/TextureArray;)V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "TextureArray requires a device running with GLES 3.0 compatibilty"

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs constructor <init>(ZLcom/badlogic/gdx/graphics/Pixmap$Format;[Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 0

    invoke-static {p2, p1, p3}, Lcom/badlogic/gdx/graphics/TextureArrayData$Factory;->loadFromFiles(Lcom/badlogic/gdx/graphics/Pixmap$Format;Z[Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/TextureArrayData;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/TextureArray;-><init>(Lcom/badlogic/gdx/graphics/TextureArrayData;)V

    return-void
.end method

.method public varargs constructor <init>(Z[Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {p0, p1, v0, p2}, Lcom/badlogic/gdx/graphics/TextureArray;-><init>(ZLcom/badlogic/gdx/graphics/Pixmap$Format;[Lcom/badlogic/gdx/files/FileHandle;)V

    return-void
.end method

.method public varargs constructor <init>([Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/graphics/TextureArray;-><init>(Z[Lcom/badlogic/gdx/files/FileHandle;)V

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/badlogic/gdx/graphics/TextureArray;->d([Ljava/lang/String;)[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/TextureArray;-><init>([Lcom/badlogic/gdx/files/FileHandle;)V

    return-void
.end method

.method public static c(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/TextureArray;)V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/graphics/TextureArray;->t:Ljava/util/Map;

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

.method public static clearAllTextureArrays(Lcom/badlogic/gdx/Application;)V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/TextureArray;->t:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static varargs d([Ljava/lang/String;)[Lcom/badlogic/gdx/files/FileHandle;
    .locals 4

    array-length v0, p0

    new-array v0, v0, [Lcom/badlogic/gdx/files/FileHandle;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    aget-object v3, p0, v1

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getManagedStatus()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Managed TextureArrays/app: { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/badlogic/gdx/graphics/TextureArray;->t:Ljava/util/Map;

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

    sget-object v3, Lcom/badlogic/gdx/graphics/TextureArray;->t:Ljava/util/Map;

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

.method public static getNumManagedTextureArrays()I
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/graphics/TextureArray;->t:Ljava/util/Map;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    return v0
.end method

.method public static invalidateAllTextureArrays(Lcom/badlogic/gdx/Application;)V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/graphics/TextureArray;->t:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/utils/Array;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/TextureArray;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/TextureArray;->f()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final e(Lcom/badlogic/gdx/graphics/TextureArrayData;)V
    .locals 12

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/TextureArray;->s:Lcom/badlogic/gdx/graphics/TextureArrayData;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureArrayData;->isManaged()Z

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/TextureArray;->s:Lcom/badlogic/gdx/graphics/TextureArrayData;

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/TextureArrayData;->isManaged()Z

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "New data must have the same managed status as the old data"

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/TextureArray;->s:Lcom/badlogic/gdx/graphics/TextureArrayData;

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/GLTexture;->bind()V

    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    const v2, 0x8c1a

    const/4 v3, 0x0

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureArrayData;->getInternalFormat()I

    move-result v4

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureArrayData;->getWidth()I

    move-result v5

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureArrayData;->getHeight()I

    move-result v6

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureArrayData;->getDepth()I

    move-result v7

    const/4 v8, 0x0

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureArrayData;->getInternalFormat()I

    move-result v9

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureArrayData;->getGLType()I

    move-result v10

    const/4 v11, 0x0

    invoke-interface/range {v1 .. v11}, Lcom/badlogic/gdx/graphics/GL30;->glTexImage3D(IIIIIIIIILjava/nio/Buffer;)V

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureArrayData;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureArrayData;->prepare()V

    :cond_2
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureArrayData;->consumeTextureArrayData()V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->b:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->d:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/GLTexture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/GLTexture;->k:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->p:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/GLTexture;->setWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    sget-object p1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->glTarget:I

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glBindTexture(II)V

    return-void
.end method

.method public f()V
    .locals 2

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/TextureArray;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGenTexture()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/GLTexture;->a:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/TextureArray;->s:Lcom/badlogic/gdx/graphics/TextureArrayData;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/TextureArray;->e(Lcom/badlogic/gdx/graphics/TextureArrayData;)V

    return-void

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Tried to reload an unmanaged TextureArray"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDepth()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/TextureArray;->s:Lcom/badlogic/gdx/graphics/TextureArrayData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureArrayData;->getDepth()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/TextureArray;->s:Lcom/badlogic/gdx/graphics/TextureArrayData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureArrayData;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/TextureArray;->s:Lcom/badlogic/gdx/graphics/TextureArrayData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureArrayData;->getWidth()I

    move-result v0

    return v0
.end method

.method public isManaged()Z
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/TextureArray;->s:Lcom/badlogic/gdx/graphics/TextureArrayData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureArrayData;->isManaged()Z

    move-result v0

    return v0
.end method
