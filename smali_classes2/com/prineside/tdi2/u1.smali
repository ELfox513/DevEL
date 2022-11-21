.class public final synthetic Lcom/prineside/tdi2/u1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/prineside/tdi2/utils/ObjectRetriever;


# instance fields
.field public final synthetic a:Lcom/prineside/tdi2/HeadlessReplayValidationGame;

.field public final synthetic b:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/prineside/tdi2/HeadlessReplayValidationGame;Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/prineside/tdi2/u1;->a:Lcom/prineside/tdi2/HeadlessReplayValidationGame;

    iput-object p2, p0, Lcom/prineside/tdi2/u1;->b:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    return-void
.end method


# virtual methods
.method public final retrieved(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/prineside/tdi2/u1;->a:Lcom/prineside/tdi2/HeadlessReplayValidationGame;

    iget-object v1, p0, Lcom/prineside/tdi2/u1;->b:Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;

    check-cast p1, Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;

    invoke-static {v0, v1, p1}, Lcom/prineside/tdi2/HeadlessReplayValidationGame;->f(Lcom/prineside/tdi2/HeadlessReplayValidationGame;Lcom/prineside/tdi2/managers/ReplayManager$ReplayRecord;Lcom/prineside/tdi2/systems/GameStateSystem$ReplayValidationResult;)V

    return-void
.end method
