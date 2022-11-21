.class public Lc7/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile c:Lc7/a;


# instance fields
.field public final a:Lc7/c;

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc7/a;-><init>(Lc7/c;)V

    return-void
.end method

.method public constructor <init>(Lc7/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc7/a;->b:Z

    if-nez p1, :cond_0

    invoke-static {}, Lc7/c;->c()Lc7/c;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lc7/a;->a:Lc7/c;

    return-void
.end method

.method public static e()Lc7/a;
    .locals 2

    sget-object v0, Lc7/a;->c:Lc7/a;

    if-nez v0, :cond_1

    const-class v0, Lc7/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc7/a;->c:Lc7/a;

    if-nez v1, :cond_0

    new-instance v1, Lc7/a;

    invoke-direct {v1}, Lc7/a;-><init>()V

    sput-object v1, Lc7/a;->c:Lc7/a;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lc7/a;->c:Lc7/a;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lc7/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc7/a;->a:Lc7/c;

    invoke-virtual {v0, p1}, Lc7/c;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lc7/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc7/a;->a:Lc7/c;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v1, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc7/c;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lc7/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc7/a;->a:Lc7/c;

    invoke-virtual {v0, p1}, Lc7/c;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lc7/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc7/a;->a:Lc7/c;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v1, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc7/c;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lc7/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc7/a;->a:Lc7/c;

    invoke-virtual {v0, p1}, Lc7/c;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public varargs g(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lc7/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc7/a;->a:Lc7/c;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v1, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc7/c;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public h(Z)V
    .locals 0

    iput-boolean p1, p0, Lc7/a;->b:Z

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lc7/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc7/a;->a:Lc7/c;

    invoke-virtual {v0, p1}, Lc7/c;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public varargs j(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lc7/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc7/a;->a:Lc7/c;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v1, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc7/c;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
