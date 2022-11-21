.class public Lnet/bytebuddy/build/Plugin$Engine$Target$Sink$ForJarOutputStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/build/Plugin$Engine$Target$Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/Plugin$Engine$Target$Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForJarOutputStream"
.end annotation


# instance fields
.field private final outputStream:Ljava/util/jar/JarOutputStream;


# direct methods
.method public constructor <init>(Ljava/util/jar/JarOutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/build/Plugin$Engine$Target$Sink$ForJarOutputStream;->outputStream:Ljava/util/jar/JarOutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/build/Plugin$Engine$Target$Sink$ForJarOutputStream;->outputStream:Ljava/util/jar/JarOutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public retain(Lnet/bytebuddy/build/Plugin$Engine$Source$Element;)V
    .locals 4

    const-class v0, Ljava/util/jar/JarEntry;

    invoke-interface {p1, v0}, Lnet/bytebuddy/build/Plugin$Engine$Source$Element;->resolveAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarEntry;

    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Engine$Target$Sink$ForJarOutputStream;->outputStream:Ljava/util/jar/JarOutputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/jar/JarEntry;

    invoke-interface {p1}, Lnet/bytebuddy/build/Plugin$Engine$Source$Element;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/jar/JarEntry;-><init>(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    invoke-interface {p1}, Lnet/bytebuddy/build/Plugin$Engine$Source$Element;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    const/16 v0, 0x400

    :try_start_0
    new-array v0, v0, [B

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lnet/bytebuddy/build/Plugin$Engine$Target$Sink$ForJarOutputStream;->outputStream:Ljava/util/jar/JarOutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    iget-object p1, p0, Lnet/bytebuddy/build/Plugin$Engine$Target$Sink$ForJarOutputStream;->outputStream:Ljava/util/jar/JarOutputStream;

    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public store(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/type/TypeDescription;",
            "[B>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Engine$Target$Sink$ForJarOutputStream;->outputStream:Ljava/util/jar/JarOutputStream;

    new-instance v2, Ljava/util/jar/JarEntry;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v4}, Lnet/bytebuddy/description/NamedElement$WithRuntimeName;->getInternalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".class"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/jar/JarEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Engine$Target$Sink$ForJarOutputStream;->outputStream:Ljava/util/jar/JarOutputStream;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lnet/bytebuddy/build/Plugin$Engine$Target$Sink$ForJarOutputStream;->outputStream:Ljava/util/jar/JarOutputStream;

    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    goto :goto_0

    :cond_0
    return-void
.end method
