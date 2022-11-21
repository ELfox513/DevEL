.class public final Lx1/q;
.super Lx1/e;
.source "SourceFile"


# instance fields
.field public p:Lx1/z;


# direct methods
.method public constructor <init>(Lx1/e0;Lx1/a0;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lx1/e;-><init>(Lx1/e0;Lx1/a0;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lx1/q;->p:Lx1/z;

    return-void
.end method


# virtual methods
.method public E()Lx1/z;
    .locals 3

    iget-object v0, p0, Lx1/q;->p:Lx1/z;

    if-nez v0, :cond_0

    new-instance v0, Lx1/z;

    invoke-virtual {p0}, Lx1/x;->n()Lx1/e0;

    move-result-object v1

    invoke-virtual {p0}, Lx1/x;->u()Lx1/a0;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lx1/z;-><init>(Lx1/e0;Lx1/a0;)V

    iput-object v0, p0, Lx1/q;->p:Lx1/z;

    :cond_0
    iget-object v0, p0, Lx1/q;->p:Lx1/z;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    const-string v0, "ifaceMethod"

    return-object v0
.end method
