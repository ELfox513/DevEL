.class public Lx1/j;
.super Lx1/a;
.source "SourceFile"


# instance fields
.field public final a:Lx1/r;

.field public final b:I


# direct methods
.method public constructor <init>(Lx1/r;I)V
    .locals 0

    invoke-direct {p0}, Lx1/a;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lx1/j;->a:Lx1/r;

    iput p2, p0, Lx1/j;->b:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "invokeDynamic == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public d(Lx1/a;)I
    .locals 2

    check-cast p1, Lx1/j;

    iget-object v0, p0, Lx1/j;->a:Lx1/r;

    iget-object v1, p1, Lx1/j;->a:Lx1/r;

    invoke-virtual {v0, v1}, Lx1/a;->c(Lx1/a;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lx1/j;->b:I

    iget p1, p1, Lx1/j;->b:I

    invoke-static {v0, p1}, Lx1/i;->a(II)I

    move-result p1

    return p1
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    const-string v0, "CallSiteRef"

    return-object v0
.end method

.method public n()Lx1/h;
    .locals 1

    iget-object v0, p0, Lx1/j;->a:Lx1/r;

    invoke-virtual {v0}, Lx1/r;->x()Lx1/h;

    move-result-object v0

    return-object v0
.end method

.method public toHuman()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lx1/j;->n()Lx1/h;

    move-result-object v0

    invoke-virtual {v0}, Lx1/h;->toHuman()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lx1/j;->n()Lx1/h;

    move-result-object v0

    invoke-virtual {v0}, Lx1/h;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Ly1/a;
    .locals 1

    iget-object v0, p0, Lx1/j;->a:Lx1/r;

    invoke-virtual {v0}, Lx1/r;->B()Ly1/a;

    move-result-object v0

    return-object v0
.end method

.method public x()Ly1/c;
    .locals 1

    iget-object v0, p0, Lx1/j;->a:Lx1/r;

    invoke-virtual {v0}, Lx1/r;->D()Ly1/c;

    move-result-object v0

    return-object v0
.end method
