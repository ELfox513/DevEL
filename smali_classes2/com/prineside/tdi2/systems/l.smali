.class public final synthetic Lcom/prineside/tdi2/systems/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectRetriever;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/systems/StatisticsSystem;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/systems/StatisticsSystem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/systems/l;->a:Lcom/prineside/tdi2/systems/StatisticsSystem;

    return-void
.end method


# virtual methods
.method public final retrieved(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/prineside/tdi2/systems/l;->a:Lcom/prineside/tdi2/systems/StatisticsSystem;

    check-cast p1, Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    invoke-static {v0, p1}, Lcom/prineside/tdi2/systems/StatisticsSystem;->a(Lcom/prineside/tdi2/systems/StatisticsSystem;Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;)V

    return-void
.end method
