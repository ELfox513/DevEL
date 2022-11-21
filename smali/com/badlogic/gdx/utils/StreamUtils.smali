.class public final Lcom/badlogic/gdx/utils/StreamUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/StreamUtils$OptimizedByteArrayOutputStream;
    }
.end annotation


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x1000

.field public static final EMPTY_BYTES:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/badlogic/gdx/utils/StreamUtils;->EMPTY_BYTES:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/nio/ByteBuffer;[B)I
    .locals 5

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    invoke-static {p2, v1, p1, v3}, Lcom/badlogic/gdx/utils/BufferUtils;->copy([BILjava/nio/Buffer;I)V

    add-int/2addr v2, v3

    add-int v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    return v2
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1

    const/16 v0, 0x1000

    new-array v0, v0, [B

    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/utils/StreamUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V

    return-void
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .locals 0

    new-array p2, p2, [B

    invoke-static {p0, p1, p2}, Lcom/badlogic/gdx/utils/StreamUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V

    return-void
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V
    .locals 2

    :goto_0
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/nio/ByteBuffer;)V
    .locals 1

    const/16 v0, 0x1000

    new-array v0, v0, [B

    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/utils/StreamUtils;->copyStream(Ljava/io/InputStream;Ljava/nio/ByteBuffer;[B)I

    return-void
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/nio/ByteBuffer;I)V
    .locals 0

    new-array p2, p2, [B

    invoke-static {p0, p1, p2}, Lcom/badlogic/gdx/utils/StreamUtils;->copyStream(Ljava/io/InputStream;Ljava/nio/ByteBuffer;[B)I

    return-void
.end method

.method public static copyStreamToByteArray(Ljava/io/InputStream;)[B
    .locals 1

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    invoke-static {p0, v0}, Lcom/badlogic/gdx/utils/StreamUtils;->copyStreamToByteArray(Ljava/io/InputStream;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static copyStreamToByteArray(Ljava/io/InputStream;I)[B
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/utils/StreamUtils$OptimizedByteArrayOutputStream;

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/utils/StreamUtils$OptimizedByteArrayOutputStream;-><init>(I)V

    invoke-static {p0, v0}, Lcom/badlogic/gdx/utils/StreamUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static copyStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/badlogic/gdx/utils/StreamUtils;->copyStreamToString(Ljava/io/InputStream;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static copyStreamToString(Ljava/io/InputStream;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/utils/StreamUtils;->copyStreamToString(Ljava/io/InputStream;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static copyStreamToString(Ljava/io/InputStream;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation build Lcom/badlogic/gdx/utils/Null;
        .end annotation
    .end param

    if-nez p2, :cond_0

    new-instance p2, Ljava/io/InputStreamReader;

    invoke-direct {p2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object p2, v0

    :goto_0
    new-instance p0, Ljava/io/StringWriter;

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-direct {p0, p1}, Ljava/io/StringWriter;-><init>(I)V

    const/16 p1, 0x1000

    new-array p1, p1, [C

    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/Reader;->read([C)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/StringWriter;->write([CII)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
