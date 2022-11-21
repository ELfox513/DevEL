.class Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview$1;
.super Lcom/badlogic/gdx/graphics/Texture;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->generate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public v:Z

.field public final synthetic w:Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;Lcom/badlogic/gdx/graphics/Pixmap;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview$1;->w:Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview$1;->v:Z

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 3

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iget-boolean v0, p0, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview$1;->v:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    invoke-virtual {v0}, Lcom/prineside/tdi2/Game;->isInMainThread()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview$1;->w:Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->a(Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;)Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    iget-object v0, p0, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview$1;->w:Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;

    invoke-static {v0, v1}, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->b(Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;Lcom/badlogic/gdx/graphics/Texture;)Lcom/badlogic/gdx/graphics/Texture;

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview$1;->v:Z

    iget-object v0, p0, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview$1;->w:Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;

    invoke-static {v0, v1}, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->b(Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;Lcom/badlogic/gdx/graphics/Texture;)Lcom/badlogic/gdx/graphics/Texture;

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview$1$1;

    invoke-direct {v1, p0, p0}, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview$1$1;-><init>(Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview$1;Lcom/badlogic/gdx/graphics/Texture;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    :goto_0
    iget-object v0, p0, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview$1;->w:Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;

    invoke-static {v0}, Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;->c(Lcom/prineside/tdi2/managers/BasicLevelManager$MapPreview;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    sget-object v1, Lcom/prineside/tdi2/Game;->i:Lcom/prineside/tdi2/Game;

    iget-object v1, v1, Lcom/prineside/tdi2/Game;->assetManager:Lcom/prineside/tdi2/managers/AssetManager;

    const-string v2, "map-preview-placeholder"

    invoke-virtual {v1, v2}, Lcom/prineside/tdi2/managers/AssetManager;->getTextureRegion(Ljava/lang/String;)Lcom/prineside/tdi2/ResourcePack$AtlasTextureRegion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "BasicLevelManager"

    const-string v2, "failed to finalize map preview texture"

    invoke-static {v1, v2, v0}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
