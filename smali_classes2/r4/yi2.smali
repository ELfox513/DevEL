.class public final Lr4/yi2;
.super Lr4/pj2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/pj2<",
        "Lr4/p01;",
        "Lr4/j01;",
        "Lr4/i01;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lr4/bu0;Lr4/am2;Lr4/fk2;Lr4/fp2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Lr4/bu0;",
            "Lr4/am2<",
            "Lr4/j01;",
            "Lr4/p01;",
            ">;",
            "Lr4/fk2;",
            "Lr4/fp2;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p6}, Lr4/pj2;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lr4/bu0;Lr4/am2;Lr4/fk2;Lr4/fp2;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic c(Lr4/e11;Lr4/u61;Lr4/bd1;)Lr4/q61;
    .locals 0

    iget-object p1, p0, Lr4/pj2;->c:Lr4/bu0;

    invoke-virtual {p1}, Lr4/bu0;->p()Lr4/i01;

    move-result-object p1

    invoke-interface {p1, p2}, Lr4/i01;->c(Lr4/u61;)Lr4/i01;

    invoke-interface {p1, p3}, Lr4/i01;->a(Lr4/bd1;)Lr4/i01;

    return-object p1
.end method
