.class public Lcom/prineside/tdi2/shapes/FlyingParticlesLine;
.super Lcom/prineside/tdi2/Shape;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/ProjectileTrail;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/shapes/FlyingParticlesLine$FlyingParticlesLineFactory;
    }
.end annotation


# static fields
.field public static A:I


# instance fields
.field public a:F

.field public b:F

.field public d:F

.field public k:F

.field public p:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public q:F

.field public r:F

.field public s:F

.field public t:F

.field public u:F

.field public v:F

.field public w:F

.field public x:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

.field public y:F

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/Shape;-><init>()V

    invoke-virtual {p0}, Lcom/prineside/tdi2/shapes/FlyingParticlesLine;->reset()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/shapes/FlyingParticlesLine$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/shapes/FlyingParticlesLine;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 0

    return-void
.end method

.method public free()V
    .locals 0

    return-void
.end method

.method public getUsageId()I
    .locals 1

    iget v0, p0, Lcom/prineside/tdi2/shapes/FlyingParticlesLine;->z:I

    return v0
.end method

.method public isFinished()Z
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/shapes/FlyingParticlesLine;->y:F

    iget v1, p0, Lcom/prineside/tdi2/shapes/FlyingParticlesLine;->v:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/prineside/tdi2/shapes/FlyingParticlesLine;->x:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    iput-object v0, p0, Lcom/prineside/tdi2/shapes/FlyingParticlesLine;->p:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-void
.end method

.method public setup(FFFFLcom/badlogic/gdx/graphics/g2d/TextureRegion;FFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;FFFLcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;)V
    .locals 0

    iput p1, p0, Lcom/prineside/tdi2/shapes/FlyingParticlesLine;->a:F

    iput p2, p0, Lcom/prineside/tdi2/shapes/FlyingParticlesLine;->b:F

    iput p3, p0, Lcom/prineside/tdi2/shapes/FlyingParticlesLine;->d:F

    iput p4, p0, Lcom/prineside/tdi2/shapes/FlyingParticlesLine;->k:F

    iput-object p5, p0, Lcom/prineside/tdi2/shapes/FlyingParticlesLine;->p:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    iput p6, p0, Lcom/prineside/tdi2/shapes/FlyingParticlesLine;->q:F

    iput p7, p0, Lcom/prineside/tdi2/shapes/FlyingParticlesLine;->r:F

    iput p8, p0, Lcom/prineside/tdi2/shapes/FlyingParticlesLine;->s:F

    iput p9, p0, Lcom/prineside/tdi2/shapes/FlyingParticlesLine;->t:F

    iput p12, p0, Lcom/prineside/tdi2/shapes/FlyingParticlesLine;->u:F

    iput p13, p0, Lcom/prineside/tdi2/shapes/FlyingParticlesLine;->v:F

    iput p14, p0, Lcom/prineside/tdi2/shapes/FlyingParticlesLine;->w:F

    iput-object p15, p0, Lcom/prineside/tdi2/shapes/FlyingParticlesLine;->x:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$ScaledNumericValue;

    const/4 p1, 0x0

    iput p1, p0, Lcom/prineside/tdi2/shapes/FlyingParticlesLine;->y:F

    sget p1, Lcom/prineside/tdi2/shapes/FlyingParticlesLine;->A:I

    add-int/lit8 p2, p1, 0x1

    sput p2, Lcom/prineside/tdi2/shapes/FlyingParticlesLine;->A:I

    iput p1, p0, Lcom/prineside/tdi2/shapes/FlyingParticlesLine;->z:I

    return-void
.end method

.method public update(F)V
    .locals 0

    return-void
.end method
