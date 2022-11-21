.class public Lnet/bytebuddy/build/Plugin$Engine$Source$ForFolder$FolderIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/build/Plugin$Engine$Source$ForFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FolderIterator"
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
.field public final synthetic a:Lnet/bytebuddy/build/Plugin$Engine$Source$ForFolder;

.field private final files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/bytebuddy/build/Plugin$Engine$Source$ForFolder;Ljava/io/File;)V
    .locals 2

    iput-object p1, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$ForFolder$FolderIterator;->a:Lnet/bytebuddy/build/Plugin$Engine$Source$ForFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$ForFolder$FolderIterator;->files:Ljava/util/List;

    :cond_0
    iget-object p1, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$ForFolder$FolderIterator;->files:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$ForFolder$FolderIterator;->files:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object p1, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$ForFolder$FolderIterator;->files:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$ForFolder$FolderIterator;->files:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$ForFolder$FolderIterator;->files:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "META-INF/MANIFEST.MF"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    :cond_2
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$ForFolder$FolderIterator;->files:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "Exception is thrown by invoking removeFirst on an empty list."
        value = {
            "IT_NO_SUCH_ELEMENT"
        }
    .end annotation

    invoke-virtual {p0}, Lnet/bytebuddy/build/Plugin$Engine$Source$ForFolder$FolderIterator;->next()Lnet/bytebuddy/build/Plugin$Engine$Source$Element;

    move-result-object v0

    return-object v0
.end method

.method public next()Lnet/bytebuddy/build/Plugin$Engine$Source$Element;
    .locals 5
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "Exception is thrown by invoking removeFirst on an empty list."
        value = {
            "IT_NO_SUCH_ELEMENT"
        }
    .end annotation

    const-string v0, "META-INF/MANIFEST.MF"

    :try_start_0
    new-instance v1, Lnet/bytebuddy/build/Plugin$Engine$Source$Element$ForFile;

    iget-object v2, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$ForFolder$FolderIterator;->a:Lnet/bytebuddy/build/Plugin$Engine$Source$ForFolder;

    invoke-static {v2}, Lnet/bytebuddy/build/Plugin$Engine$Source$ForFolder;->d(Lnet/bytebuddy/build/Plugin$Engine$Source$ForFolder;)Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$ForFolder$FolderIterator;->files:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-direct {v1, v2, v3}, Lnet/bytebuddy/build/Plugin$Engine$Source$Element$ForFile;-><init>(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    iget-object v2, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$ForFolder$FolderIterator;->files:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$ForFolder$FolderIterator;->files:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$ForFolder$FolderIterator;->files:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$ForFolder$FolderIterator;->a:Lnet/bytebuddy/build/Plugin$Engine$Source$ForFolder;

    invoke-static {v4}, Lnet/bytebuddy/build/Plugin$Engine$Source$ForFolder;->d(Lnet/bytebuddy/build/Plugin$Engine$Source$ForFolder;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$ForFolder$FolderIterator;->files:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$ForFolder$FolderIterator;->files:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    return-object v1

    :catchall_0
    move-exception v1

    :cond_3
    :goto_1
    iget-object v2, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$ForFolder$FolderIterator;->files:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$ForFolder$FolderIterator;->files:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$ForFolder$FolderIterator;->files:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$ForFolder$FolderIterator;->a:Lnet/bytebuddy/build/Plugin$Engine$Source$ForFolder;

    invoke-static {v4}, Lnet/bytebuddy/build/Plugin$Engine$Source$ForFolder;->d(Lnet/bytebuddy/build/Plugin$Engine$Source$ForFolder;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$ForFolder$FolderIterator;->files:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, p0, Lnet/bytebuddy/build/Plugin$Engine$Source$ForFolder$FolderIterator;->files:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_5
    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
