.class public Lcom/badlogic/gdx/maps/objects/EllipseMapObject;
.super Lcom/badlogic/gdx/maps/MapObject;
.source "SourceFile"


# instance fields
.field public f:Lcom/badlogic/gdx/math/Ellipse;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v0, v1, v1}, Lcom/badlogic/gdx/maps/objects/EllipseMapObject;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 1

    invoke-direct {p0}, Lcom/badlogic/gdx/maps/MapObject;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/math/Ellipse;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/math/Ellipse;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/objects/EllipseMapObject;->f:Lcom/badlogic/gdx/math/Ellipse;

    return-void
.end method


# virtual methods
.method public getEllipse()Lcom/badlogic/gdx/math/Ellipse;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/maps/objects/EllipseMapObject;->f:Lcom/badlogic/gdx/math/Ellipse;

    return-object v0
.end method
