.class public final synthetic Lcom/prineside/tdi2/m1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectFilter;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/CollidingProjectile;

.field public final synthetic b:Lcom/prineside/tdi2/utils/FloatSorter;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/CollidingProjectile;Lcom/prineside/tdi2/utils/FloatSorter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/m1;->a:Lcom/prineside/tdi2/CollidingProjectile;

    iput-object p2, p0, Lcom/prineside/tdi2/m1;->b:Lcom/prineside/tdi2/utils/FloatSorter;

    return-void
.end method


# virtual methods
.method public final passes(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/m1;->a:Lcom/prineside/tdi2/CollidingProjectile;

    iget-object v1, p0, Lcom/prineside/tdi2/m1;->b:Lcom/prineside/tdi2/utils/FloatSorter;

    check-cast p1, Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;

    invoke-static {v0, v1, p1}, Lcom/prineside/tdi2/CollidingProjectile;->a(Lcom/prineside/tdi2/CollidingProjectile;Lcom/prineside/tdi2/utils/FloatSorter;Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;)Z

    move-result p1

    return p1
.end method
