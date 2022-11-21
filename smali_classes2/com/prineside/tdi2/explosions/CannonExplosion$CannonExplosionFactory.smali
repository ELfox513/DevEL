.class public Lcom/prineside/tdi2/explosions/CannonExplosion$CannonExplosionFactory;
.super Lcom/prineside/tdi2/Explosion$Factory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/explosions/CannonExplosion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CannonExplosionFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/prineside/tdi2/Explosion$Factory<",
        "Lcom/prineside/tdi2/explosions/CannonExplosion;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/prineside/tdi2/Explosion$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/prineside/tdi2/Explosion;
    .locals 1

    invoke-virtual {p0}, Lcom/prineside/tdi2/explosions/CannonExplosion$CannonExplosionFactory;->b()Lcom/prineside/tdi2/explosions/CannonExplosion;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/prineside/tdi2/explosions/CannonExplosion;
    .locals 2

    new-instance v0, Lcom/prineside/tdi2/explosions/CannonExplosion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/prineside/tdi2/explosions/CannonExplosion;-><init>(Lcom/prineside/tdi2/explosions/CannonExplosion$1;)V

    return-object v0
.end method
