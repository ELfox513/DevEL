.class public Lcom/badlogic/gdx/maps/Map;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# instance fields
.field public a:Lcom/badlogic/gdx/maps/MapLayers;

.field public b:Lcom/badlogic/gdx/maps/MapProperties;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/maps/MapLayers;

    invoke-direct {v0}, Lcom/badlogic/gdx/maps/MapLayers;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/Map;->a:Lcom/badlogic/gdx/maps/MapLayers;

    new-instance v0, Lcom/badlogic/gdx/maps/MapProperties;

    invoke-direct {v0}, Lcom/badlogic/gdx/maps/MapProperties;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/Map;->b:Lcom/badlogic/gdx/maps/MapProperties;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    return-void
.end method

.method public getLayers()Lcom/badlogic/gdx/maps/MapLayers;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/maps/Map;->a:Lcom/badlogic/gdx/maps/MapLayers;

    return-object v0
.end method

.method public getProperties()Lcom/badlogic/gdx/maps/MapProperties;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/maps/Map;->b:Lcom/badlogic/gdx/maps/MapProperties;

    return-object v0
.end method
