.class public Lcom/google/firebase/datatransport/TransportRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls5/i;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ls5/e;)Lf2/g;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/datatransport/TransportRegistrar;->lambda$getComponents$0(Ls5/e;)Lf2/g;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getComponents$0(Ls5/e;)Lf2/g;
    .locals 1

    const-class v0, Landroid/content/Context;

    invoke-interface {p0, v0}, Ls5/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Li2/r;->f(Landroid/content/Context;)V

    invoke-static {}, Li2/r;->c()Li2/r;

    move-result-object p0

    sget-object v0, Lg2/a;->h:Lg2/a;

    invoke-virtual {p0, v0}, Li2/r;->g(Li2/e;)Lf2/g;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls5/d<",
            "*>;>;"
        }
    .end annotation

    const-class v0, Lf2/g;

    invoke-static {v0}, Ls5/d;->c(Ljava/lang/Class;)Ls5/d$b;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    invoke-static {v1}, Ls5/q;->i(Ljava/lang/Class;)Ls5/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls5/d$b;->b(Ls5/q;)Ls5/d$b;

    move-result-object v0

    new-instance v1, Lj6/a;

    invoke-direct {v1}, Lj6/a;-><init>()V

    invoke-virtual {v0, v1}, Ls5/d$b;->e(Ls5/h;)Ls5/d$b;

    move-result-object v0

    invoke-virtual {v0}, Ls5/d$b;->c()Ls5/d;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
