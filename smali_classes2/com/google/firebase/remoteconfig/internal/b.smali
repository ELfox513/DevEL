.class public Lcom/google/firebase/remoteconfig/internal/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/remoteconfig/internal/b$a;
    }
.end annotation


# static fields
.field public static final j:J

.field public static final k:[I


# instance fields
.field public final a:Lr6/g;

.field public final b:Lq6/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq6/b<",
            "Lq5/a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Lc4/f;

.field public final e:Ljava/util/Random;

.field public final f:Ln7/e;

.field public final g:Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;

.field public final h:Lcom/google/firebase/remoteconfig/internal/c;

.field public final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/remoteconfig/internal/b;->j:J

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/firebase/remoteconfig/internal/b;->k:[I

    return-void

    :array_0
    .array-data 4
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
    .end array-data
.end method

.method public constructor <init>(Lr6/g;Lq6/b;Ljava/util/concurrent/Executor;Lc4/f;Ljava/util/Random;Ln7/e;Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;Lcom/google/firebase/remoteconfig/internal/c;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr6/g;",
            "Lq6/b<",
            "Lq5/a;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Lc4/f;",
            "Ljava/util/Random;",
            "Ln7/e;",
            "Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;",
            "Lcom/google/firebase/remoteconfig/internal/c;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/b;->a:Lr6/g;

    iput-object p2, p0, Lcom/google/firebase/remoteconfig/internal/b;->b:Lq6/b;

    iput-object p3, p0, Lcom/google/firebase/remoteconfig/internal/b;->c:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Lcom/google/firebase/remoteconfig/internal/b;->d:Lc4/f;

    iput-object p5, p0, Lcom/google/firebase/remoteconfig/internal/b;->e:Ljava/util/Random;

    iput-object p6, p0, Lcom/google/firebase/remoteconfig/internal/b;->f:Ln7/e;

    iput-object p7, p0, Lcom/google/firebase/remoteconfig/internal/b;->g:Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;

    iput-object p8, p0, Lcom/google/firebase/remoteconfig/internal/b;->h:Lcom/google/firebase/remoteconfig/internal/c;

    iput-object p9, p0, Lcom/google/firebase/remoteconfig/internal/b;->i:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Lcom/google/firebase/remoteconfig/internal/b;Lj5/i;Lj5/i;Ljava/util/Date;Lj5/i;)Lj5/i;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/firebase/remoteconfig/internal/b;->s(Lj5/i;Lj5/i;Ljava/util/Date;Lj5/i;)Lj5/i;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/google/firebase/remoteconfig/internal/b;JLj5/i;)Lj5/i;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/remoteconfig/internal/b;->q(JLj5/i;)Lj5/i;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/google/firebase/remoteconfig/internal/b;Ljava/util/Date;Lj5/i;)Lj5/i;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/remoteconfig/internal/b;->t(Ljava/util/Date;Lj5/i;)Lj5/i;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/google/firebase/remoteconfig/internal/b$a;Lcom/google/firebase/remoteconfig/internal/a;)Lj5/i;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/firebase/remoteconfig/internal/b;->r(Lcom/google/firebase/remoteconfig/internal/b$a;Lcom/google/firebase/remoteconfig/internal/a;)Lj5/i;

    move-result-object p0

    return-object p0
.end method

.method private synthetic q(JLj5/i;)Lj5/i;
    .locals 0

    invoke-virtual {p0, p3, p1, p2}, Lcom/google/firebase/remoteconfig/internal/b;->l(Lj5/i;J)Lj5/i;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic r(Lcom/google/firebase/remoteconfig/internal/b$a;Lcom/google/firebase/remoteconfig/internal/a;)Lj5/i;
    .locals 0

    invoke-static {p0}, Lj5/l;->d(Ljava/lang/Object;)Lj5/i;

    move-result-object p0

    return-object p0
.end method

.method private synthetic s(Lj5/i;Lj5/i;Ljava/util/Date;Lj5/i;)Lj5/i;
    .locals 0

    invoke-virtual {p1}, Lj5/i;->p()Z

    move-result p4

    if-nez p4, :cond_0

    new-instance p2, Lm7/f;

    invoke-virtual {p1}, Lj5/i;->k()Ljava/lang/Exception;

    move-result-object p1

    const-string p3, "Firebase Installations failed to get installation ID for fetch."

    invoke-direct {p2, p3, p1}, Lm7/f;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p2}, Lj5/l;->c(Ljava/lang/Exception;)Lj5/i;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p2}, Lj5/i;->p()Z

    move-result p4

    if-nez p4, :cond_1

    new-instance p1, Lm7/f;

    invoke-virtual {p2}, Lj5/i;->k()Ljava/lang/Exception;

    move-result-object p2

    const-string p3, "Firebase Installations failed to get installation auth token for fetch."

    invoke-direct {p1, p3, p2}, Lm7/f;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1}, Lj5/l;->c(Ljava/lang/Exception;)Lj5/i;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lj5/i;->l()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2}, Lj5/i;->l()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lr6/l;

    invoke-virtual {p2}, Lr6/l;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/remoteconfig/internal/b;->k(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Lj5/i;

    move-result-object p1

    return-object p1
.end method

.method private synthetic t(Ljava/util/Date;Lj5/i;)Lj5/i;
    .locals 0

    invoke-virtual {p0, p2, p1}, Lcom/google/firebase/remoteconfig/internal/b;->x(Lj5/i;Ljava/util/Date;)V

    return-object p2
.end method


# virtual methods
.method public final e(JLjava/util/Date;)Z
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/b;->h:Lcom/google/firebase/remoteconfig/internal/c;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/c;->e()Ljava/util/Date;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/remoteconfig/internal/c;->d:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    add-long/2addr v2, p1

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p3, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p1

    return p1
.end method

.method public final f(Lm7/j;)Lm7/j;
    .locals 5

    invoke-virtual {p1}, Lm7/j;->a()I

    move-result v0

    const/16 v1, 0x191

    if-eq v0, v1, :cond_3

    const/16 v1, 0x193

    if-eq v0, v1, :cond_2

    const/16 v1, 0x1ad

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1f4

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const-string v0, "The server returned an unexpected error."

    goto :goto_0

    :pswitch_0
    const-string v0, "The server is unavailable. Please try again later."

    goto :goto_0

    :cond_0
    const-string v0, "There was an internal server error."

    goto :goto_0

    :cond_1
    new-instance p1, Lm7/f;

    const-string v0, "The throttled response from the server was not handled correctly by the FRC SDK."

    invoke-direct {p1, v0}, Lm7/f;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const-string v0, "The user is not authorized to access the project. Please make sure you are using the API key that corresponds to your Firebase project."

    goto :goto_0

    :cond_3
    const-string v0, "The request did not have the required credentials. Please make sure your google-services.json is valid."

    :goto_0
    new-instance v1, Lm7/j;

    invoke-virtual {p1}, Lm7/j;->a()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fetch failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0, p1}, Lm7/j;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1f6
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final g(J)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    const-string p1, "Fetch is throttled. Please wait before calling fetch again: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public h()Lj5/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj5/i<",
            "Lcom/google/firebase/remoteconfig/internal/b$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/b;->h:Lcom/google/firebase/remoteconfig/internal/c;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/c;->f()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/remoteconfig/internal/b;->i(J)Lj5/i;

    move-result-object v0

    return-object v0
.end method

.method public i(J)Lj5/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lj5/i<",
            "Lcom/google/firebase/remoteconfig/internal/b$a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/b;->f:Ln7/e;

    invoke-virtual {v0}, Ln7/e;->e()Lj5/i;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/b;->c:Ljava/util/concurrent/Executor;

    new-instance v2, Ln7/f;

    invoke-direct {v2, p0, p1, p2}, Ln7/f;-><init>(Lcom/google/firebase/remoteconfig/internal/b;J)V

    invoke-virtual {v0, v1, v2}, Lj5/i;->j(Ljava/util/concurrent/Executor;Lj5/a;)Lj5/i;

    move-result-object p1

    return-object p1
.end method

.method public final j(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Lcom/google/firebase/remoteconfig/internal/b$a;
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/b;->g:Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;->c()Ljava/net/HttpURLConnection;

    move-result-object v2

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/b;->g:Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;

    invoke-virtual {p0}, Lcom/google/firebase/remoteconfig/internal/b;->o()Ljava/util/Map;

    move-result-object v5

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/b;->h:Lcom/google/firebase/remoteconfig/internal/c;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/c;->d()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/firebase/remoteconfig/internal/b;->i:Ljava/util/Map;

    move-object v3, p1

    move-object v4, p2

    move-object v8, p3

    invoke-virtual/range {v1 .. v8}, Lcom/google/firebase/remoteconfig/internal/ConfigFetchHttpClient;->fetch(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/util/Date;)Lcom/google/firebase/remoteconfig/internal/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/internal/b$a;->e()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/firebase/remoteconfig/internal/b;->h:Lcom/google/firebase/remoteconfig/internal/c;

    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/internal/b$a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/firebase/remoteconfig/internal/c;->i(Ljava/lang/String;)V

    :cond_0
    iget-object p2, p0, Lcom/google/firebase/remoteconfig/internal/b;->h:Lcom/google/firebase/remoteconfig/internal/c;

    invoke-virtual {p2}, Lcom/google/firebase/remoteconfig/internal/c;->g()V
    :try_end_0
    .catch Lm7/j; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lm7/j;->a()I

    move-result p2

    invoke-virtual {p0, p2, p3}, Lcom/google/firebase/remoteconfig/internal/b;->v(ILjava/util/Date;)Lcom/google/firebase/remoteconfig/internal/c$a;

    move-result-object p2

    invoke-virtual {p1}, Lm7/j;->a()I

    move-result p3

    invoke-virtual {p0, p2, p3}, Lcom/google/firebase/remoteconfig/internal/b;->u(Lcom/google/firebase/remoteconfig/internal/c$a;I)Z

    move-result p3

    if-eqz p3, :cond_1

    new-instance p1, Lm7/h;

    invoke-virtual {p2}, Lcom/google/firebase/remoteconfig/internal/c$a;->a()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    invoke-direct {p1, p2, p3}, Lm7/h;-><init>(J)V

    throw p1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/firebase/remoteconfig/internal/b;->f(Lm7/j;)Lm7/j;

    move-result-object p1

    throw p1
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Lj5/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ")",
            "Lj5/i<",
            "Lcom/google/firebase/remoteconfig/internal/b$a;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/remoteconfig/internal/b;->j(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Lcom/google/firebase/remoteconfig/internal/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/internal/b$a;->f()I

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Lj5/l;->d(Ljava/lang/Object;)Lj5/i;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p2, p0, Lcom/google/firebase/remoteconfig/internal/b;->f:Ln7/e;

    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/internal/b$a;->d()Lcom/google/firebase/remoteconfig/internal/a;

    move-result-object p3

    invoke-virtual {p2, p3}, Ln7/e;->k(Lcom/google/firebase/remoteconfig/internal/a;)Lj5/i;

    move-result-object p2

    iget-object p3, p0, Lcom/google/firebase/remoteconfig/internal/b;->c:Ljava/util/concurrent/Executor;

    new-instance v0, Ln7/i;

    invoke-direct {v0, p1}, Ln7/i;-><init>(Lcom/google/firebase/remoteconfig/internal/b$a;)V

    invoke-virtual {p2, p3, v0}, Lj5/i;->r(Ljava/util/concurrent/Executor;Lj5/h;)Lj5/i;

    move-result-object p1
    :try_end_0
    .catch Lm7/g; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lj5/l;->c(Ljava/lang/Exception;)Lj5/i;

    move-result-object p1

    return-object p1
.end method

.method public final l(Lj5/i;J)Lj5/i;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj5/i<",
            "Lcom/google/firebase/remoteconfig/internal/a;",
            ">;J)",
            "Lj5/i<",
            "Lcom/google/firebase/remoteconfig/internal/b$a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/b;->d:Lc4/f;

    invoke-interface {v1}, Lc4/f;->a()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1}, Lj5/i;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2, p3, v0}, Lcom/google/firebase/remoteconfig/internal/b;->e(JLjava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/google/firebase/remoteconfig/internal/b$a;->c(Ljava/util/Date;)Lcom/google/firebase/remoteconfig/internal/b$a;

    move-result-object p1

    invoke-static {p1}, Lj5/l;->d(Ljava/lang/Object;)Lj5/i;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/firebase/remoteconfig/internal/b;->m(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p2, Lm7/h;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lcom/google/firebase/remoteconfig/internal/b;->g(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {p2, p3, v1, v2}, Lm7/h;-><init>(Ljava/lang/String;J)V

    invoke-static {p2}, Lj5/l;->c(Ljava/lang/Exception;)Lj5/i;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/firebase/remoteconfig/internal/b;->a:Lr6/g;

    invoke-interface {p1}, Lr6/g;->getId()Lj5/i;

    move-result-object p1

    iget-object p2, p0, Lcom/google/firebase/remoteconfig/internal/b;->a:Lr6/g;

    const/4 p3, 0x0

    invoke-interface {p2, p3}, Lr6/g;->a(Z)Lj5/i;

    move-result-object p2

    const/4 v1, 0x2

    new-array v1, v1, [Lj5/i;

    aput-object p1, v1, p3

    const/4 p3, 0x1

    aput-object p2, v1, p3

    invoke-static {v1}, Lj5/l;->h([Lj5/i;)Lj5/i;

    move-result-object p3

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/b;->c:Ljava/util/concurrent/Executor;

    new-instance v2, Ln7/g;

    invoke-direct {v2, p0, p1, p2, v0}, Ln7/g;-><init>(Lcom/google/firebase/remoteconfig/internal/b;Lj5/i;Lj5/i;Ljava/util/Date;)V

    invoke-virtual {p3, v1, v2}, Lj5/i;->j(Ljava/util/concurrent/Executor;Lj5/a;)Lj5/i;

    move-result-object p1

    :goto_0
    iget-object p2, p0, Lcom/google/firebase/remoteconfig/internal/b;->c:Ljava/util/concurrent/Executor;

    new-instance p3, Ln7/h;

    invoke-direct {p3, p0, v0}, Ln7/h;-><init>(Lcom/google/firebase/remoteconfig/internal/b;Ljava/util/Date;)V

    invoke-virtual {p1, p2, p3}, Lj5/i;->j(Ljava/util/concurrent/Executor;Lj5/a;)Lj5/i;

    move-result-object p1

    return-object p1
.end method

.method public final m(Ljava/util/Date;)Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/b;->h:Lcom/google/firebase/remoteconfig/internal/c;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/c;->a()Lcom/google/firebase/remoteconfig/internal/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/c$a;->a()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final n(I)J
    .locals 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Lcom/google/firebase/remoteconfig/internal/b;->k:[I

    array-length v2, v1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    aget p1, v1, p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const-wide/16 v2, 0x2

    div-long v2, v0, v2

    iget-object p1, p0, Lcom/google/firebase/remoteconfig/internal/b;->e:Ljava/util/Random;

    long-to-int v1, v0

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    int-to-long v0, p1

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public final o()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/google/firebase/remoteconfig/internal/b;->b:Lq6/b;

    invoke-interface {v1}, Lq6/b;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq5/a;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lq5/a;->a(Z)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final p(I)Z
    .locals 1

    const/16 v0, 0x1ad

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1f6

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1f7

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1f8

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final u(Lcom/google/firebase/remoteconfig/internal/c$a;I)Z
    .locals 1

    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/internal/c$a;->b()I

    move-result p1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_1

    const/16 p1, 0x1ad

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public final v(ILjava/util/Date;)Lcom/google/firebase/remoteconfig/internal/c$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/firebase/remoteconfig/internal/b;->p(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/google/firebase/remoteconfig/internal/b;->w(Ljava/util/Date;)V

    :cond_0
    iget-object p1, p0, Lcom/google/firebase/remoteconfig/internal/b;->h:Lcom/google/firebase/remoteconfig/internal/c;

    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/internal/c;->a()Lcom/google/firebase/remoteconfig/internal/c$a;

    move-result-object p1

    return-object p1
.end method

.method public final w(Ljava/util/Date;)V
    .locals 6

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/b;->h:Lcom/google/firebase/remoteconfig/internal/c;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/c;->a()Lcom/google/firebase/remoteconfig/internal/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/c$a;->b()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/firebase/remoteconfig/internal/b;->n(I)J

    move-result-wide v1

    new-instance v3, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    add-long/2addr v4, v1

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    iget-object p1, p0, Lcom/google/firebase/remoteconfig/internal/b;->h:Lcom/google/firebase/remoteconfig/internal/c;

    invoke-virtual {p1, v0, v3}, Lcom/google/firebase/remoteconfig/internal/c;->h(ILjava/util/Date;)V

    return-void
.end method

.method public final x(Lj5/i;Ljava/util/Date;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj5/i<",
            "Lcom/google/firebase/remoteconfig/internal/b$a;",
            ">;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lj5/i;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/google/firebase/remoteconfig/internal/b;->h:Lcom/google/firebase/remoteconfig/internal/c;

    invoke-virtual {p1, p2}, Lcom/google/firebase/remoteconfig/internal/c;->k(Ljava/util/Date;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lj5/i;->k()Ljava/lang/Exception;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    instance-of p1, p1, Lm7/h;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/firebase/remoteconfig/internal/b;->h:Lcom/google/firebase/remoteconfig/internal/c;

    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/internal/c;->l()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/firebase/remoteconfig/internal/b;->h:Lcom/google/firebase/remoteconfig/internal/c;

    invoke-virtual {p1}, Lcom/google/firebase/remoteconfig/internal/c;->j()V

    :goto_0
    return-void
.end method
