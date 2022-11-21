.class public final Li2/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf2/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lf2/f<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Li2/m;

.field public final b:Ljava/lang/String;

.field public final c:Lf2/b;

.field public final d:Lf2/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf2/e<",
            "TT;[B>;"
        }
    .end annotation
.end field

.field public final e:Li2/q;


# direct methods
.method public constructor <init>(Li2/m;Ljava/lang/String;Lf2/b;Lf2/e;Li2/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li2/m;",
            "Ljava/lang/String;",
            "Lf2/b;",
            "Lf2/e<",
            "TT;[B>;",
            "Li2/q;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li2/p;->a:Li2/m;

    iput-object p2, p0, Li2/p;->b:Ljava/lang/String;

    iput-object p3, p0, Li2/p;->c:Lf2/b;

    iput-object p4, p0, Li2/p;->d:Lf2/e;

    iput-object p5, p0, Li2/p;->e:Li2/q;

    return-void
.end method

.method public static synthetic c(Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0}, Li2/p;->d(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public a(Lf2/c;Lf2/h;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf2/c<",
            "TT;>;",
            "Lf2/h;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Li2/p;->e:Li2/q;

    invoke-static {}, Li2/l;->a()Li2/l$a;

    move-result-object v1

    iget-object v2, p0, Li2/p;->a:Li2/m;

    invoke-virtual {v1, v2}, Li2/l$a;->e(Li2/m;)Li2/l$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Li2/l$a;->c(Lf2/c;)Li2/l$a;

    move-result-object p1

    iget-object v1, p0, Li2/p;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Li2/l$a;->f(Ljava/lang/String;)Li2/l$a;

    move-result-object p1

    iget-object v1, p0, Li2/p;->d:Lf2/e;

    invoke-virtual {p1, v1}, Li2/l$a;->d(Lf2/e;)Li2/l$a;

    move-result-object p1

    iget-object v1, p0, Li2/p;->c:Lf2/b;

    invoke-virtual {p1, v1}, Li2/l$a;->b(Lf2/b;)Li2/l$a;

    move-result-object p1

    invoke-virtual {p1}, Li2/l$a;->a()Li2/l;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Li2/q;->a(Li2/l;Lf2/h;)V

    return-void
.end method

.method public b(Lf2/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf2/c<",
            "TT;>;)V"
        }
    .end annotation

    new-instance v0, Li2/o;

    invoke-direct {v0}, Li2/o;-><init>()V

    invoke-virtual {p0, p1, v0}, Li2/p;->a(Lf2/c;Lf2/h;)V

    return-void
.end method
