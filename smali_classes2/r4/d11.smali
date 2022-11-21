.class public final Lr4/d11;
.super Lr4/co;
.source "SourceFile"


# instance fields
.field public final a:Lr4/p01;

.field public final b:Lr4/vv;


# direct methods
.method public constructor <init>(Lr4/p01;Lr4/vv;)V
    .locals 0

    invoke-direct {p0}, Lr4/co;-><init>()V

    iput-object p1, p0, Lr4/d11;->a:Lr4/p01;

    iput-object p2, p0, Lr4/d11;->b:Lr4/vv;

    return-void
.end method


# virtual methods
.method public final H0(Z)V
    .locals 0

    return-void
.end method

.method public final Y4(Lr4/ex;)V
    .locals 0

    return-void
.end method

.method public final c()Lr4/vv;
    .locals 1

    iget-object v0, p0, Lr4/d11;->b:Lr4/vv;

    return-object v0
.end method

.method public final g()Lr4/hx;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final g3(Lr4/io;)V
    .locals 1

    iget-object v0, p0, Lr4/d11;->a:Lr4/p01;

    invoke-virtual {v0, p1}, Lr4/p01;->p(Lr4/io;)V

    return-void
.end method

.method public final m3(Lf4/a;Lr4/ko;)V
    .locals 0

    return-void
.end method
