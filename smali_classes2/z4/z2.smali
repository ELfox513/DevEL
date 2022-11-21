.class public final Lz4/z2;
.super Lz4/x2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz4/x2<",
        "Lz4/y2;",
        "Lz4/y2;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lz4/x2;-><init>()V

    return-void
.end method

.method public static i(Ljava/lang/Object;Lz4/y2;)V
    .locals 0

    check-cast p0, Lz4/m0;

    iput-object p1, p0, Lz4/m0;->zzrq:Lz4/y2;

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Lz4/r3;)V
    .locals 0

    check-cast p1, Lz4/y2;

    invoke-virtual {p1, p2}, Lz4/y2;->e(Lz4/r3;)V

    return-void
.end method

.method public final synthetic b(Ljava/lang/Object;Lz4/r3;)V
    .locals 0

    check-cast p1, Lz4/y2;

    invoke-virtual {p1, p2}, Lz4/y2;->c(Lz4/r3;)V

    return-void
.end method

.method public final c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lz4/m0;

    iget-object p1, p1, Lz4/m0;->zzrq:Lz4/y2;

    invoke-virtual {p1}, Lz4/y2;->f()V

    return-void
.end method

.method public final synthetic d(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lz4/y2;

    invoke-static {p1, p2}, Lz4/z2;->i(Ljava/lang/Object;Lz4/y2;)V

    return-void
.end method

.method public final synthetic e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lz4/y2;

    check-cast p2, Lz4/y2;

    invoke-static {}, Lz4/y2;->h()Lz4/y2;

    move-result-object v0

    invoke-virtual {p2, v0}, Lz4/y2;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p1, p2}, Lz4/y2;->a(Lz4/y2;Lz4/y2;)Lz4/y2;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic f(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lz4/y2;

    invoke-virtual {p1}, Lz4/y2;->g()I

    move-result p1

    return p1
.end method

.method public final synthetic g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lz4/m0;

    iget-object p1, p1, Lz4/m0;->zzrq:Lz4/y2;

    return-object p1
.end method

.method public final synthetic h(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lz4/y2;

    invoke-virtual {p1}, Lz4/y2;->i()I

    move-result p1

    return p1
.end method
