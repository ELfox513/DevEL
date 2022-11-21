.class public Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;
.super Lcom/badlogic/gdx/backends/android/AndroidFileHandle;
.source "SourceFile"


# instance fields
.field public d:Z

.field public e:J

.field public f:Lcom/badlogic/gdx/backends/android/ZipResourceFile;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/badlogic/gdx/Files$FileType;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;-><init>(Landroid/content/res/AssetManager;Ljava/io/File;Lcom/badlogic/gdx/Files$FileType;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->g()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/Files$FileType;->Internal:Lcom/badlogic/gdx/Files$FileType;

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lcom/badlogic/gdx/backends/android/AndroidFileHandle;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;Lcom/badlogic/gdx/Files$FileType;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->g()V

    return-void
.end method


# virtual methods
.method public child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/badlogic/gdx/files/FileHandle;->b:Lcom/badlogic/gdx/Files$FileType;

    invoke-direct {v0, v1, p1}, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;-><init>(Ljava/io/File;Lcom/badlogic/gdx/Files$FileType;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->a:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/badlogic/gdx/files/FileHandle;->b:Lcom/badlogic/gdx/Files$FileType;

    invoke-direct {v0, v1, p1}, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;-><init>(Ljava/io/File;Lcom/badlogic/gdx/Files$FileType;)V

    return-object v0
.end method

.method public exists()Z
    .locals 2

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->f:Lcom/badlogic/gdx/backends/android/ZipResourceFile;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/backends/android/ZipResourceFile;->b(Ljava/lang/String;)[Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5c

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->g:Ljava/lang/String;

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    check-cast v0, Lcom/badlogic/gdx/backends/android/AndroidFiles;

    invoke-interface {v0}, Lcom/badlogic/gdx/backends/android/AndroidFiles;->getExpansionFile()Lcom/badlogic/gdx/backends/android/ZipResourceFile;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->f:Lcom/badlogic/gdx/backends/android/ZipResourceFile;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/backends/android/ZipResourceFile;->getAssetFileDescriptor(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->d:Z

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->e:J

    :try_start_0
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->d:Z

    :goto_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->g:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public getAssetFileDescriptor()Landroid/content/res/AssetFileDescriptor;
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->f:Lcom/badlogic/gdx/backends/android/ZipResourceFile;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/backends/android/ZipResourceFile;->getAssetFileDescriptor(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public isDirectory()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->d:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public length()J
    .locals 2

    iget-boolean v0, p0, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->d:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->e:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public list()[Lcom/badlogic/gdx/files/FileHandle;
    .locals 8

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->f:Lcom/badlogic/gdx/backends/android/ZipResourceFile;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/backends/android/ZipResourceFile;->b(Ljava/lang/String;)[Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [Lcom/badlogic/gdx/files/FileHandle;

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v5, v0, v3

    iget-object v5, v5, Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v4, 0x1

    new-instance v6, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;

    aget-object v7, v0, v3

    iget-object v7, v7, Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    invoke-direct {v6, v7}, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;-><init>(Ljava/lang/String;)V

    aput-object v6, v1, v4

    move v4, v5

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public list(Ljava/io/FileFilter;)[Lcom/badlogic/gdx/files/FileHandle;
    .locals 9

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->f:Lcom/badlogic/gdx/backends/android/ZipResourceFile;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/backends/android/ZipResourceFile;->b(Ljava/lang/String;)[Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    new-array v2, v1, [Lcom/badlogic/gdx/files/FileHandle;

    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v7, v0, v5

    iget-object v7, v7, Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->f()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v7, v8, :cond_0

    goto :goto_1

    :cond_0
    new-instance v7, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;

    aget-object v8, v0, v5

    iget-object v8, v8, Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    invoke-direct {v7, v8}, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/badlogic/gdx/files/FileHandle;->file()Ljava/io/File;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    aput-object v7, v2, v6

    add-int/lit8 v6, v6, 0x1

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    if-ge v6, v1, :cond_3

    new-array p1, v6, [Lcom/badlogic/gdx/files/FileHandle;

    invoke-static {v2, v4, p1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, p1

    :cond_3
    return-object v2
.end method

.method public list(Ljava/io/FilenameFilter;)[Lcom/badlogic/gdx/files/FileHandle;
    .locals 9

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->f:Lcom/badlogic/gdx/backends/android/ZipResourceFile;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/backends/android/ZipResourceFile;->b(Ljava/lang/String;)[Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    new-array v2, v1, [Lcom/badlogic/gdx/files/FileHandle;

    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v7, v0, v5

    iget-object v7, v7, Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->f()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v7, v8, :cond_0

    goto :goto_1

    :cond_0
    aget-object v7, v0, v5

    iget-object v7, v7, Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    iget-object v8, p0, Lcom/badlogic/gdx/files/FileHandle;->a:Ljava/io/File;

    invoke-interface {p1, v8, v7}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    new-instance v8, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;

    invoke-direct {v8, v7}, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;-><init>(Ljava/lang/String;)V

    aput-object v8, v2, v6

    add-int/lit8 v6, v6, 0x1

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    if-ge v6, v1, :cond_3

    new-array p1, v6, [Lcom/badlogic/gdx/files/FileHandle;

    invoke-static {v2, v4, p1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, p1

    :cond_3
    return-object v2
.end method

.method public list(Ljava/lang/String;)[Lcom/badlogic/gdx/files/FileHandle;
    .locals 9

    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->f:Lcom/badlogic/gdx/backends/android/ZipResourceFile;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/backends/android/ZipResourceFile;->b(Ljava/lang/String;)[Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;

    move-result-object v0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    new-array v2, v1, [Lcom/badlogic/gdx/files/FileHandle;

    array-length v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v7, v0, v5

    iget-object v7, v7, Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->f()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v7, v8, :cond_0

    goto :goto_1

    :cond_0
    aget-object v7, v0, v5

    iget-object v7, v7, Lcom/badlogic/gdx/backends/android/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    new-instance v8, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;

    invoke-direct {v8, v7}, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;-><init>(Ljava/lang/String;)V

    aput-object v8, v2, v6

    add-int/lit8 v6, v6, 0x1

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    if-ge v6, v1, :cond_3

    new-array p1, v6, [Lcom/badlogic/gdx/files/FileHandle;

    invoke-static {v2, v4, p1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, p1

    :cond_3
    return-object v2
.end method

.method public parent()Lcom/badlogic/gdx/files/FileHandle;
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public read()Ljava/io/InputStream;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->f:Lcom/badlogic/gdx/backends/android/ZipResourceFile;

    invoke-virtual {p0}, Lcom/badlogic/gdx/backends/android/AndroidZipFileHandle;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/backends/android/ZipResourceFile;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/badlogic/gdx/files/FileHandle;->a:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " (ZipResourceFile)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public sibling(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/badlogic/gdx/files/FileHandle;->b:Lcom/badlogic/gdx/Files$FileType;

    invoke-interface {v0, p1, v1}, Lcom/badlogic/gdx/Files;->getFileHandle(Ljava/lang/String;Lcom/badlogic/gdx/Files$FileType;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "Cannot get the sibling of the root."

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
