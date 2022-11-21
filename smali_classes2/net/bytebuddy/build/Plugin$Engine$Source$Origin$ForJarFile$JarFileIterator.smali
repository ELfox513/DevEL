.class public Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$ForJarFile$JarFileIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$ForJarFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JarFileIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lnet/bytebuddy/build/Plugin$Engine$Source$Element;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$ForJarFile;

.field private final enumeration:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration<",
            "Ljava/util/jar/JarEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$ForJarFile;Ljava/util/Enumeration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration<",
            "Ljava/util/jar/JarEntry;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$ForJarFile$JarFileIterator;->a:Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$ForJarFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$ForJarFile$JarFileIterator;->enumeration:Ljava/util/Enumeration;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$ForJarFile$JarFileIterator;->enumeration:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$ForJarFile$JarFileIterator;->next()Lnet/bytebuddy/build/Plugin$Engine$Source$Element;

    move-result-object v0

    return-object v0
.end method

.method public next()Lnet/bytebuddy/build/Plugin$Engine$Source$Element;
    .locals 3

    new-instance v0, Lnet/bytebuddy/build/Plugin$Engine$Source$Element$ForJarEntry;

    iget-object v1, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$ForJarFile$JarFileIterator;->a:Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$ForJarFile;

    invoke-static {v1}, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$ForJarFile;->d(Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$ForJarFile;)Ljava/util/jar/JarFile;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$Origin$ForJarFile$JarFileIterator;->enumeration:Ljava/util/Enumeration;

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/jar/JarEntry;

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/build/Plugin$Engine$Source$Element$ForJarEntry;-><init>(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)V

    return-object v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
