.class public final Lx1/n;
.super Lx1/x;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lx1/e0;Lx1/a0;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lx1/x;-><init>(Lx1/e0;Lx1/a0;)V

    return-void
.end method

.method public static x(Ly1/c;)Lx1/n;
    .locals 2

    new-instance v0, Lx1/n;

    invoke-static {p0}, Lx1/e0;->u(Ly1/c;)Lx1/e0;

    move-result-object p0

    sget-object v1, Lx1/a0;->d:Lx1/a0;

    invoke-direct {v0, p0, v1}, Lx1/n;-><init>(Lx1/e0;Lx1/a0;)V

    return-object v0
.end method


# virtual methods
.method public d(Lx1/a;)I
    .locals 1

    invoke-super {p0, p1}, Lx1/x;->d(Lx1/a;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    check-cast p1, Lx1/n;

    invoke-virtual {p0}, Lx1/x;->u()Lx1/a0;

    move-result-object v0

    invoke-virtual {v0}, Lx1/a0;->n()Lx1/d0;

    move-result-object v0

    invoke-virtual {p1}, Lx1/x;->u()Lx1/a0;

    move-result-object p1

    invoke-virtual {p1}, Lx1/a0;->n()Lx1/d0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lx1/a;->c(Lx1/a;)I

    move-result p1

    return p1
.end method

.method public getType()Ly1/c;
    .locals 1

    invoke-virtual {p0}, Lx1/x;->u()Lx1/a0;

    move-result-object v0

    invoke-virtual {v0}, Lx1/a0;->u()Ly1/c;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    const-string v0, "field"

    return-object v0
.end method
