.class public Lcom/google/firebase/perf/FirebasePerfRegistrar;
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

.method public static synthetic a(Ls5/e;)Lx6/c;
    .locals 0

    invoke-static {p0}, Lcom/google/firebase/perf/FirebasePerfRegistrar;->providesFirebasePerformance(Ls5/e;)Lx6/c;

    move-result-object p0

    return-object p0
.end method

.method private static providesFirebasePerformance(Ls5/e;)Lx6/c;
    .locals 6

    invoke-static {}, La7/a;->b()La7/a$b;

    move-result-object v0

    new-instance v1, Lb7/a;

    const-class v2, Lm5/c;

    invoke-interface {p0, v2}, Ls5/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm5/c;

    const-class v3, Lr6/g;

    invoke-interface {p0, v3}, Ls5/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr6/g;

    const-class v4, Lm7/p;

    invoke-interface {p0, v4}, Ls5/e;->b(Ljava/lang/Class;)Lq6/b;

    move-result-object v4

    const-class v5, Lf2/g;

    invoke-interface {p0, v5}, Ls5/e;->b(Ljava/lang/Class;)Lq6/b;

    move-result-object p0

    invoke-direct {v1, v2, v3, v4, p0}, Lb7/a;-><init>(Lm5/c;Lr6/g;Lq6/b;Lq6/b;)V

    invoke-virtual {v0, v1}, La7/a$b;->b(Lb7/a;)La7/a$b;

    move-result-object p0

    invoke-virtual {p0}, La7/a$b;->a()La7/b;

    move-result-object p0

    invoke-interface {p0}, La7/b;->a()Lx6/c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

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

    const-class v1, Lx6/c;

    invoke-static {v1}, Ls5/d;->c(Ljava/lang/Class;)Ls5/d$b;

    move-result-object v1

    const-class v2, Lm5/c;

    invoke-static {v2}, Ls5/q;->i(Ljava/lang/Class;)Ls5/q;

    move-result-object v2

    invoke-virtual {v1, v2}, Ls5/d$b;->b(Ls5/q;)Ls5/d$b;

    move-result-object v1

    const-class v2, Lm7/p;

    invoke-static {v2}, Ls5/q;->j(Ljava/lang/Class;)Ls5/q;

    move-result-object v2

    invoke-virtual {v1, v2}, Ls5/d$b;->b(Ls5/q;)Ls5/d$b;

    move-result-object v1

    const-class v2, Lr6/g;

    invoke-static {v2}, Ls5/q;->i(Ljava/lang/Class;)Ls5/q;

    move-result-object v2

    invoke-virtual {v1, v2}, Ls5/d$b;->b(Ls5/q;)Ls5/d$b;

    move-result-object v1

    const-class v2, Lf2/g;

    invoke-static {v2}, Ls5/q;->j(Ljava/lang/Class;)Ls5/q;

    move-result-object v2

    invoke-virtual {v1, v2}, Ls5/d$b;->b(Ls5/q;)Ls5/d$b;

    move-result-object v1

    new-instance v2, Lx6/b;

    invoke-direct {v2}, Lx6/b;-><init>()V

    invoke-virtual {v1, v2}, Ls5/d$b;->e(Ls5/h;)Ls5/d$b;

    move-result-object v1

    invoke-virtual {v1}, Ls5/d$b;->c()Ls5/d;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "fire-perf"

    const-string v2, "20.0.3"

    invoke-static {v1, v2}, Ll7/h;->b(Ljava/lang/String;Ljava/lang/String;)Ls5/d;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
