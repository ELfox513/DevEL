.class public final Lr4/o22;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[Lr4/ja1;

.field public final b:Lr4/hh2;

.field public final c:Lr4/jj2;


# direct methods
.method public varargs constructor <init>([Lr4/ja1;)V
    .locals 4

    new-instance v0, Lr4/hh2;

    invoke-direct {v0}, Lr4/hh2;-><init>()V

    new-instance v1, Lr4/jj2;

    invoke-direct {v1}, Lr4/jj2;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Lr4/ja1;

    iput-object v2, p0, Lr4/o22;->a:[Lr4/ja1;

    const/4 v3, 0x0

    invoke-static {p1, v3, v2, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lr4/o22;->b:Lr4/hh2;

    iput-object v1, p0, Lr4/o22;->c:Lr4/jj2;

    aput-object v0, v2, v3

    const/4 p1, 0x1

    aput-object v1, v2, p1

    return-void
.end method


# virtual methods
.method public final a()[Lr4/ja1;
    .locals 1

    iget-object v0, p0, Lr4/o22;->a:[Lr4/ja1;

    return-object v0
.end method

.method public final b(Lr4/q6;)Lr4/q6;
    .locals 2

    iget-object v0, p0, Lr4/o22;->c:Lr4/jj2;

    iget v1, p1, Lr4/q6;->a:F

    invoke-virtual {v0, v1}, Lr4/jj2;->i(F)V

    iget-object v0, p0, Lr4/o22;->c:Lr4/jj2;

    iget v1, p1, Lr4/q6;->b:F

    invoke-virtual {v0, v1}, Lr4/jj2;->j(F)V

    return-object p1
.end method

.method public final c(Z)Z
    .locals 1

    iget-object v0, p0, Lr4/o22;->b:Lr4/hh2;

    invoke-virtual {v0, p1}, Lr4/hh2;->o(Z)V

    return p1
.end method

.method public final d(J)J
    .locals 1

    iget-object v0, p0, Lr4/o22;->c:Lr4/jj2;

    invoke-virtual {v0, p1, p2}, Lr4/jj2;->k(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public final e()J
    .locals 2

    iget-object v0, p0, Lr4/o22;->b:Lr4/hh2;

    invoke-virtual {v0}, Lr4/hh2;->p()J

    move-result-wide v0

    return-wide v0
.end method
