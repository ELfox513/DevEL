.class public interface abstract Lcom/badlogic/gdx/math/Octree$Collider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/math/Octree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Collider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract intersects(Lcom/badlogic/gdx/math/collision/Ray;Ljava/lang/Object;)F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/math/collision/Ray;",
            "TT;)F"
        }
    .end annotation
.end method

.method public abstract intersects(Lcom/badlogic/gdx/math/Frustum;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/math/Frustum;",
            "TT;)Z"
        }
    .end annotation
.end method

.method public abstract intersects(Lcom/badlogic/gdx/math/collision/BoundingBox;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/math/collision/BoundingBox;",
            "TT;)Z"
        }
    .end annotation
.end method
