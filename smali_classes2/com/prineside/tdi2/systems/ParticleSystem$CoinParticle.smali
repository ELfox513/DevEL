.class Lcom/prineside/tdi2/systems/ParticleSystem$CoinParticle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/ParticleSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CoinParticle"
.end annotation


# instance fields
.field public a:Lcom/badlogic/gdx/math/Vector2;

.field public b:F

.field public c:F

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/prineside/tdi2/systems/ParticleSystem$CoinParticle;->a:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/systems/ParticleSystem$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/ParticleSystem$CoinParticle;-><init>()V

    return-void
.end method
