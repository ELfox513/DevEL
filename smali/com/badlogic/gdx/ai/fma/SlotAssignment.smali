.class public Lcom/badlogic/gdx/ai/fma/SlotAssignment;
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


# instance fields
.field public member:Lcom/badlogic/gdx/ai/fma/FormationMember;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/ai/fma/FormationMember<",
            "TT;>;"
        }
    .end annotation
.end field

.field public slotNumber:I


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/ai/fma/FormationMember;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/fma/FormationMember<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/ai/fma/SlotAssignment;-><init>(Lcom/badlogic/gdx/ai/fma/FormationMember;I)V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/ai/fma/FormationMember;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/ai/fma/FormationMember<",
            "TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/ai/fma/SlotAssignment;->member:Lcom/badlogic/gdx/ai/fma/FormationMember;

    iput p2, p0, Lcom/badlogic/gdx/ai/fma/SlotAssignment;->slotNumber:I

    return-void
.end method
