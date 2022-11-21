.class public Lcom/badlogic/gdx/maps/MapGroupLayer;
.super Lcom/badlogic/gdx/maps/MapLayer;
.source "SourceFile"


# instance fields
.field public l:Lcom/badlogic/gdx/maps/MapLayers;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/badlogic/gdx/maps/MapLayer;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/maps/MapLayers;

    invoke-direct {v0}, Lcom/badlogic/gdx/maps/MapLayers;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/MapGroupLayer;->l:Lcom/badlogic/gdx/maps/MapLayers;

    return-void
.end method


# virtual methods
.method public getLayers()Lcom/badlogic/gdx/maps/MapLayers;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/maps/MapGroupLayer;->l:Lcom/badlogic/gdx/maps/MapLayers;

    return-object v0
.end method

.method public invalidateRenderOffset()V
    .locals 2

    invoke-super {p0}, Lcom/badlogic/gdx/maps/MapLayer;->invalidateRenderOffset()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/maps/MapGroupLayer;->l:Lcom/badlogic/gdx/maps/MapLayers;

    invoke-virtual {v1}, Lcom/badlogic/gdx/maps/MapLayers;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/maps/MapGroupLayer;->l:Lcom/badlogic/gdx/maps/MapLayers;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/maps/MapLayers;->get(I)Lcom/badlogic/gdx/maps/MapLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/maps/MapLayer;->invalidateRenderOffset()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
