.class public final Lr4/nj1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lr4/n30;

.field public b:Lr4/k30;

.field public c:Lr4/a40;

.field public d:Lr4/x30;

.field public e:Lr4/c80;

.field public final f:Lp/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp/g<",
            "Ljava/lang/String;",
            "Lr4/t30;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lp/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp/g<",
            "Ljava/lang/String;",
            "Lr4/q30;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lp/g;

    invoke-direct {v0}, Lp/g;-><init>()V

    iput-object v0, p0, Lr4/nj1;->f:Lp/g;

    new-instance v0, Lp/g;

    invoke-direct {v0}, Lp/g;-><init>()V

    iput-object v0, p0, Lr4/nj1;->g:Lp/g;

    return-void
.end method


# virtual methods
.method public final a(Lr4/n30;)Lr4/nj1;
    .locals 0

    iput-object p1, p0, Lr4/nj1;->a:Lr4/n30;

    return-object p0
.end method

.method public final b(Lr4/k30;)Lr4/nj1;
    .locals 0

    iput-object p1, p0, Lr4/nj1;->b:Lr4/k30;

    return-object p0
.end method

.method public final c(Lr4/a40;)Lr4/nj1;
    .locals 0

    iput-object p1, p0, Lr4/nj1;->c:Lr4/a40;

    return-object p0
.end method

.method public final d(Lr4/x30;)Lr4/nj1;
    .locals 0

    iput-object p1, p0, Lr4/nj1;->d:Lr4/x30;

    return-object p0
.end method

.method public final e(Lr4/c80;)Lr4/nj1;
    .locals 0

    iput-object p1, p0, Lr4/nj1;->e:Lr4/c80;

    return-object p0
.end method

.method public final f(Ljava/lang/String;Lr4/t30;Lr4/q30;)Lr4/nj1;
    .locals 1

    iget-object v0, p0, Lr4/nj1;->f:Lp/g;

    invoke-virtual {v0, p1, p2}, Lp/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_0

    iget-object p2, p0, Lr4/nj1;->g:Lp/g;

    invoke-virtual {p2, p1, p3}, Lp/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public final g()Lr4/pj1;
    .locals 2

    new-instance v0, Lr4/pj1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lr4/pj1;-><init>(Lr4/nj1;Lr4/oj1;)V

    return-object v0
.end method
