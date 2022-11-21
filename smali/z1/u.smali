.class public abstract Lz1/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb2/r;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz1/u$a;
    }
.end annotation


# instance fields
.field public final a:Lz1/s;

.field public b:Lw1/q;


# direct methods
.method public constructor <init>(Lw1/q;Lz1/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    iput-object p2, p0, Lz1/u;->a:Lz1/s;

    iput-object p1, p0, Lz1/u;->b:Lw1/q;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "block == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static D(Lw1/h;Lz1/s;)Lz1/u;
    .locals 1

    new-instance v0, Lz1/l;

    invoke-direct {v0, p0, p1}, Lz1/l;-><init>(Lw1/h;Lz1/s;)V

    return-object v0
.end method


# virtual methods
.method public A()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract B()Z
.end method

.method public C(I)Z
    .locals 1

    iget-object v0, p0, Lz1/u;->b:Lw1/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lw1/q;->B()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final E(Lz1/p;)V
    .locals 2

    iget-object v0, p0, Lz1/u;->b:Lw1/q;

    invoke-virtual {p1, v0}, Lz1/p;->b(Lw1/q;)Lw1/q;

    move-result-object v1

    iput-object v1, p0, Lz1/u;->b:Lw1/q;

    iget-object v1, p0, Lz1/u;->a:Lz1/s;

    invoke-virtual {v1}, Lz1/s;->s()Lz1/v;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lz1/v;->N(Lz1/u;Lw1/q;)V

    invoke-virtual {p0, p1}, Lz1/u;->F(Lz1/p;)V

    return-void
.end method

.method public abstract F(Lz1/p;)V
.end method

.method public G(Lw1/q;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lz1/u;->b:Lw1/q;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "result == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final I(Lw1/k;)V
    .locals 2

    iget-object v0, p0, Lz1/u;->b:Lw1/q;

    invoke-virtual {v0}, Lw1/q;->z()Lw1/k;

    move-result-object v0

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lz1/u;->b:Lw1/q;

    invoke-virtual {v0}, Lw1/q;->z()Lw1/k;

    move-result-object v0

    invoke-virtual {p1, v0}, Lw1/k;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lz1/u;->b:Lw1/q;

    invoke-virtual {v0}, Lw1/q;->B()I

    move-result v0

    iget-object v1, p0, Lz1/u;->b:Lw1/q;

    invoke-virtual {v1}, Lw1/q;->getType()Ly1/c;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lw1/q;->L(ILy1/d;Lw1/k;)Lw1/q;

    move-result-object p1

    iput-object p1, p0, Lz1/u;->b:Lw1/q;

    :cond_1
    return-void
.end method

.method public abstract J()Lw1/h;
.end method

.method public abstract a(Lz1/u$a;)V
.end method

.method public abstract b()Z
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lz1/u;->b:Lw1/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lw1/q;->S(I)Lw1/q;

    move-result-object p1

    iput-object p1, p0, Lz1/u;->b:Lw1/q;

    :cond_0
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lz1/u;->h()Lz1/u;

    move-result-object v0

    return-object v0
.end method

.method public h()Lz1/u;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz1/u;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "unexpected"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public i()Lz1/s;
    .locals 1

    iget-object v0, p0, Lz1/u;->a:Lz1/s;

    return-object v0
.end method

.method public j()Lw1/q;
    .locals 1

    iget-object v0, p0, Lz1/u;->b:Lw1/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lw1/q;->z()Lw1/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz1/u;->b:Lw1/q;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract n()Lw1/t;
.end method

.method public abstract o()Lw1/h;
.end method

.method public t()Lw1/q;
    .locals 1

    iget-object v0, p0, Lz1/u;->b:Lw1/q;

    return-object v0
.end method

.method public abstract u()Lw1/r;
.end method

.method public abstract x()Z
.end method

.method public z()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
