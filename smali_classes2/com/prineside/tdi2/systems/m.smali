.class public final synthetic Lcom/prineside/tdi2/systems/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/systems/StatisticsSystem;

.field public final synthetic b:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/systems/StatisticsSystem;Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/systems/m;->a:Lcom/prineside/tdi2/systems/StatisticsSystem;

    iput-object p2, p0, Lcom/prineside/tdi2/systems/m;->b:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/systems/m;->a:Lcom/prineside/tdi2/systems/StatisticsSystem;

    iget-object v1, p0, Lcom/prineside/tdi2/systems/m;->b:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    invoke-static {v0, v1}, Lcom/prineside/tdi2/systems/StatisticsSystem;->b(Lcom/prineside/tdi2/systems/StatisticsSystem;Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;)V

    return-void
.end method
