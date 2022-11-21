.class Lcom/prineside/tdi2/systems/MapRenderingSystem$1;
.super Lcom/badlogic/gdx/graphics/g2d/SpriteCache;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prineside/tdi2/systems/MapRenderingSystem;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic z:Lcom/prineside/tdi2/systems/MapRenderingSystem;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/systems/MapRenderingSystem;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$1;->z:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    invoke-direct {p0, p2, p3}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public add(Lcom/badlogic/gdx/graphics/Texture;[FII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->add(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    iget-object p1, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$1;->z:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    div-int/lit8 p4, p4, 0x1e

    invoke-static {p1, p4}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->p(Lcom/prineside/tdi2/systems/MapRenderingSystem;I)I

    return-void
.end method

.method public beginCache()V
    .locals 2

    invoke-super {p0}, Lcom/badlogic/gdx/graphics/g2d/SpriteCache;->beginCache()V

    iget-object v0, p0, Lcom/prineside/tdi2/systems/MapRenderingSystem$1;->z:Lcom/prineside/tdi2/systems/MapRenderingSystem;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/prineside/tdi2/systems/MapRenderingSystem;->o(Lcom/prineside/tdi2/systems/MapRenderingSystem;I)I

    return-void
.end method
