.class public final Lr4/zt1;
.super Lr4/ei0;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lr4/bu1;


# direct methods
.method public constructor <init>(Lr4/bu1;)V
    .locals 0

    iput-object p1, p0, Lr4/zt1;->a:Lr4/bu1;

    invoke-direct {p0}, Lr4/ei0;-><init>()V

    return-void
.end method


# virtual methods
.method public final C(I)V
    .locals 3

    iget-object v0, p0, Lr4/zt1;->a:Lr4/bu1;

    invoke-static {v0}, Lr4/bu1;->e(Lr4/bu1;)Lr4/qt1;

    move-result-object v0

    iget-object v1, p0, Lr4/zt1;->a:Lr4/bu1;

    invoke-static {v1}, Lr4/bu1;->d(Lr4/bu1;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lr4/qt1;->l(JI)V

    return-void
.end method

.method public final F(Lr4/lt;)V
    .locals 3

    iget-object v0, p0, Lr4/zt1;->a:Lr4/bu1;

    invoke-static {v0}, Lr4/bu1;->e(Lr4/bu1;)Lr4/qt1;

    move-result-object v0

    iget-object v1, p0, Lr4/zt1;->a:Lr4/bu1;

    invoke-static {v1}, Lr4/bu1;->d(Lr4/bu1;)J

    move-result-wide v1

    iget p1, p1, Lr4/lt;->a:I

    invoke-virtual {v0, v1, v2, p1}, Lr4/qt1;->l(JI)V

    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lr4/zt1;->a:Lr4/bu1;

    invoke-static {v0}, Lr4/bu1;->e(Lr4/bu1;)Lr4/qt1;

    move-result-object v0

    iget-object v1, p0, Lr4/zt1;->a:Lr4/bu1;

    invoke-static {v1}, Lr4/bu1;->d(Lr4/bu1;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lr4/qt1;->k(J)V

    return-void
.end method
