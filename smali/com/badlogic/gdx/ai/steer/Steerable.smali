.class public interface abstract Lcom/badlogic/gdx/ai/steer/Steerable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/ai/utils/Location;
.implements Lcom/badlogic/gdx/ai/steer/Limiter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/badlogic/gdx/math/Vector<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lcom/badlogic/gdx/ai/utils/Location<",
        "TT;>;",
        "Lcom/badlogic/gdx/ai/steer/Limiter;"
    }
.end annotation


# virtual methods
.method public abstract getAngularVelocity()F
.end method

.method public abstract getBoundingRadius()F
.end method

.method public abstract getLinearVelocity()Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract isTagged()Z
.end method

.method public abstract setTagged(Z)V
.end method
