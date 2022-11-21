.class public Lcom/badlogic/gdx/graphics/Pixmap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/Pixmap$DownloadPixmapResponseListener;,
        Lcom/badlogic/gdx/graphics/Pixmap$Filter;,
        Lcom/badlogic/gdx/graphics/Pixmap$Blending;,
        Lcom/badlogic/gdx/graphics/Pixmap$Format;
    }
.end annotation


# instance fields
.field public a:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

.field public b:Lcom/badlogic/gdx/graphics/Pixmap$Filter;

.field public final d:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

.field public k:I

.field public p:Z


# direct methods
.method public constructor <init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->SourceOver:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->a:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Filter;->BiLinear:Lcom/badlogic/gdx/graphics/Pixmap$Filter;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->b:Lcom/badlogic/gdx/graphics/Pixmap$Filter;

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->k:I

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-static {p3}, Lcom/badlogic/gdx/graphics/Pixmap$Format;->toGdx2DPixmapFormat(Lcom/badlogic/gdx/graphics/Pixmap$Format;)I

    move-result p3

    invoke-direct {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;-><init>(III)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->d:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p1, p1}, Lcom/badlogic/gdx/graphics/Pixmap;->setColor(FFFF)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/Pixmap;->fill()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->SourceOver:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->a:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Filter;->BiLinear:Lcom/badlogic/gdx/graphics/Pixmap$Filter;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->b:Lcom/badlogic/gdx/graphics/Pixmap$Filter;

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->k:I

    :try_start_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v1

    new-instance v2, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    array-length v3, v1

    invoke-direct {v2, v1, v0, v3, v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;-><init>([BIII)V

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/Pixmap;->d:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t load file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->SourceOver:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->a:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Filter;->BiLinear:Lcom/badlogic/gdx/graphics/Pixmap$Filter;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->b:Lcom/badlogic/gdx/graphics/Pixmap$Filter;

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->k:I

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/Pixmap;->d:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Ljava/nio/ByteBuffer;II)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->SourceOver:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->a:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Filter;->BiLinear:Lcom/badlogic/gdx/graphics/Pixmap$Filter;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->b:Lcom/badlogic/gdx/graphics/Pixmap$Filter;

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->k:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-direct {v1, p1, p2, p3, v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;-><init>(Ljava/nio/ByteBuffer;III)V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/Pixmap;->d:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p3, "Couldn\'t load pixmap from image data"

    invoke-direct {p2, p3, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p2, "Couldn\'t load pixmap from non-direct ByteBuffer"

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>([BII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->SourceOver:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->a:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Filter;->BiLinear:Lcom/badlogic/gdx/graphics/Pixmap$Filter;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->b:Lcom/badlogic/gdx/graphics/Pixmap$Filter;

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->k:I

    :try_start_0
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-direct {v1, p1, p2, p3, v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;-><init>([BIII)V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/Pixmap;->d:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string p3, "Couldn\'t load pixmap from image data"

    invoke-direct {p2, p3, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static createFromFrameBuffer(IIII)Lcom/badlogic/gdx/graphics/Pixmap;
    .locals 10

    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v1, 0xd05

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glPixelStorei(II)V

    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v0, p2, p3, v1}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v9

    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    move v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-interface/range {v2 .. v9}, Lcom/badlogic/gdx/graphics/GL20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    return-object v0
.end method

.method public static downloadFromUrl(Ljava/lang/String;Lcom/badlogic/gdx/graphics/Pixmap$DownloadPixmapResponseListener;)V
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/Net$HttpRequest;

    const-string v1, "GET"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/Net$HttpRequest;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/Net$HttpRequest;->setUrl(Ljava/lang/String;)V

    sget-object p0, Lcom/badlogic/gdx/Gdx;->net:Lcom/badlogic/gdx/Net;

    new-instance v1, Lcom/badlogic/gdx/graphics/Pixmap$1;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/graphics/Pixmap$1;-><init>(Lcom/badlogic/gdx/graphics/Pixmap$DownloadPixmapResponseListener;)V

    invoke-interface {p0, v0, v1}, Lcom/badlogic/gdx/Net;->sendHttpRequest(Lcom/badlogic/gdx/Net$HttpRequest;Lcom/badlogic/gdx/Net$HttpResponseListener;)V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->p:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->d:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->dispose()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->p:Z

    return-void

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Pixmap already disposed!"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public drawCircle(III)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->d:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    iget v1, p0, Lcom/badlogic/gdx/graphics/Pixmap;->k:I

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->drawCircle(IIII)V

    return-void
.end method

.method public drawLine(IIII)V
    .locals 6

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->d:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    iget v5, p0, Lcom/badlogic/gdx/graphics/Pixmap;->k:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->drawLine(IIIII)V

    return-void
.end method

.method public drawPixel(II)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->d:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    iget v1, p0, Lcom/badlogic/gdx/graphics/Pixmap;->k:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->setPixel(III)V

    return-void
.end method

.method public drawPixel(III)V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->d:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->setPixel(III)V

    return-void
.end method

.method public drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;II)V
    .locals 8

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/Pixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIII)V

    return-void
.end method

.method public drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIII)V
    .locals 8

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->d:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    iget-object v1, p1, Lcom/badlogic/gdx/graphics/Pixmap;->d:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    move v2, p4

    move v3, p5

    move v4, p2

    move v5, p3

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;IIIIII)V

    return-void
.end method

.method public drawPixmap(Lcom/badlogic/gdx/graphics/Pixmap;IIIIIIII)V
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/Pixmap;->d:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    move-object v2, p1

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/Pixmap;->d:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->drawPixmap(Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;IIIIIIII)V

    return-void
.end method

.method public drawRectangle(IIII)V
    .locals 6

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->d:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    iget v5, p0, Lcom/badlogic/gdx/graphics/Pixmap;->k:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->drawRect(IIIII)V

    return-void
.end method

.method public fill()V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->d:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    iget v1, p0, Lcom/badlogic/gdx/graphics/Pixmap;->k:I

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->clear(I)V

    return-void
.end method

.method public fillCircle(III)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->d:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    iget v1, p0, Lcom/badlogic/gdx/graphics/Pixmap;->k:I

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->fillCircle(IIII)V

    return-void
.end method

.method public fillRectangle(IIII)V
    .locals 6

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->d:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    iget v5, p0, Lcom/badlogic/gdx/graphics/Pixmap;->k:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->fillRect(IIIII)V

    return-void
.end method

.method public fillTriangle(IIIIII)V
    .locals 8

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->d:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    iget v7, p0, Lcom/badlogic/gdx/graphics/Pixmap;->k:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->fillTriangle(IIIIIII)V

    return-void
.end method

.method public getBlending()Lcom/badlogic/gdx/graphics/Pixmap$Blending;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->a:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    return-object v0
.end method

.method public getFilter()Lcom/badlogic/gdx/graphics/Pixmap$Filter;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->b:Lcom/badlogic/gdx/graphics/Pixmap$Filter;

    return-object v0
.end method

.method public getFormat()Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->d:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->getFormat()I

    move-result v0

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/Pixmap$Format;->fromGdx2DPixmapFormat(I)Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v0

    return-object v0
.end method

.method public getGLFormat()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->d:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->getGLFormat()I

    move-result v0

    return v0
.end method

.method public getGLInternalFormat()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->d:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->getGLInternalFormat()I

    move-result v0

    return v0
.end method

.method public getGLType()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->d:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->getGLType()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->d:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getPixel(II)I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->d:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->getPixel(II)I

    move-result p1

    return p1
.end method

.method public getPixels()Ljava/nio/ByteBuffer;
    .locals 2

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->p:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->d:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Pixmap already disposed"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->d:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public isDisposed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->p:Z

    return v0
.end method

.method public setBlending(Lcom/badlogic/gdx/graphics/Pixmap$Blending;)V
    .locals 2

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/Pixmap;->a:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->d:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Blending;->None:Lcom/badlogic/gdx/graphics/Pixmap$Blending;

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->setBlend(I)V

    return-void
.end method

.method public setColor(FFFF)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/Color;->rgba8888(FFFF)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/Pixmap;->k:I

    return-void
.end method

.method public setColor(I)V
    .locals 0

    iput p1, p0, Lcom/badlogic/gdx/graphics/Pixmap;->k:I

    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 3

    iget v0, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v2, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget p1, p1, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-static {v0, v1, v2, p1}, Lcom/badlogic/gdx/graphics/Color;->rgba8888(FFFF)I

    move-result p1

    iput p1, p0, Lcom/badlogic/gdx/graphics/Pixmap;->k:I

    return-void
.end method

.method public setFilter(Lcom/badlogic/gdx/graphics/Pixmap$Filter;)V
    .locals 2

    iput-object p1, p0, Lcom/badlogic/gdx/graphics/Pixmap;->b:Lcom/badlogic/gdx/graphics/Pixmap$Filter;

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->d:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    sget-object v1, Lcom/badlogic/gdx/graphics/Pixmap$Filter;->NearestNeighbour:Lcom/badlogic/gdx/graphics/Pixmap$Filter;

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->setScale(I)V

    return-void
.end method

.method public setPixels(Ljava/nio/ByteBuffer;)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/Pixmap;->d:Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/Gdx2DPixmap;->getPixels()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/badlogic/gdx/utils/BufferUtils;->copy(Ljava/nio/Buffer;Ljava/nio/Buffer;I)V

    return-void
.end method
