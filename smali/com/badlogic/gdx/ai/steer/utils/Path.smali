.class public interface abstract Lcom/badlogic/gdx/ai/steer/utils/Path;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/ai/steer/utils/Path$PathParam;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/badlogic/gdx/math/Vector<",
        "TT;>;P::",
        "Lcom/badlogic/gdx/ai/steer/utils/Path$PathParam;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract calculateDistance(Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/ai/steer/utils/Path$PathParam;)F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TP;)F"
        }
    .end annotation
.end method

.method public abstract calculateTargetPosition(Lcom/badlogic/gdx/math/Vector;Lcom/badlogic/gdx/ai/steer/utils/Path$PathParam;F)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TP;F)V"
        }
    .end annotation
.end method

.method public abstract createParam()Lcom/badlogic/gdx/ai/steer/utils/Path$PathParam;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation
.end method

.method public abstract getEndPoint()Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract getLength()F
.end method

.method public abstract getStartPoint()Lcom/badlogic/gdx/math/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract isOpen()Z
.end method
