.class public Lcom/google/firebase/remoteconfig/RemoteConfigRegistrar;
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

.method public static synthetic a(Ls5/e;)Lm7/p;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/remoteconfig/RemoteConfigRegistrar;->lambda$getComponents$0(Ls5/e;)Lm7/p;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getComponents$0(Ls5/e;)Lm7/p;
    .locals 7

    new-instance v6, Lm7/p;

    const-class v0, Landroid/content/Context;

    invoke-interface {p0, v0}, Ls5/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    const-class v0, Lm5/c;

    invoke-interface {p0, v0}, Ls5/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lm5/c;

    const-class v0, Lr6/g;

    invoke-interface {p0, v0}, Ls5/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lr6/g;

    const-class v0, Lo5/a;

    invoke-interface {p0, v0}, Ls5/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo5/a;

    const-string v4, "frc"

    invoke-virtual {v0, v4}, Lo5/a;->b(Ljava/lang/String;)Ln5/c;

    move-result-object v4

    const-class v0, Lq5/a;

    invoke-interface {p0, v0}, Ls5/e;->b(Ljava/lang/Class;)Lq6/b;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lm7/p;-><init>(Landroid/content/Context;Lm5/c;Lr6/g;Ln5/c;Lq6/b;)V

    return-object v6
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

    const-class v1, Lm7/p;

    invoke-static {v1}, Ls5/d;->c(Ljava/lang/Class;)Ls5/d$b;

    move-result-object v1

    const-class v2, Landroid/content/Context;

    invoke-static {v2}, Ls5/q;->i(Ljava/lang/Class;)Ls5/q;

    move-result-object v2

    invoke-virtual {v1, v2}, Ls5/d$b;->b(Ls5/q;)Ls5/d$b;

    move-result-object v1

    const-class v2, Lm5/c;

    invoke-static {v2}, Ls5/q;->i(Ljava/lang/Class;)Ls5/q;

    move-result-object v2

    invoke-virtual {v1, v2}, Ls5/d$b;->b(Ls5/q;)Ls5/d$b;

    move-result-object v1

    const-class v2, Lr6/g;

    invoke-static {v2}, Ls5/q;->i(Ljava/lang/Class;)Ls5/q;

    move-result-object v2

    invoke-virtual {v1, v2}, Ls5/d$b;->b(Ls5/q;)Ls5/d$b;

    move-result-object v1

    const-class v2, Lo5/a;

    invoke-static {v2}, Ls5/q;->i(Ljava/lang/Class;)Ls5/q;

    move-result-object v2

    invoke-virtual {v1, v2}, Ls5/d$b;->b(Ls5/q;)Ls5/d$b;

    move-result-object v1

    const-class v2, Lq5/a;

    invoke-static {v2}, Ls5/q;->h(Ljava/lang/Class;)Ls5/q;

    move-result-object v2

    invoke-virtual {v1, v2}, Ls5/d$b;->b(Ls5/q;)Ls5/d$b;

    move-result-object v1

    new-instance v2, Lm7/q;

    invoke-direct {v2}, Lm7/q;-><init>()V

    invoke-virtual {v1, v2}, Ls5/d$b;->e(Ls5/h;)Ls5/d$b;

    move-result-object v1

    invoke-virtual {v1}, Ls5/d$b;->d()Ls5/d$b;

    move-result-object v1

    invoke-virtual {v1}, Ls5/d$b;->c()Ls5/d;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "fire-rc"

    const-string v2, "21.0.1"

    invoke-static {v1, v2}, Ll7/h;->b(Ljava/lang/String;Ljava/lang/String;)Ls5/d;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
