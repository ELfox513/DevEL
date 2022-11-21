.class public interface abstract Lcom/badlogic/gdx/ai/utils/RaycastCollisionDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/badlogic/gdx/math/Vector<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract collides(Lcom/badlogic/gdx/ai/utils/Ray;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/utils/Ray<",
            "TT;>;)Z"
        }
    .end annotation
.end method

.method public abstract findCollision(Lcom/badlogic/gdx/ai/utils/Collision;Lcom/badlogic/gdx/ai/utils/Ray;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/utils/Collision<",
            "TT;>;",
            "Lcom/badlogic/gdx/ai/utils/Ray<",
            "TT;>;)Z"
        }
    .end annotation
.end method
