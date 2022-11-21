.class public Lr4/q33;
.super Lr4/w33;
.source "SourceFile"

# interfaces
.implements Lr4/d43;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lr4/w33<",
        "TK;TV;>;",
        "Lr4/d43<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lr4/s33;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr4/s33<",
            "TK;",
            "Lr4/o33<",
            "TV;>;>;I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lr4/w33;-><init>(Lr4/s33;I)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;)Lr4/o33;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lr4/o33<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lr4/w33;->k:Lr4/s33;

    invoke-virtual {v0, p1}, Lr4/s33;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr4/o33;

    if-nez p1, :cond_0

    invoke-static {}, Lr4/o33;->q()Lr4/o33;

    move-result-object p1

    :cond_0
    return-object p1
.end method
