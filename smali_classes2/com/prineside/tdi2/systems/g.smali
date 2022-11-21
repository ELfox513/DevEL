.class public final synthetic Lcom/prineside/tdi2/systems/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectFilter;


# instance fields
.field public final synthetic a:F

.field public final synthetic b:Lcom/prineside/tdi2/utils/ObjectFilter;


# direct methods
.method public synthetic constructor <init>(FLcom/prineside/tdi2/utils/ObjectFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/prineside/tdi2/systems/g;->a:F

    iput-object p2, p0, Lcom/prineside/tdi2/systems/g;->b:Lcom/prineside/tdi2/utils/ObjectFilter;

    return-void
.end method


# virtual methods
.method public final passes(Ljava/lang/Object;)Z
    .locals 2

    iget v0, p0, Lcom/prineside/tdi2/systems/g;->a:F

    iget-object v1, p0, Lcom/prineside/tdi2/systems/g;->b:Lcom/prineside/tdi2/utils/ObjectFilter;

    check-cast p1, Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;

    invoke-static {v0, v1, p1}, Lcom/prineside/tdi2/systems/MapSystem;->d(FLcom/prineside/tdi2/utils/ObjectFilter;Lcom/prineside/tdi2/systems/MapSystem$AabbEnemyEntry;)Z

    move-result p1

    return p1
.end method
