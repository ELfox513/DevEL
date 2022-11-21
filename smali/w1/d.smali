.class public abstract Lw1/d;
.super Lw1/h;
.source "SourceFile"


# instance fields
.field public final p:Lx1/a;


# direct methods
.method public constructor <init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;Lx1/a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lw1/h;-><init>(Lw1/t;Lw1/w;Lw1/q;Lw1/r;)V

    if-eqz p5, :cond_0

    iput-object p5, p0, Lw1/d;->p:Lx1/a;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "cst == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public c(Lw1/h;)Z
    .locals 1

    invoke-super {p0, p1}, Lw1/h;->c(Lw1/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw1/d;->p:Lx1/a;

    check-cast p1, Lw1/d;

    invoke-virtual {p1}, Lw1/d;->t()Lx1/a;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lw1/d;->p:Lx1/a;

    invoke-interface {v0}, Lb2/r;->toHuman()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public t()Lx1/a;
    .locals 1

    iget-object v0, p0, Lw1/d;->p:Lx1/a;

    return-object v0
.end method
