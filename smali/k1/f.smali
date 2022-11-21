.class public final Lk1/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk1/f$b;,
        Lk1/f$c;,
        Lk1/f$e;,
        Lk1/f$d;,
        Lk1/f$f;,
        Lk1/f$j;,
        Lk1/f$i;,
        Lk1/f$h;,
        Lk1/f$g;
    }
.end annotation


# static fields
.field public static final j:[S


# instance fields
.field public a:Ljava/nio/ByteBuffer;

.field public final b:Lk1/s;

.field public c:I

.field public final d:Lk1/f$h;

.field public final e:Lk1/f$i;

.field public final f:Lk1/f$j;

.field public final g:Lk1/f$f;

.field public final h:Lk1/f$d;

.field public final i:Lk1/f$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [S

    sput-object v0, Lk1/f;->j:[S

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lk1/s;

    invoke-direct {v0}, Lk1/s;-><init>()V

    iput-object v0, p0, Lk1/f;->b:Lk1/s;

    const/4 v0, 0x0

    iput v0, p0, Lk1/f;->c:I

    new-instance v0, Lk1/f$h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lk1/f$h;-><init>(Lk1/f;Lk1/f$a;)V

    iput-object v0, p0, Lk1/f;->d:Lk1/f$h;

    new-instance v0, Lk1/f$i;

    invoke-direct {v0, p0, v1}, Lk1/f$i;-><init>(Lk1/f;Lk1/f$a;)V

    iput-object v0, p0, Lk1/f;->e:Lk1/f$i;

    new-instance v0, Lk1/f$j;

    invoke-direct {v0, p0, v1}, Lk1/f$j;-><init>(Lk1/f;Lk1/f$a;)V

    iput-object v0, p0, Lk1/f;->f:Lk1/f$j;

    new-instance v0, Lk1/f$f;

    invoke-direct {v0, p0, v1}, Lk1/f$f;-><init>(Lk1/f;Lk1/f$a;)V

    iput-object v0, p0, Lk1/f;->g:Lk1/f$f;

    new-instance v0, Lk1/f$d;

    invoke-direct {v0, p0, v1}, Lk1/f$d;-><init>(Lk1/f;Lk1/f$a;)V

    iput-object v0, p0, Lk1/f;->h:Lk1/f$d;

    new-instance v0, Lk1/f$e;

    invoke-direct {v0, p0, v1}, Lk1/f$e;-><init>(Lk1/f;Lk1/f$a;)V

    iput-object v0, p0, Lk1/f;->i:Lk1/f$e;

    new-array p1, p1, [B

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lk1/f;->a:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lk1/s;

    invoke-direct {v0}, Lk1/s;-><init>()V

    iput-object v0, p0, Lk1/f;->b:Lk1/s;

    const/4 v0, 0x0

    iput v0, p0, Lk1/f;->c:I

    new-instance v0, Lk1/f$h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lk1/f$h;-><init>(Lk1/f;Lk1/f$a;)V

    iput-object v0, p0, Lk1/f;->d:Lk1/f$h;

    new-instance v0, Lk1/f$i;

    invoke-direct {v0, p0, v1}, Lk1/f$i;-><init>(Lk1/f;Lk1/f$a;)V

    iput-object v0, p0, Lk1/f;->e:Lk1/f$i;

    new-instance v0, Lk1/f$j;

    invoke-direct {v0, p0, v1}, Lk1/f$j;-><init>(Lk1/f;Lk1/f$a;)V

    iput-object v0, p0, Lk1/f;->f:Lk1/f$j;

    new-instance v0, Lk1/f$f;

    invoke-direct {v0, p0, v1}, Lk1/f$f;-><init>(Lk1/f;Lk1/f$a;)V

    iput-object v0, p0, Lk1/f;->g:Lk1/f$f;

    new-instance v0, Lk1/f$d;

    invoke-direct {v0, p0, v1}, Lk1/f$d;-><init>(Lk1/f;Lk1/f$a;)V

    iput-object v0, p0, Lk1/f;->h:Lk1/f$d;

    new-instance v0, Lk1/f$e;

    invoke-direct {v0, p0, v1}, Lk1/f$e;-><init>(Lk1/f;Lk1/f$a;)V

    iput-object v0, p0, Lk1/f;->i:Lk1/f$e;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ll1/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    const-string v1, "classes.dex"

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p1

    :try_start_0
    invoke-virtual {p0, p1}, Lk1/f;->o(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_1

    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-static {v0, p1}, Lv/f;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1

    :cond_2
    new-instance v0, Lk1/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected classes.dex in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lk1/g;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".dex"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_3
    invoke-virtual {p0, v0}, Lk1/f;->o(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :goto_1
    return-void

    :catchall_3
    move-exception p1

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    move-exception v1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v0

    invoke-static {p1, v0}, Lv/f;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_2
    throw v1

    :cond_4
    new-instance v0, Lk1/g;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown output extension: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lk1/g;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lk1/s;

    invoke-direct {v0}, Lk1/s;-><init>()V

    iput-object v0, p0, Lk1/f;->b:Lk1/s;

    const/4 v1, 0x0

    iput v1, p0, Lk1/f;->c:I

    new-instance v1, Lk1/f$h;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lk1/f$h;-><init>(Lk1/f;Lk1/f$a;)V

    iput-object v1, p0, Lk1/f;->d:Lk1/f$h;

    new-instance v1, Lk1/f$i;

    invoke-direct {v1, p0, v2}, Lk1/f$i;-><init>(Lk1/f;Lk1/f$a;)V

    iput-object v1, p0, Lk1/f;->e:Lk1/f$i;

    new-instance v1, Lk1/f$j;

    invoke-direct {v1, p0, v2}, Lk1/f$j;-><init>(Lk1/f;Lk1/f$a;)V

    iput-object v1, p0, Lk1/f;->f:Lk1/f$j;

    new-instance v1, Lk1/f$f;

    invoke-direct {v1, p0, v2}, Lk1/f$f;-><init>(Lk1/f;Lk1/f$a;)V

    iput-object v1, p0, Lk1/f;->g:Lk1/f$f;

    new-instance v1, Lk1/f$d;

    invoke-direct {v1, p0, v2}, Lk1/f$d;-><init>(Lk1/f;Lk1/f$a;)V

    iput-object v1, p0, Lk1/f;->h:Lk1/f$d;

    new-instance v1, Lk1/f$e;

    invoke-direct {v1, p0, v2}, Lk1/f$e;-><init>(Lk1/f;Lk1/f$a;)V

    iput-object v1, p0, Lk1/f;->i:Lk1/f$e;

    iput-object p1, p0, Lk1/f;->a:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p0}, Lk1/s;->c(Lk1/f;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lk1/f;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static synthetic a(Lk1/f;)Lk1/s;
    .locals 0

    iget-object p0, p0, Lk1/f;->b:Lk1/s;

    return-object p0
.end method

.method public static synthetic b(II)V
    .locals 0

    invoke-static {p0, p1}, Lk1/f;->e(II)V

    return-void
.end method

.method public static synthetic c(Lk1/f;)Lk1/f$h;
    .locals 0

    iget-object p0, p0, Lk1/f;->d:Lk1/f$h;

    return-object p0
.end method

.method public static e(II)V
    .locals 3

    if-ltz p0, :cond_0

    if-ge p0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", length="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public d(ILjava/lang/String;)Lk1/f$g;
    .locals 3

    and-int/lit8 v0, p1, 0x3

    if-nez v0, :cond_0

    iget v0, p0, Lk1/f;->c:I

    add-int/2addr v0, p1

    iget-object p1, p0, Lk1/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p1

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget v1, p0, Lk1/f;->c:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    new-instance v1, Lk1/f$g;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, p1, v2}, Lk1/f$g;-><init>(Lk1/f;Ljava/lang/String;Ljava/nio/ByteBuffer;Lk1/f$a;)V

    iput v0, p0, Lk1/f;->c:I

    return-object v1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not four byte aligned!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f()Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lk1/d;",
            ">;"
        }
    .end annotation

    new-instance v0, Lk1/f$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lk1/f$b;-><init>(Lk1/f;Lk1/f$a;)V

    return-object v0
.end method

.method public g()I
    .locals 6

    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    const/16 v1, 0x2000

    new-array v2, v1, [B

    iget-object v3, p0, Lk1/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/Buffer;->capacity()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_0
    invoke-virtual {v3}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2, v5, v4}, Ljava/util/zip/Adler32;->update([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public h()[B
    .locals 6

    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x2000

    new-array v2, v1, [B

    iget-object v3, p0, Lk1/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/Buffer;->capacity()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_0
    invoke-virtual {v3}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/nio/Buffer;->remaining()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2, v5, v4}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public i(I)I
    .locals 1

    iget-object v0, p0, Lk1/f;->b:Lk1/s;

    iget-object v0, v0, Lk1/s;->c:Lk1/s$a;

    iget v0, v0, Lk1/s$a;->b:I

    invoke-static {p1, v0}, Lk1/f;->e(II)V

    iget-object v0, p0, Lk1/f;->b:Lk1/s;

    iget-object v0, v0, Lk1/s;->c:Lk1/s$a;

    iget v0, v0, Lk1/s$a;->d:I

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr v0, p1

    iget-object p1, p0, Lk1/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p1

    return p1
.end method

.method public j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lk1/m;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lk1/f;->h:Lk1/f$d;

    return-object v0
.end method

.method public k()[B
    .locals 3

    iget-object v0, p0, Lk1/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v1
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, Lk1/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lk1/f;->c:I

    return v0
.end method

.method public n()Lk1/s;
    .locals 1

    iget-object v0, p0, Lk1/f;->b:Lk1/s;

    return-object v0
.end method

.method public final o(Ljava/io/InputStream;)V
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x2000

    new-array v1, v1, [B

    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lk1/f;->a:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lk1/f;->b:Lk1/s;

    invoke-virtual {p1, p0}, Lk1/s;->c(Lk1/f;)V

    return-void
.end method

.method public p()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lk1/p;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lk1/f;->i:Lk1/f$e;

    return-object v0
.end method

.method public q(I)Lk1/f$g;
    .locals 3

    if-ltz p1, :cond_0

    iget-object v0, p0, Lk1/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lk1/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lk1/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    new-instance p1, Lk1/f$g;

    const/4 v1, 0x0

    const-string v2, "section"

    invoke-direct {p1, p0, v2, v0, v1}, Lk1/f$g;-><init>(Lk1/f;Ljava/lang/String;Ljava/nio/ByteBuffer;Lk1/f$a;)V

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " length="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lk1/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public r()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lk1/r;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lk1/f;->g:Lk1/f$f;

    return-object v0
.end method

.method public s(Lk1/d;)Lk1/c;
    .locals 1

    invoke-virtual {p1}, Lk1/d;->c()I

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lk1/f;->q(I)Lk1/f$g;

    move-result-object p1

    invoke-static {p1}, Lk1/f$g;->m(Lk1/f$g;)Lk1/c;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "offset == 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public t(Lk1/c$b;)Lk1/e;
    .locals 1

    invoke-virtual {p1}, Lk1/c$b;->b()I

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lk1/f;->q(I)Lk1/f$g;

    move-result-object p1

    invoke-static {p1}, Lk1/f$g;->n(Lk1/f$g;)Lk1/e;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "offset == 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public u(I)Lk1/t;
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lk1/t;->d:Lk1/t;

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lk1/f;->q(I)Lk1/f$g;

    move-result-object p1

    invoke-virtual {p1}, Lk1/f$g;->P()Lk1/t;

    move-result-object p1

    return-object p1
.end method

.method public v()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lk1/f;->d:Lk1/f$h;

    return-object v0
.end method

.method public w()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lk1/f;->f:Lk1/f$j;

    return-object v0
.end method

.method public x()V
    .locals 2

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lk1/f;->q(I)Lk1/f$g;

    move-result-object v0

    invoke-virtual {p0}, Lk1/f;->h()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lk1/f$g;->write([B)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lk1/f;->q(I)Lk1/f$g;

    move-result-object v0

    invoke-virtual {p0}, Lk1/f;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lk1/f$g;->writeInt(I)V

    return-void
.end method

.method public y(Ljava/io/OutputStream;)V
    .locals 5

    const/16 v0, 0x2000

    new-array v1, v0, [B

    iget-object v2, p0, Lk1/f;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_0
    invoke-virtual {v2}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return-void
.end method
