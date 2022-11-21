.class public abstract Lcom/badlogic/gdx/ai/steer/GroupBehavior;
.super Lcom/badlogic/gdx/ai/steer/SteeringBehavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/badlogic/gdx/math/Vector<",
        "TT;>;>",
        "Lcom/badlogic/gdx/ai/steer/SteeringBehavior<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public d:Lcom/badlogic/gdx/ai/steer/Proximity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/steer/Proximity<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/ai/steer/Steerable;Lcom/badlogic/gdx/ai/steer/Proximity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;",
            "Lcom/badlogic/gdx/ai/steer/Proximity<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/ai/steer/SteeringBehavior;-><init>(Lcom/badlogic/gdx/ai/steer/Steerable;)V

    iput-object p2, p0, Lcom/badlogic/gdx/ai/steer/GroupBehavior;->d:Lcom/badlogic/gdx/ai/steer/Proximity;

    return-void
.end method


# virtual methods
.method public getProximity()Lcom/badlogic/gdx/ai/steer/Proximity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/ai/steer/Proximity<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/GroupBehavior;->d:Lcom/badlogic/gdx/ai/steer/Proximity;

    return-object v0
.end method

.method public setProximity(Lcom/badlogic/gdx/ai/steer/Proximity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Proximity<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/GroupBehavior;->d:Lcom/badlogic/gdx/ai/steer/Proximity;

    return-void
.end method
