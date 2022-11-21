.class public final Lp1/g;
.super Lp1/h;
.source "SourceFile"


# instance fields
.field public final g:Lq1/m;


# direct methods
.method public constructor <init>(Lp1/f;Lx1/e0;ILp1/b;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lp1/h;-><init>(Lp1/f;Lx1/e0;ILp1/b;)V

    new-instance p1, Lq1/m;

    invoke-virtual {p0}, Lp1/h;->b()I

    move-result p2

    invoke-direct {p1, p2}, Lq1/m;-><init>(I)V

    iput-object p1, p0, Lp1/g;->g:Lq1/m;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e(I)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lw1/a;->b(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "field"

    return-object v0
.end method

.method public i(IILx1/a0;Lq1/b;)Lq1/f;
    .locals 2

    new-instance v0, Lq1/l;

    invoke-virtual {p0}, Lp1/h;->c()Lx1/e0;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3, p4}, Lq1/l;-><init>(Lx1/e0;ILx1/a0;Lq1/b;)V

    iget-object p2, p0, Lp1/g;->g:Lq1/m;

    invoke-virtual {p2, p1, v0}, Lq1/m;->x(ILq1/d;)V

    return-object v0
.end method

.method public k()Lq1/m;
    .locals 1

    invoke-virtual {p0}, Lp1/h;->h()V

    iget-object v0, p0, Lp1/g;->g:Lq1/m;

    return-object v0
.end method
