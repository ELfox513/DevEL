.class Lcom/prineside/tdi2/systems/ParticleSystem$XpOrbParticle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/ParticleSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XpOrbParticle"
.end annotation


# instance fields
.field public a:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field public b:F

.field public c:Lcom/badlogic/gdx/math/Vector2;

.field public d:Lcom/badlogic/gdx/math/Vector2;

.field public e:Lcom/badlogic/gdx/math/Vector2;

.field public f:Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/ParticleSystem$XpOrbParticle;->c:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/ParticleSystem$XpOrbParticle;->d:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/ParticleSystem$XpOrbParticle;->e:Lcom/badlogic/gdx/math/Vector2;

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/ParticleSystem$XpOrbParticle;->f:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/systems/ParticleSystem$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/ParticleSystem$XpOrbParticle;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/prineside/tdi2/systems/ParticleSystem$XpOrbParticle;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 0

    iget-object p0, p0, Lcom/prineside/tdi2/systems/ParticleSystem$XpOrbParticle;->a:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object p0
.end method

.method public static synthetic b(Lcom/prineside/tdi2/systems/ParticleSystem$XpOrbParticle;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/systems/ParticleSystem$XpOrbParticle;->a:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object p1
.end method
