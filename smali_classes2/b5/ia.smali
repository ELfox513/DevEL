.class public final Lb5/ia;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb5/pa;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb5/pa<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lb5/ea;

.field public final b:Lb5/hb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb5/hb<",
            "**>;"
        }
    .end annotation
.end field

.field public final c:Z

.field public final d:Lb5/l8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb5/l8<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb5/hb;Lb5/l8;Lb5/ea;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb5/hb<",
            "**>;",
            "Lb5/l8<",
            "*>;",
            "Lb5/ea;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb5/ia;->b:Lb5/hb;

    invoke-virtual {p2, p3}, Lb5/l8;->c(Lb5/ea;)Z

    move-result p1

    iput-boolean p1, p0, Lb5/ia;->c:Z

    iput-object p2, p0, Lb5/ia;->d:Lb5/l8;

    iput-object p3, p0, Lb5/ia;->a:Lb5/ea;

    return-void
.end method

.method public static j(Lb5/hb;Lb5/l8;Lb5/ea;)Lb5/ia;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lb5/hb<",
            "**>;",
            "Lb5/l8<",
            "*>;",
            "Lb5/ea;",
            ")",
            "Lb5/ia<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lb5/ia;

    invoke-direct {v0, p0, p1, p2}, Lb5/ia;-><init>(Lb5/hb;Lb5/l8;Lb5/ea;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lb5/ia;->b:Lb5/hb;

    invoke-virtual {v0, p1}, Lb5/hb;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb5/hb;->b(Ljava/lang/Object;)I

    move-result v0

    iget-boolean v1, p0, Lb5/ia;->c:Z

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lb5/ia;->d:Lb5/l8;

    invoke-virtual {v0, p1}, Lb5/l8;->a(Ljava/lang/Object;)Lb5/p8;

    const/4 p1, 0x0

    throw p1
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    iget-object v0, p0, Lb5/ia;->b:Lb5/hb;

    invoke-virtual {v0, p1}, Lb5/hb;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lb5/ia;->c:Z

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lb5/ia;->d:Lb5/l8;

    invoke-virtual {v0, p1}, Lb5/l8;->a(Ljava/lang/Object;)Lb5/p8;

    const/4 p1, 0x0

    throw p1
.end method

.method public final c()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lb5/ia;->a:Lb5/ea;

    invoke-interface {v0}, Lb5/ea;->w0()Lb5/da;

    move-result-object v0

    invoke-interface {v0}, Lb5/da;->m()Lb5/ea;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lb5/ia;->b:Lb5/hb;

    invoke-virtual {v0, p1}, Lb5/hb;->g(Ljava/lang/Object;)V

    iget-object v0, p0, Lb5/ia;->d:Lb5/l8;

    invoke-virtual {v0, p1}, Lb5/l8;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final e(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lb5/ia;->d:Lb5/l8;

    invoke-virtual {v0, p1}, Lb5/l8;->a(Ljava/lang/Object;)Lb5/p8;

    const/4 p1, 0x0

    throw p1
.end method

.method public final f(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lb5/ia;->b:Lb5/hb;

    invoke-static {v0, p1, p2}, Lb5/ra;->f(Lb5/hb;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lb5/ia;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lb5/ia;->d:Lb5/l8;

    invoke-static {v0, p1, p2}, Lb5/ra;->e(Lb5/l8;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final g(Ljava/lang/Object;[BIILb5/i7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[BII",
            "Lb5/i7;",
            ")V"
        }
    .end annotation

    move-object p2, p1

    check-cast p2, Lb5/x8;

    iget-object p3, p2, Lb5/x8;->zzc:Lb5/ib;

    invoke-static {}, Lb5/ib;->c()Lb5/ib;

    move-result-object p4

    if-eq p3, p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lb5/ib;->e()Lb5/ib;

    move-result-object p3

    iput-object p3, p2, Lb5/x8;->zzc:Lb5/ib;

    :goto_0
    check-cast p1, Lb5/v8;

    const/4 p1, 0x0

    throw p1
.end method

.method public final h(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lb5/ia;->b:Lb5/hb;

    invoke-virtual {v0, p1}, Lb5/hb;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lb5/ia;->b:Lb5/hb;

    invoke-virtual {v1, p2}, Lb5/hb;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean v0, p0, Lb5/ia;->c:Z

    if-nez v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v0, p0, Lb5/ia;->d:Lb5/l8;

    invoke-virtual {v0, p1}, Lb5/l8;->a(Ljava/lang/Object;)Lb5/p8;

    iget-object p1, p0, Lb5/ia;->d:Lb5/l8;

    invoke-virtual {p1, p2}, Lb5/l8;->a(Ljava/lang/Object;)Lb5/p8;

    const/4 p1, 0x0

    throw p1
.end method

.method public final i(Ljava/lang/Object;Lb5/g8;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lb5/g8;",
            ")V"
        }
    .end annotation

    iget-object p2, p0, Lb5/ia;->d:Lb5/l8;

    invoke-virtual {p2, p1}, Lb5/l8;->a(Ljava/lang/Object;)Lb5/p8;

    const/4 p1, 0x0

    throw p1
.end method
