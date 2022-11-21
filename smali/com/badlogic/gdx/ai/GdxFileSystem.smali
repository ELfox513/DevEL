.class public Lcom/badlogic/gdx/ai/GdxFileSystem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/ai/FileSystem;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newFileHandle(Ljava/io/File;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p1

    return-object p1
.end method

.method public newFileHandle(Ljava/io/File;Lcom/badlogic/gdx/Files$FileType;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/Files;->getFileHandle(Ljava/lang/String;Lcom/badlogic/gdx/Files$FileType;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p1

    return-object p1
.end method

.method public newFileHandle(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v0, p1}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p1

    return-object p1
.end method

.method public newFileHandle(Ljava/lang/String;Lcom/badlogic/gdx/Files$FileType;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v0, p1, p2}, Lcom/badlogic/gdx/Files;->getFileHandle(Ljava/lang/String;Lcom/badlogic/gdx/Files$FileType;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p1

    return-object p1
.end method

.method public newResolver(Lcom/badlogic/gdx/Files$FileType;)Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/ai/GdxFileSystem$1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Lcom/badlogic/gdx/assets/loaders/resolvers/LocalFileHandleResolver;

    invoke-direct {p1}, Lcom/badlogic/gdx/assets/loaders/resolvers/LocalFileHandleResolver;-><init>()V

    return-object p1

    :cond_1
    new-instance p1, Lcom/badlogic/gdx/assets/loaders/resolvers/InternalFileHandleResolver;

    invoke-direct {p1}, Lcom/badlogic/gdx/assets/loaders/resolvers/InternalFileHandleResolver;-><init>()V

    return-object p1

    :cond_2
    new-instance p1, Lcom/badlogic/gdx/assets/loaders/resolvers/ExternalFileHandleResolver;

    invoke-direct {p1}, Lcom/badlogic/gdx/assets/loaders/resolvers/ExternalFileHandleResolver;-><init>()V

    return-object p1

    :cond_3
    new-instance p1, Lcom/badlogic/gdx/assets/loaders/resolvers/ClasspathFileHandleResolver;

    invoke-direct {p1}, Lcom/badlogic/gdx/assets/loaders/resolvers/ClasspathFileHandleResolver;-><init>()V

    return-object p1

    :cond_4
    new-instance p1, Lcom/badlogic/gdx/assets/loaders/resolvers/AbsoluteFileHandleResolver;

    invoke-direct {p1}, Lcom/badlogic/gdx/assets/loaders/resolvers/AbsoluteFileHandleResolver;-><init>()V

    return-object p1
.end method
