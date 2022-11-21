.class public final Lb5/jb;
.super Lb5/hb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb5/hb<",
        "Lb5/ib;",
        "Lb5/ib;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb5/hb;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lb5/ib;

    invoke-virtual {p1}, Lb5/ib;->a()I

    move-result p1

    return p1
.end method

.method public final bridge synthetic b(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lb5/ib;

    invoke-virtual {p1}, Lb5/ib;->b()I

    move-result p1

    return p1
.end method

.method public final bridge synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lb5/x8;

    iget-object p1, p1, Lb5/x8;->zzc:Lb5/ib;

    return-object p1
.end method

.method public final bridge synthetic d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lb5/ib;->c()Lb5/ib;

    move-result-object v0

    check-cast p2, Lb5/ib;

    invoke-virtual {p2, v0}, Lb5/ib;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    check-cast p1, Lb5/ib;

    invoke-static {p1, p2}, Lb5/ib;->d(Lb5/ib;Lb5/ib;)Lb5/ib;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic e()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lb5/ib;->e()Lb5/ib;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic f(Ljava/lang/Object;IJ)V
    .locals 0

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    check-cast p1, Lb5/ib;

    shl-int/lit8 p2, p2, 0x3

    invoke-virtual {p1, p2, p3}, Lb5/ib;->h(ILjava/lang/Object;)V

    return-void
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lb5/x8;

    iget-object p1, p1, Lb5/x8;->zzc:Lb5/ib;

    invoke-virtual {p1}, Lb5/ib;->f()V

    return-void
.end method

.method public final bridge synthetic h(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lb5/ib;

    check-cast p1, Lb5/x8;

    iput-object p2, p1, Lb5/x8;->zzc:Lb5/ib;

    return-void
.end method

.method public final bridge synthetic i(Ljava/lang/Object;Lb5/g8;)V
    .locals 0

    check-cast p1, Lb5/ib;

    invoke-virtual {p1, p2}, Lb5/ib;->i(Lb5/g8;)V

    return-void
.end method
