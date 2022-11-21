.class public interface abstract Lcom/badlogic/gdx/ai/fma/FormationPattern;
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
.method public abstract calculateSlotLocation(Lcom/badlogic/gdx/ai/utils/Location;I)Lcom/badlogic/gdx/ai/utils/Location;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/utils/Location<",
            "TT;>;I)",
            "Lcom/badlogic/gdx/ai/utils/Location<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract setNumberOfSlots(I)V
.end method

.method public abstract supportsSlots(I)Z
.end method
