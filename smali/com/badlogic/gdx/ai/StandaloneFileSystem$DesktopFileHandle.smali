.class public Lcom/badlogic/gdx/ai/StandaloneFileSystem$DesktopFileHandle;
.super Lcom/badlogic/gdx/files/FileHandle;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/ai/StandaloneFileSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DesktopFileHandle"
.end annotation


# static fields
.field public static final externalPath:Ljava/lang/String;

.field public static final localPath:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/ai/StandaloneFileSystem$DesktopFileHandle;->externalPath:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/io/File;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/ai/StandaloneFileSystem$DesktopFileHandle;->localPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/badlogic/gdx/Files$FileType;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/files/FileHandle;-><init>(Ljava/io/File;Lcom/badlogic/gdx/Files$FileType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/badlogic/gdx/Files$FileType;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/files/FileHandle;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/Files$FileType;)V

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

    new-instance v0, Lcom/badlogic/gdx/ai/StandaloneFileSystem$DesktopFileHandle;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/badlogic/gdx/files/FileHandle;->b:Lcom/badlogic/gdx/Files$FileType;

    invoke-direct {v0, v1, p1}, Lcom/badlogic/gdx/ai/StandaloneFileSystem$DesktopFileHandle;-><init>(Ljava/io/File;Lcom/badlogic/gdx/Files$FileType;)V

    return-object v0

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/ai/StandaloneFileSystem$DesktopFileHandle;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->a:Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/badlogic/gdx/files/FileHandle;->b:Lcom/badlogic/gdx/Files$FileType;

    invoke-direct {v0, v1, p1}, Lcom/badlogic/gdx/ai/StandaloneFileSystem$DesktopFileHandle;-><init>(Ljava/io/File;Lcom/badlogic/gdx/Files$FileType;)V

    return-object v0
.end method

.method public file()Ljava/io/File;
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->b:Lcom/badlogic/gdx/Files$FileType;

    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->External:Lcom/badlogic/gdx/Files$FileType;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/badlogic/gdx/ai/StandaloneFileSystem$DesktopFileHandle;->externalPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->Local:Lcom/badlogic/gdx/Files$FileType;

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/badlogic/gdx/ai/StandaloneFileSystem$DesktopFileHandle;->localPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->a:Ljava/io/File;

    return-object v0
.end method

.method public parent()Lcom/badlogic/gdx/files/FileHandle;
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->b:Lcom/badlogic/gdx/Files$FileType;

    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->Absolute:Lcom/badlogic/gdx/Files$FileType;

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/io/File;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_1
    :goto_0
    new-instance v1, Lcom/badlogic/gdx/ai/StandaloneFileSystem$DesktopFileHandle;

    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->b:Lcom/badlogic/gdx/Files$FileType;

    invoke-direct {v1, v0, v2}, Lcom/badlogic/gdx/ai/StandaloneFileSystem$DesktopFileHandle;-><init>(Ljava/io/File;Lcom/badlogic/gdx/Files$FileType;)V

    return-object v1
.end method

.method public sibling(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/files/FileHandle;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/ai/StandaloneFileSystem$DesktopFileHandle;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/badlogic/gdx/files/FileHandle;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/badlogic/gdx/files/FileHandle;->b:Lcom/badlogic/gdx/Files$FileType;

    invoke-direct {v0, v1, p1}, Lcom/badlogic/gdx/ai/StandaloneFileSystem$DesktopFileHandle;-><init>(Ljava/io/File;Lcom/badlogic/gdx/Files$FileType;)V

    return-object v0

    :cond_0
    new-instance p1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v0, "Cannot get the sibling of the root."

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
