.class public Lnet/bytebuddy/build/Plugin$Engine$Source$Element$ForJarEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/build/Plugin$Engine$Source$Element;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/Plugin$Engine$Source$Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForJarEntry"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final entry:Ljava/util/jar/JarEntry;

.field private final file:Ljava/util/jar/JarFile;


# direct methods
.method public constructor <init>(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Element$ForJarEntry;->file:Ljava/util/jar/JarFile;

    iput-object p2, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Element$ForJarEntry;->entry:Ljava/util/jar/JarEntry;

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
    iget-object v2, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Element$ForJarEntry;->file:Ljava/util/jar/JarFile;

    check-cast p1, Lnet/bytebuddy/build/Plugin$Engine$Source$Element$ForJarEntry;

    iget-object v3, p1, Lnet/bytebuddy/build/Plugin$Engine$Source$Element$ForJarEntry;->file:Ljava/util/jar/JarFile;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Element$ForJarEntry;->entry:Ljava/util/jar/JarEntry;

    iget-object p1, p1, Lnet/bytebuddy/build/Plugin$Engine$Source$Element$ForJarEntry;->entry:Ljava/util/jar/JarEntry;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Element$ForJarEntry;->file:Ljava/util/jar/JarFile;

    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Element$ForJarEntry;->entry:Ljava/util/jar/JarEntry;

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Element$ForJarEntry;->entry:Ljava/util/jar/JarEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Element$ForJarEntry;->file:Ljava/util/jar/JarFile;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Element$ForJarEntry;->entry:Ljava/util/jar/JarEntry;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public resolveAs(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    const-class v0, Ljava/util/jar/JarEntry;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Element$ForJarEntry;->entry:Ljava/util/jar/JarEntry;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
