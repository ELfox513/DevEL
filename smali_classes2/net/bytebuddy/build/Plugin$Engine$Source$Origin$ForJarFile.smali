.class public Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$ForJarFile;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/bytebuddy/build/Plugin$Engine$Source$Origin;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/Plugin$Engine$Source$Origin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForJarFile"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$ForJarFile$JarFileIterator;
    }
.end annotation


# instance fields
.field private final file:Ljava/util/jar/JarFile;


# direct methods
.method public constructor <init>(Ljava/util/jar/JarFile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$ForJarFile;->file:Ljava/util/jar/JarFile;

    return-void
.end method

.method public static synthetic d(Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$ForJarFile;)Ljava/util/jar/JarFile;
    .locals 0

    iget-object p0, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$ForJarFile;->file:Ljava/util/jar/JarFile;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$ForJarFile;->file:Ljava/util/jar/JarFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    return-void
.end method

.method public getClassFileLocator()Lnet/bytebuddy/dynamic/ClassFileLocator;
    .locals 2

    new-instance v0, Lnet/bytebuddy/dynamic/ClassFileLocator$ForJarFile;

    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$ForJarFile;->file:Ljava/util/jar/JarFile;

    invoke-direct {v0, v1}, Lnet/bytebuddy/dynamic/ClassFileLocator$ForJarFile;-><init>(Ljava/util/jar/JarFile;)V

    return-object v0
.end method

.method public getManifest()Ljava/util/jar/Manifest;
    .locals 1
    .annotation runtime Lnet/bytebuddy/utility/nullability/MaybeNull;
    .end annotation

    iget-object v0, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$ForJarFile;->file:Ljava/util/jar/JarFile;

    invoke-virtual {v0}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v0

    return-object v0
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

    new-instance v0, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$ForJarFile$JarFileIterator;

    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$ForJarFile;->file:Ljava/util/jar/JarFile;

    invoke-virtual {v1}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$ForJarFile$JarFileIterator;-><init>(Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$ForJarFile;Ljava/util/Enumeration;)V

    return-object v0
.end method
