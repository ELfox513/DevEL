.class Lcom/prineside/tdi2/systems/EnemySystem$DBG_DamageParticle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/utils/Pool$Poolable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/prineside/tdi2/systems/EnemySystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DBG_DamageParticle"
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public d:F

.field public k:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/prineside/tdi2/systems/EnemySystem$DBG_DamageParticle;->a:F

    iput v0, p0, Lcom/prineside/tdi2/systems/EnemySystem$DBG_DamageParticle;->b:F

    iput v0, p0, Lcom/prineside/tdi2/systems/EnemySystem$DBG_DamageParticle;->d:F

    iput v0, p0, Lcom/prineside/tdi2/systems/EnemySystem$DBG_DamageParticle;->k:F

    return-void
.end method
