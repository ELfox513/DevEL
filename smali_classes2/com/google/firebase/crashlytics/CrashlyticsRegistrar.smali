.class public Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls5/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;Ls5/e;)Lt5/g;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;->b(Ls5/e;)Lt5/g;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(Ls5/e;)Lt5/g;
    .locals 4

    const-class v0, Lm5/c;

    invoke-interface {p1, v0}, Ls5/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm5/c;

    const-class v1, Lu5/a;

    invoke-interface {p1, v1}, Ls5/e;->e(Ljava/lang/Class;)Lq6/a;

    move-result-object v1

    const-class v2, Lq5/a;

    invoke-interface {p1, v2}, Ls5/e;->e(Ljava/lang/Class;)Lq6/a;

    move-result-object v2

    const-class v3, Lr6/g;

    invoke-interface {p1, v3}, Ls5/e;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr6/g;

    invoke-static {v0, p1, v1, v2}, Lt5/g;->a(Lm5/c;Lr6/g;Lq6/a;Lq6/a;)Lt5/g;

    move-result-object p1

    return-object p1
.end method

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

    const-class v1, Lt5/g;

    invoke-static {v1}, Ls5/d;->c(Ljava/lang/Class;)Ls5/d$b;

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

    const-class v2, Lu5/a;

    invoke-static {v2}, Ls5/q;->a(Ljava/lang/Class;)Ls5/q;

    move-result-object v2

    invoke-virtual {v1, v2}, Ls5/d$b;->b(Ls5/q;)Ls5/d$b;

    move-result-object v1

    const-class v2, Lq5/a;

    invoke-static {v2}, Ls5/q;->a(Ljava/lang/Class;)Ls5/q;

    move-result-object v2

    invoke-virtual {v1, v2}, Ls5/d$b;->b(Ls5/q;)Ls5/d$b;

    move-result-object v1

    new-instance v2, Lt5/f;

    invoke-direct {v2, p0}, Lt5/f;-><init>(Lcom/google/firebase/crashlytics/CrashlyticsRegistrar;)V

    invoke-virtual {v1, v2}, Ls5/d$b;->e(Ls5/h;)Ls5/d$b;

    move-result-object v1

    invoke-virtual {v1}, Ls5/d$b;->d()Ls5/d$b;

    move-result-object v1

    invoke-virtual {v1}, Ls5/d$b;->c()Ls5/d;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "fire-cls"

    const-string v2, "18.2.3"

    invoke-static {v1, v2}, Ll7/h;->b(Ljava/lang/String;Ljava/lang/String;)Ls5/d;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
