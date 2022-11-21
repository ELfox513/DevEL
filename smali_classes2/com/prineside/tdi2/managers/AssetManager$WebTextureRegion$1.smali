.class Lcom/prineside/tdi2/managers/AssetManager$WebTextureRegion$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/managers/AssetManager$WebTextureRegion;->finalize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/badlogic/gdx/graphics/Texture;

.field public final synthetic b:Lcom/prineside/tdi2/managers/AssetManager$WebTextureRegion;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/managers/AssetManager$WebTextureRegion;Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/prineside/tdi2/managers/AssetManager$WebTextureRegion$1;->b:Lcom/prineside/tdi2/managers/AssetManager$WebTextureRegion;

    iput-object p2, p0, Lcom/prineside/tdi2/managers/AssetManager$WebTextureRegion$1;->a:Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "AssetManager"

    :try_start_0
    iget-object v1, p0, Lcom/prineside/tdi2/managers/AssetManager$WebTextureRegion$1;->a:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    const-string v1, "disposed web texture"

    invoke-static {v0, v1}, Lcom/prineside/tdi2/Logger;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "failed to dispose texture in runnable"

    invoke-static {v0, v2, v1}, Lcom/prineside/tdi2/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
