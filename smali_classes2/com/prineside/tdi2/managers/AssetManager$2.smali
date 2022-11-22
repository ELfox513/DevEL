.class Lcom/prineside/tdi2/managers/AssetManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/AssetManager;->loadWebTexture(Ljava/lang/String;Z)Lcom/prineside/tdi2/managers/AssetManager$WebTextureRegion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/managers/AssetManager$WebTextureRegion;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic k:Lcom/prineside/tdi2/managers/AssetManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/AssetManager;Lcom/prineside/tdi2/managers/AssetManager$WebTextureRegion;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/managers/AssetManager$2;->k:Lcom/prineside/tdi2/managers/AssetManager;

    iput-object p2, p0, Lcom/prineside/tdi2/managers/AssetManager$2;->a:Lcom/prineside/tdi2/managers/AssetManager$WebTextureRegion;

    iput-object p3, p0, Lcom/prineside/tdi2/managers/AssetManager$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/prineside/tdi2/managers/AssetManager$2;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/AssetManager$2;->k:Lcom/prineside/tdi2/managers/AssetManager;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/AssetManager$2;->a:Lcom/prineside/tdi2/managers/AssetManager$WebTextureRegion;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    iget-object v3, p0, Lcom/prineside/tdi2/managers/AssetManager$2;->b:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/files/FileHandle;->readBytes()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->a(Lcom/prineside/tdi2/managers/AssetManager;Lcom/prineside/tdi2/managers/AssetManager$WebTextureRegion;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to load web texture from local cache - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/prineside/tdi2/managers/AssetManager$2;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/prineside/tdi2/managers/AssetManager$2;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", re-downloading"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AssetManager"

    invoke-static {v2, v1, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :try_start_1
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    iget-object v3, p0, Lcom/prineside/tdi2/managers/AssetManager$2;->b:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/files/FileHandle;->delete()Z

    iget-object v1, p0, Lcom/prineside/tdi2/managers/AssetManager$2;->k:Lcom/prineside/tdi2/managers/AssetManager;

    iget-object v3, p0, Lcom/prineside/tdi2/managers/AssetManager$2;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/prineside/tdi2/managers/AssetManager;->loadWebTexture(Ljava/lang/String;)Lcom/prineside/tdi2/managers/AssetManager$WebTextureRegion;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to delete local cache file - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/prineside/tdi2/managers/AssetManager$2;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
