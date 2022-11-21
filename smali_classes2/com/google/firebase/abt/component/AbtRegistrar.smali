.class public Lcom/google/firebase/abt/component/AbtRegistrar;
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

.method public static synthetic a(Ls5/e;)Lo5/a;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/abt/component/AbtRegistrar;->lambda$getComponents$0(Ls5/e;)Lo5/a;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getComponents$0(Ls5/e;)Lo5/a;
    .locals 3

    new-instance v0, Lo5/a;

    const-class v1, Landroid/content/Context;

    invoke-interface {p0, v1}, Ls5/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lq5/a;

    invoke-interface {p0, v2}, Ls5/e;->b(Ljava/lang/Class;)Lq6/b;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lo5/a;-><init>(Landroid/content/Context;Lq6/b;)V

    return-object v0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls5/d<",
            "*>;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ls5/d;

    const-class v1, Lo5/a;

    invoke-static {v1}, Ls5/d;->c(Ljava/lang/Class;)Ls5/d$b;

    move-result-object v1

    const-class v2, Landroid/content/Context;

    invoke-static {v2}, Ls5/q;->i(Ljava/lang/Class;)Ls5/q;

    move-result-object v2

    invoke-virtual {v1, v2}, Ls5/d$b;->b(Ls5/q;)Ls5/d$b;

    move-result-object v1

    const-class v2, Lq5/a;

    invoke-static {v2}, Ls5/q;->h(Ljava/lang/Class;)Ls5/q;

    move-result-object v2

    invoke-virtual {v1, v2}, Ls5/d$b;->b(Ls5/q;)Ls5/d$b;

    move-result-object v1

    new-instance v2, Lo5/b;

    invoke-direct {v2}, Lo5/b;-><init>()V

    invoke-virtual {v1, v2}, Ls5/d$b;->e(Ls5/h;)Ls5/d$b;

    move-result-object v1

    invoke-virtual {v1}, Ls5/d$b;->c()Ls5/d;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "fire-abt"

    const-string v2, "21.0.0"

    invoke-static {v1, v2}, Ll7/h;->b(Ljava/lang/String;Ljava/lang/String;)Ls5/d;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
