.class Lcom/prineside/tdi2/managers/AssetManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/AssetManager;->f(Lcom/prineside/tdi2/managers/AssetManager$WebTextureRegion;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/badlogic/gdx/graphics/Pixmap;

.field public final synthetic b:Lcom/prineside/tdi2/managers/AssetManager$WebTextureRegion;

.field public final synthetic d:I

.field public final synthetic k:I

.field public final synthetic p:Lcom/prineside/tdi2/managers/AssetManager;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/AssetManager;Lcom/badlogic/gdx/graphics/Pixmap;Lcom/prineside/tdi2/managers/AssetManager$WebTextureRegion;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/managers/AssetManager$1;->p:Lcom/prineside/tdi2/managers/AssetManager;

    iput-object p2, p0, Lcom/prineside/tdi2/managers/AssetManager$1;->a:Lcom/badlogic/gdx/graphics/Pixmap;

    iput-object p3, p0, Lcom/prineside/tdi2/managers/AssetManager$1;->b:Lcom/prineside/tdi2/managers/AssetManager$WebTextureRegion;

    iput p4, p0, Lcom/prineside/tdi2/managers/AssetManager$1;->d:I

    iput p5, p0, Lcom/prineside/tdi2/managers/AssetManager$1;->k:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Lcom/badlogic/gdx/graphics/Texture;

    iget-object v1, p0, Lcom/prineside/tdi2/managers/AssetManager$1;->a:Lcom/badlogic/gdx/graphics/Pixmap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;Z)V

    iget-object v1, p0, Lcom/prineside/tdi2/managers/AssetManager$1;->b:Lcom/prineside/tdi2/managers/AssetManager$WebTextureRegion;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setTexture(Lcom/badlogic/gdx/graphics/Texture;)V

    iget-object v1, p0, Lcom/prineside/tdi2/managers/AssetManager$1;->b:Lcom/prineside/tdi2/managers/AssetManager$WebTextureRegion;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/prineside/tdi2/managers/AssetManager$WebTextureRegion;->textureLoaded:Z

    iget v3, p0, Lcom/prineside/tdi2/managers/AssetManager$1;->d:I

    iget v4, p0, Lcom/prineside/tdi2/managers/AssetManager$1;->k:I

    invoke-virtual {v1, v2, v2, v3, v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->setRegion(IIII)V

    iget-object v1, p0, Lcom/prineside/tdi2/managers/AssetManager$1;->a:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v0, v1, v1}, Lcom/badlogic/gdx/graphics/GLTexture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    return-void
.end method
