.class Lcom/prineside/tdi2/systems/ParticleSystem$FlashParticle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/ParticleSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlashParticle"
.end annotation


# instance fields
.field public color:Lcom/badlogic/gdx/graphics/Color;

.field public texture:Lcom/badlogic/gdx/graphics/Texture;

.field public time:F

.field public vertices:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/prineside/tdi2/systems/ParticleSystem$FlashParticle;->vertices:[F

    sget-object v0, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->cpy()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    iput-object v0, p0, Lcom/prineside/tdi2/systems/ParticleSystem$FlashParticle;->color:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/prineside/tdi2/systems/ParticleSystem$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/systems/ParticleSystem$FlashParticle;-><init>()V

    return-void
.end method
