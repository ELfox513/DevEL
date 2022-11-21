.class public Lcom/prineside/tdi2/managers/AssetManager$WebTextureRegion;
.super Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/managers/AssetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebTextureRegion"
.end annotation


# instance fields
.field public src:Ljava/lang/String;

.field public textureLoaded:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>()V

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 4

    const-string v0, "AssetManager"

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iget-boolean v1, p0, Lcom/prineside/tdi2/managers/AssetManager$WebTextureRegion;->textureLoaded:Z

    if-eqz v1, :cond_1

    :try_start_0
    const-string v1, "finalizing web texture"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    invoke-virtual {v1}, Lcom/prineside/tdi2/Game;->isInMainThread()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "disposing texture on main thread"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    goto :goto_0

    :cond_0
    const-string v1, "pushing runnable to dispose texture on main thread"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v3, Lcom/prineside/tdi2/managers/AssetManager$WebTextureRegion$1;

    invoke-direct {v3, p0, v1}, Lcom/prineside/tdi2/managers/AssetManager$WebTextureRegion$1;-><init>(Lcom/prineside/tdi2/managers/AssetManager$WebTextureRegion;Lcom/badlogic/gdx/graphics/Texture;)V

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "failed to finalize web texture"

    invoke-static {v0, v2, v1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
