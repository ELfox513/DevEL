.class Lcom/prineside/tdi2/systems/ParticleSystem$3;
.super Lcom/badlogic/gdx/utils/Pool;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/ParticleSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/utils/Pool<",
        "Lcom/prineside/tdi2/systems/ParticleSystem$CoinParticle;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/prineside/tdi2/systems/ParticleSystem;


# direct methods
.method public constructor <init>(Lcom/prineside/tdi2/systems/ParticleSystem;)V
    .locals 0

    iput-object p1, p0, Lcom/prineside/tdi2/systems/ParticleSystem$3;->b:Lcom/prineside/tdi2/systems/ParticleSystem;

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Pool;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Lcom/prineside/tdi2/systems/ParticleSystem$CoinParticle;
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/systems/ParticleSystem$CoinParticle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/systems/ParticleSystem$CoinParticle;-><init>(Lcom/prineside/tdi2/systems/ParticleSystem$1;)V

    return-object v0
.end method

.method public bridge synthetic newObject()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/systems/ParticleSystem$3;->c()Lcom/prineside/tdi2/systems/ParticleSystem$CoinParticle;

    move-result-object v0

    return-object v0
.end method
