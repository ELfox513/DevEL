.class Lcom/badlogic/gdx/ai/StandaloneFileSystem$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/ai/StandaloneFileSystem;->newResolver(Lcom/badlogic/gdx/Files$FileType;)Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/badlogic/gdx/Files$FileType;

.field public final synthetic b:Lcom/badlogic/gdx/ai/StandaloneFileSystem;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/ai/StandaloneFileSystem;Lcom/badlogic/gdx/Files$FileType;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/ai/StandaloneFileSystem$1;->b:Lcom/badlogic/gdx/ai/StandaloneFileSystem;

    iput-object p2, p0, Lcom/badlogic/gdx/ai/StandaloneFileSystem$1;->a:Lcom/badlogic/gdx/Files$FileType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolve(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 2

    new-instance v0, Lcom/badlogic/gdx/ai/StandaloneFileSystem$DesktopFileHandle;

    iget-object v1, p0, Lcom/badlogic/gdx/ai/StandaloneFileSystem$1;->a:Lcom/badlogic/gdx/Files$FileType;

    invoke-direct {v0, p1, v1}, Lcom/badlogic/gdx/ai/StandaloneFileSystem$DesktopFileHandle;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/Files$FileType;)V

    return-object v0
.end method
