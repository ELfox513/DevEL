.class Lcom/prineside/tdi2/managers/AssetManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/Net$HttpResponseListener;


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

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lcom/prineside/tdi2/managers/AssetManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/AssetManager;Lcom/prineside/tdi2/managers/AssetManager$WebTextureRegion;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/managers/AssetManager$3;->d:Lcom/prineside/tdi2/managers/AssetManager;

    iput-object p2, p0, Lcom/prineside/tdi2/managers/AssetManager$3;->a:Lcom/prineside/tdi2/managers/AssetManager$WebTextureRegion;

    iput-object p3, p0, Lcom/prineside/tdi2/managers/AssetManager$3;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/prineside/tdi2/managers/AssetManager$3;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelled()V
    .locals 0

    return-void
.end method

.method public failed(Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to load web texture "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/AssetManager$3;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AssetManager"

    invoke-static {v1, v0, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public handleHttpResponse(Lcom/badlogic/gdx/Net$HttpResponse;)V
    .locals 2

    invoke-interface {p1}, Lcom/badlogic/gdx/Net$HttpResponse;->getResult()[B

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/AssetManager$3;->d:Lcom/prineside/tdi2/managers/AssetManager;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/AssetManager$3;->a:Lcom/prineside/tdi2/managers/AssetManager$WebTextureRegion;

    invoke-static {v0, v1, p1}, Lcom/prineside/tdi2/managers/AssetManager;->a(Lcom/prineside/tdi2/managers/AssetManager;Lcom/prineside/tdi2/managers/AssetManager$WebTextureRegion;[B)V

    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/AssetManager$3;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->external(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/files/FileHandle;->writeBytes([BZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to create web texture from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/AssetManager$3;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AssetManager"

    invoke-static {v1, v0, p1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
