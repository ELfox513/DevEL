.class public abstract Lcom/badlogic/gdx/ai/steer/proximities/ProximityBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/ai/steer/Proximity;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/badlogic/gdx/math/Vector<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/ai/steer/Proximity<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Lcom/badlogic/gdx/ai/steer/Steerable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/ai/steer/Steerable;Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/proximities/ProximityBase;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    iput-object p2, p0, Lcom/badlogic/gdx/ai/steer/proximities/ProximityBase;->b:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public getAgents()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/proximities/ProximityBase;->b:Ljava/lang/Iterable;

    return-object v0
.end method

.method public getOwner()Lcom/badlogic/gdx/ai/steer/Steerable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/ai/steer/proximities/ProximityBase;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    return-object v0
.end method

.method public setAgents(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/proximities/ProximityBase;->b:Ljava/lang/Iterable;

    return-void
.end method

.method public setOwner(Lcom/badlogic/gdx/ai/steer/Steerable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/steer/Steerable<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/badlogic/gdx/ai/steer/proximities/ProximityBase;->a:Lcom/badlogic/gdx/ai/steer/Steerable;

    return-void
.end method
