.class public final Lw0/l;
.super Lw0/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw0/l$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Lw0/l$a;)V
    .locals 2

    iget-object v0, p1, Lw0/u$a;->b:Ljava/util/UUID;

    iget-object v1, p1, Lw0/u$a;->c:Lf1/p;

    iget-object p1, p1, Lw0/u$a;->d:Ljava/util/Set;

    invoke-direct {p0, v0, v1, p1}, Lw0/u;-><init>(Ljava/util/UUID;Lf1/p;Ljava/util/Set;)V

    return-void
.end method

.method public static d(Ljava/lang/Class;)Lw0/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;)",
            "Lw0/l;"
        }
    .end annotation

    new-instance v0, Lw0/l$a;

    invoke-direct {v0, p0}, Lw0/l$a;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0}, Lw0/u$a;->b()Lw0/u;

    move-result-object p0

    check-cast p0, Lw0/l;

    return-object p0
.end method
