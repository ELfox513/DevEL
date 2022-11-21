.class public Lcom/badlogic/gdx/maps/objects/PolygonMapObject;
.super Lcom/badlogic/gdx/maps/MapObject;
.source "SourceFile"


# instance fields
.field public f:Lcom/badlogic/gdx/math/Polygon;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [F

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/maps/objects/PolygonMapObject;-><init>([F)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Polygon;)V
    .locals 0

    invoke-direct {p0}, Lcom/badlogic/gdx/maps/MapObject;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/maps/objects/PolygonMapObject;->f:Lcom/badlogic/gdx/math/Polygon;

    return-void
.end method

.method public constructor <init>([F)V
    .locals 1

    invoke-direct {p0}, Lcom/badlogic/gdx/maps/MapObject;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/math/Polygon;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/math/Polygon;-><init>([F)V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/objects/PolygonMapObject;->f:Lcom/badlogic/gdx/math/Polygon;

    return-void
.end method


# virtual methods
.method public getPolygon()Lcom/badlogic/gdx/math/Polygon;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/maps/objects/PolygonMapObject;->f:Lcom/badlogic/gdx/math/Polygon;

    return-object v0
.end method

.method public setPolygon(Lcom/badlogic/gdx/math/Polygon;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/maps/objects/PolygonMapObject;->f:Lcom/badlogic/gdx/math/Polygon;

    return-void
.end method
