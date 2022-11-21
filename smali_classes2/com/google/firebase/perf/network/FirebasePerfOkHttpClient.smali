.class public Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ls7/g;Ld7/b;JJ)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public static enqueue(Ls7/a;Ls7/b;)V
    .locals 7
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    new-instance v3, Lj7/h;

    invoke-direct {v3}, Lj7/h;-><init>()V

    invoke-virtual {v3}, Lj7/h;->l()J

    move-result-wide v4

    new-instance v6, Lf7/j;

    invoke-static {}, Li7/k;->k()Li7/k;

    move-result-object v2

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lf7/j;-><init>(Ls7/b;Li7/k;Lj7/h;J)V

    invoke-interface {p0, v6}, Ls7/a;->g(Ls7/b;)V

    return-void
.end method

.method public static execute(Ls7/a;)Ls7/g;
    .locals 11
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    invoke-static {}, Li7/k;->k()Li7/k;

    move-result-object v0

    invoke-static {v0}, Ld7/b;->j(Li7/k;)Ld7/b;

    move-result-object v0

    new-instance v7, Lj7/h;

    invoke-direct {v7}, Lj7/h;-><init>()V

    invoke-virtual {v7}, Lj7/h;->l()J

    move-result-wide v8

    :try_start_0
    invoke-interface {p0}, Ls7/a;->d()Ls7/g;

    const/4 v10, 0x0

    invoke-virtual {v7}, Lj7/h;->h()J

    move-result-wide v5

    const/4 v1, 0x0

    move-object v2, v0

    move-wide v3, v8

    invoke-static/range {v1 .. v6}, Lcom/google/firebase/perf/network/FirebasePerfOkHttpClient;->a(Ls7/g;Ld7/b;JJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v10

    :catch_0
    move-exception v1

    invoke-interface {p0}, Ls7/a;->O()Ls7/e;

    invoke-virtual {v0, v8, v9}, Ld7/b;->D(J)Ld7/b;

    invoke-virtual {v7}, Lj7/h;->h()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ld7/b;->J(J)Ld7/b;

    invoke-static {v0}, Lf7/k;->d(Ld7/b;)V

    throw v1
.end method
