.class public Lnet/bytebuddy/build/Plugin$Engine$Source$ForFolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/build/Plugin$Engine$Source;
.implements Lnet/bytebuddy/build/Plugin$Engine$Source$Origin;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/Plugin$Engine$Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForFolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/build/Plugin$Engine$Source$ForFolder$FolderIterator;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final folder:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$ForFolder;->folder:Ljava/io/File;

    return-void
.end method

.method public static synthetic d(Lnet/bytebuddy/build/Plugin$Engine$Source$ForFolder;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$ForFolder;->folder:Ljava/io/File;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

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
    iget-object v2, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$ForFolder;->folder:Ljava/io/File;

    check-cast p1, Lnet/bytebuddy/build/Plugin$Engine$Source$ForFolder;

    iget-object p1, p1, Lnet/bytebuddy/build/Plugin$Engine$Source$ForFolder;->folder:Ljava/io/File;

    invoke-virtual {v2, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public getClassFileLocator()Lnet/bytebuddy/dynamic/ClassFileLocator;
    .locals 2

    new-instance v0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForFolder;

    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$ForFolder;->folder:Ljava/io/File;

    invoke-direct {v0, v1}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForFolder;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public getManifest()Ljava/util/jar/Manifest;
    .locals 3
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$ForFolder;->folder:Ljava/io/File;

    const-string v2, "META-INF/MANIFEST.MF"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    new-instance v0, Ljava/util/jar/Manifest;

    invoke-direct {v0, v1}, Ljava/util/jar/Manifest;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_0
    sget-object v0, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin;->NO_MANIFEST:Ljava/util/jar/Manifest;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$ForFolder;->folder:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lnet/bytebuddy/build/Plugin$Engine$Source$Element;",
            ">;"
        }
    .end annotation

    new-instance v0, Lnet/bytebuddy/build/Plugin$Engine$Source$ForFolder$FolderIterator;

    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$ForFolder;->folder:Ljava/io/File;

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/build/Plugin$Engine$Source$ForFolder$FolderIterator;-><init>(Lnet/bytebuddy/build/Plugin$Engine$Source$ForFolder;Ljava/io/File;)V

    return-object v0
.end method

.method public read()Lnet/bytebuddy/build/Plugin$Engine$Source$Origin;
    .locals 0

    return-object p0
.end method
