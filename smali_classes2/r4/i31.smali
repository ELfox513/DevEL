.class public Lr4/i31;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/bp2;

.field public final b:Lr4/no2;

.field public final c:Lr4/j81;

.field public final d:Lr4/w81;

.field public final e:Lr4/xl2;

.field public final f:Lr4/b71;

.field public final g:Lr4/xb1;

.field public final h:Lr4/a91;


# direct methods
.method public constructor <init>(Lr4/h31;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lr4/h31;->a(Lr4/h31;)Lr4/bp2;

    move-result-object v0

    iput-object v0, p0, Lr4/i31;->a:Lr4/bp2;

    invoke-static {p1}, Lr4/h31;->b(Lr4/h31;)Lr4/no2;

    move-result-object v0

    iput-object v0, p0, Lr4/i31;->b:Lr4/no2;

    invoke-static {p1}, Lr4/h31;->c(Lr4/h31;)Lr4/j81;

    move-result-object v0

    iput-object v0, p0, Lr4/i31;->c:Lr4/j81;

    invoke-static {p1}, Lr4/h31;->d(Lr4/h31;)Lr4/w81;

    move-result-object v0

    iput-object v0, p0, Lr4/i31;->d:Lr4/w81;

    invoke-static {p1}, Lr4/h31;->e(Lr4/h31;)Lr4/xl2;

    move-result-object v0

    iput-object v0, p0, Lr4/i31;->e:Lr4/xl2;

    invoke-static {p1}, Lr4/h31;->f(Lr4/h31;)Lr4/b71;

    move-result-object v0

    iput-object v0, p0, Lr4/i31;->f:Lr4/b71;

    invoke-static {p1}, Lr4/h31;->g(Lr4/h31;)Lr4/xb1;

    move-result-object v0

    iput-object v0, p0, Lr4/i31;->g:Lr4/xb1;

    invoke-static {p1}, Lr4/h31;->h(Lr4/h31;)Lr4/a91;

    move-result-object p1

    iput-object p1, p0, Lr4/i31;->h:Lr4/a91;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lr4/i31;->d:Lr4/w81;

    invoke-virtual {v0}, Lr4/w81;->d()V

    iget-object v0, p0, Lr4/i31;->h:Lr4/a91;

    invoke-virtual {v0, p0}, Lr4/a91;->C0(Lr4/i31;)V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lr4/i31;->c:Lr4/j81;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lr4/j81;->e1(Landroid/content/Context;)V

    return-void
.end method

.method public final c()Lr4/j81;
    .locals 1

    iget-object v0, p0, Lr4/i31;->c:Lr4/j81;

    return-object v0
.end method

.method public final d()Lr4/b71;
    .locals 1

    iget-object v0, p0, Lr4/i31;->f:Lr4/b71;

    return-object v0
.end method

.method public final e()Lr4/xl2;
    .locals 1

    iget-object v0, p0, Lr4/i31;->e:Lr4/xl2;

    return-object v0
.end method

.method public final f()Lr4/ub1;
    .locals 1

    iget-object v0, p0, Lr4/i31;->g:Lr4/xb1;

    invoke-virtual {v0}, Lr4/xb1;->Q()Lr4/ub1;

    move-result-object v0

    return-object v0
.end method
