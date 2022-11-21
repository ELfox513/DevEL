.class public final Lr4/q92;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/pj1;

.field public final b:Lr4/d92;

.field public final c:Lr4/m71;


# direct methods
.method public constructor <init>(Lr4/pj1;Lr4/xt2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/q92;->a:Lr4/pj1;

    new-instance v0, Lr4/d92;

    invoke-direct {v0, p2}, Lr4/d92;-><init>(Lr4/xt2;)V

    iput-object v0, p0, Lr4/q92;->b:Lr4/d92;

    invoke-virtual {p1}, Lr4/pj1;->e()Lr4/c80;

    move-result-object p1

    new-instance p2, Lr4/p92;

    invoke-direct {p2, v0, p1}, Lr4/p92;-><init>(Lr4/d92;Lr4/c80;)V

    iput-object p2, p0, Lr4/q92;->c:Lr4/m71;

    return-void
.end method


# virtual methods
.method public final a(Lr4/iv;)V
    .locals 1

    iget-object v0, p0, Lr4/q92;->b:Lr4/d92;

    invoke-virtual {v0, p1}, Lr4/d92;->v(Lr4/iv;)V

    return-void
.end method

.method public final b()Lr4/mh1;
    .locals 3

    new-instance v0, Lr4/mh1;

    iget-object v1, p0, Lr4/q92;->a:Lr4/pj1;

    iget-object v2, p0, Lr4/q92;->b:Lr4/d92;

    invoke-virtual {v2}, Lr4/d92;->c()Lr4/iv;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lr4/mh1;-><init>(Lr4/pj1;Lr4/iv;)V

    return-object v0
.end method

.method public final c()Lr4/d92;
    .locals 1

    iget-object v0, p0, Lr4/q92;->b:Lr4/d92;

    return-object v0
.end method

.method public final d()Lr4/y81;
    .locals 1

    iget-object v0, p0, Lr4/q92;->b:Lr4/d92;

    return-object v0
.end method

.method public final e()Lr4/m71;
    .locals 1

    iget-object v0, p0, Lr4/q92;->c:Lr4/m71;

    return-object v0
.end method
