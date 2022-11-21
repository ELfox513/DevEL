.class public final Lr4/hk2;
.super Lr4/pj2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr4/pj2<",
        "Lr4/a11;",
        "Lr4/u01;",
        "Lr4/t01;",
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
            "Lr4/u01;",
            "Lr4/a11;",
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

    invoke-virtual {p1}, Lr4/bu0;->q()Lr4/t01;

    move-result-object p1

    invoke-interface {p1, p2}, Lr4/t01;->c(Lr4/u61;)Lr4/t01;

    invoke-interface {p1, p3}, Lr4/t01;->a(Lr4/bd1;)Lr4/t01;

    return-object p1
.end method
