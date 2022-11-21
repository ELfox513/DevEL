.class public Lnet/bytebuddy/build/Plugin$Engine$Target$ForJarFile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/build/Plugin$Engine$Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/Plugin$Engine$Target;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForJarFile"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/build/Plugin$Engine$Target$ForJarFile;->file:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lnet/bytebuddy/build/Plugin$Engine$Target$ForJarFile;->file:Ljava/io/File;

    check-cast p1, Lnet/bytebuddy/build/Plugin$Engine$Target$ForJarFile;

    iget-object p1, p1, Lnet/bytebuddy/build/Plugin$Engine$Target$ForJarFile;->file:Ljava/io/File;

    invoke-virtual {v2, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Engine$Target$ForJarFile;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public write(Ljava/util/jar/Manifest;)Lnet/bytebuddy/build/Plugin$Engine$Target$Sink;
    .locals 4
    .param p1    # Ljava/util/jar/Manifest;
        .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    new-instance p1, Lnet/bytebuddy/build/Plugin$Engine$Target$Sink$ForJarOutputStream;

    new-instance v0, Ljava/util/jar/JarOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lnet/bytebuddy/build/Plugin$Engine$Target$ForJarFile;->file:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p1, v0}, Lnet/bytebuddy/build/Plugin$Engine$Target$Sink$ForJarOutputStream;-><init>(Ljava/util/jar/JarOutputStream;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lnet/bytebuddy/build/Plugin$Engine$Target$Sink$ForJarOutputStream;

    new-instance v1, Ljava/util/jar/JarOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lnet/bytebuddy/build/Plugin$Engine$Target$ForJarFile;->file:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2, p1}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/jar/Manifest;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/build/Plugin$Engine$Target$Sink$ForJarOutputStream;-><init>(Ljava/util/jar/JarOutputStream;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
