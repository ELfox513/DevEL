.class public Lcom/badlogic/gdx/graphics/glutils/FileTextureData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/graphics/TextureData;


# instance fields
.field public final a:Lcom/badlogic/gdx/files/FileHandle;

.field public b:I

.field public c:I

.field public d:Lcom/badlogic/gdx/graphics/Pixmap$Format;

.field public e:Lcom/badlogic/gdx/graphics/Pixmap;

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/badlogic/gdx/graphics/Pixmap$Format;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->b:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->c:I

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->g:Z

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->a:Lcom/badlogic/gdx/files/FileHandle;

    iput-object p2, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->e:Lcom/badlogic/gdx/graphics/Pixmap;

    iput-object p3, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->d:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    iput-boolean p4, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->f:Z

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->b:I

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->e:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->c:I

    if-nez p3, :cond_0

    iget-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->e:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object p1

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->d:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    :cond_0
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
    .locals 2

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->g:Z

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->e:Lcom/badlogic/gdx/graphics/Pixmap;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->e:Lcom/badlogic/gdx/graphics/Pixmap;

    return-object v0

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Call prepare() before calling getPixmap()"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disposePixmap()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getFileHandle()Lcom/badlogic/gdx/files/FileHandle;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->a:Lcom/badlogic/gdx/files/FileHandle;

    return-object v0
.end method

.method public getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->d:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->c:I

    return v0
.end method

.method public getType()Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;->Pixmap:Lcom/badlogic/gdx/graphics/TextureData$TextureDataType;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->b:I

    return v0
.end method

.method public isManaged()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPrepared()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->g:Z

    return v0
.end method

.method public prepare()V
    .locals 2

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->g:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->e:Lcom/badlogic/gdx/graphics/Pixmap;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->a:Lcom/badlogic/gdx/files/FileHandle;

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->extension()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cim"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->a:Lcom/badlogic/gdx/files/FileHandle;

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/PixmapIO;->readCIM(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->e:Lcom/badlogic/gdx/graphics/Pixmap;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->a:Lcom/badlogic/gdx/files/FileHandle;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->e:Lcom/badlogic/gdx/graphics/Pixmap;

    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->e:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->b:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->e:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->c:I

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->d:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->e:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->d:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->g:Z

    return-void

    :cond_2
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Already prepared"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->a:Lcom/badlogic/gdx/files/FileHandle;

    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useMipMaps()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/FileTextureData;->f:Z

    return v0
.end method
