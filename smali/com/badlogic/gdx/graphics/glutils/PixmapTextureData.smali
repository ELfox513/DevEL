.class public Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/graphics/TextureData;


# instance fields
.field public final a:Lcom/badlogic/gdx/graphics/Pixmap;

.field public final b:Lcom/badlogic/gdx/graphics/Pixmap$Format;

.field public final c:Z

.field public final d:Z

.field public final e:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;->a:Lcom/badlogic/gdx/graphics/Pixmap;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;->b:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    iput-boolean p3, p0, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;->c:Z

    iput-boolean p4, p0, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;->d:Z

    iput-boolean p5, p0, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;->e:Z

    return-void
.end method


# virtual methods
.method public consumeCustomData(I)V
    .locals 1

    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "This TextureData implementation does not upload data itself"

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public consumePixmap()Lcom/badlogic/gdx/graphics/Pixmap;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;->a:Lcom/badlogic/gdx/graphics/Pixmap;

    return-object v0
.end method

.method public disposePixmap()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;->d:Z

    return v0
.end method

.method public getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;->b:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;->a:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getType()Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;->Pixmap:Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;->a:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public isManaged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;->e:Z

    return v0
.end method

.method public isPrepared()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public prepare()V
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "prepare() must not be called on a PixmapTextureData instance as it is already prepared."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public useMipMaps()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/PixmapTextureData;->c:Z

    return v0
.end method
