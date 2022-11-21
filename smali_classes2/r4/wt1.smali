.class public final Lr4/wt1;
.super Lr4/gv;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lr4/qt1;

.field public final synthetic b:Lr4/xt1;


# direct methods
.method public constructor <init>(Lr4/xt1;Lr4/qt1;)V
    .locals 0

    iput-object p1, p0, Lr4/wt1;->b:Lr4/xt1;

    iput-object p2, p0, Lr4/wt1;->a:Lr4/qt1;

    invoke-direct {p0}, Lr4/gv;-><init>()V

    return-void
.end method


# virtual methods
.method public final D(I)V
    .locals 3

    iget-object v0, p0, Lr4/wt1;->a:Lr4/qt1;

    iget-object v1, p0, Lr4/wt1;->b:Lr4/xt1;

    invoke-static {v1}, Lr4/xt1;->d(Lr4/xt1;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lr4/qt1;->f(JI)V

    return-void
.end method

.method public final a()V
    .locals 3

    iget-object v0, p0, Lr4/wt1;->a:Lr4/qt1;

    iget-object v1, p0, Lr4/wt1;->b:Lr4/xt1;

    invoke-static {v1}, Lr4/xt1;->d(Lr4/xt1;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lr4/qt1;->i(J)V

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lr4/wt1;->a:Lr4/qt1;

    iget-object v1, p0, Lr4/wt1;->b:Lr4/xt1;

    invoke-static {v1}, Lr4/xt1;->d(Lr4/xt1;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lr4/qt1;->e(J)V

    return-void
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lr4/wt1;->a:Lr4/qt1;

    iget-object v1, p0, Lr4/wt1;->b:Lr4/xt1;

    invoke-static {v1}, Lr4/xt1;->d(Lr4/xt1;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lr4/qt1;->h(J)V

    return-void
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, Lr4/wt1;->a:Lr4/qt1;

    iget-object v1, p0, Lr4/wt1;->b:Lr4/xt1;

    invoke-static {v1}, Lr4/xt1;->d(Lr4/xt1;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lr4/qt1;->g(J)V

    return-void
.end method

.method public final g0(Lr4/lt;)V
    .locals 3

    iget-object v0, p0, Lr4/wt1;->a:Lr4/qt1;

    iget-object v1, p0, Lr4/wt1;->b:Lr4/xt1;

    invoke-static {v1}, Lr4/xt1;->d(Lr4/xt1;)J

    move-result-wide v1

    iget p1, p1, Lr4/lt;->a:I

    invoke-virtual {v0, v1, v2, p1}, Lr4/qt1;->f(JI)V

    return-void
.end method

.method public final j()V
    .locals 0

    return-void
.end method
