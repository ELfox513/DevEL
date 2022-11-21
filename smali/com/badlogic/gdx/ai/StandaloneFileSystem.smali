.class public Lcom/badlogic/gdx/ai/StandaloneFileSystem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/ai/FileSystem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/ai/StandaloneFileSystem$DesktopFileHandle;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newFileHandle(Ljava/io/File;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/ai/StandaloneFileSystem$DesktopFileHandle;

    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->Absolute:Lcom/badlogic/gdx/Files$FileType;

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/ai/StandaloneFileSystem$DesktopFileHandle;-><init>(Ljava/io/File;Lcom/badlogic/gdx/Files$FileType;)V

    return-object v0
.end method

.method public newFileHandle(Ljava/io/File;Lcom/badlogic/gdx/Files$FileType;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/ai/StandaloneFileSystem$DesktopFileHandle;

    invoke-direct {v0, p1, p2}, Lcom/badlogic/gdx/ai/StandaloneFileSystem$DesktopFileHandle;-><init>(Ljava/io/File;Lcom/badlogic/gdx/Files$FileType;)V

    return-object v0
.end method

.method public newFileHandle(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/ai/StandaloneFileSystem$DesktopFileHandle;

    sget-object v1, Lcom/badlogic/gdx/Files$FileType;->Absolute:Lcom/badlogic/gdx/Files$FileType;

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/ai/StandaloneFileSystem$DesktopFileHandle;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/Files$FileType;)V

    return-object v0
.end method

.method public newFileHandle(Ljava/lang/String;Lcom/badlogic/gdx/Files$FileType;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/ai/StandaloneFileSystem$DesktopFileHandle;

    invoke-direct {v0, p1, p2}, Lcom/badlogic/gdx/ai/StandaloneFileSystem$DesktopFileHandle;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/Files$FileType;)V

    return-object v0
.end method

.method public newResolver(Lcom/badlogic/gdx/Files$FileType;)Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/ai/StandaloneFileSystem$1;

    invoke-direct {v0, p0, p1}, Lcom/badlogic/gdx/ai/StandaloneFileSystem$1;-><init>(Lcom/badlogic/gdx/ai/StandaloneFileSystem;Lcom/badlogic/gdx/Files$FileType;)V

    return-object v0
.end method
