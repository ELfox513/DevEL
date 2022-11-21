.class public final Lr3/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static d:Lr3/s;


# instance fields
.field public a:Lr3/c;

.field public b:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

.field public c:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lr3/c;->b(Landroid/content/Context;)Lr3/c;

    move-result-object p1

    iput-object p1, p0, Lr3/s;->a:Lr3/c;

    invoke-virtual {p1}, Lr3/c;->c()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p1

    iput-object p1, p0, Lr3/s;->b:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    iget-object p1, p0, Lr3/s;->a:Lr3/c;

    invoke-virtual {p1}, Lr3/c;->d()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object p1

    iput-object p1, p0, Lr3/s;->c:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    return-void
.end method

.method public static declared-synchronized c(Landroid/content/Context;)Lr3/s;
    .locals 1

    const-class v0, Lr3/s;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lr3/s;->d(Landroid/content/Context;)Lr3/s;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized d(Landroid/content/Context;)Lr3/s;
    .locals 2

    const-class v0, Lr3/s;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lr3/s;->d:Lr3/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    new-instance v1, Lr3/s;

    invoke-direct {v1, p0}, Lr3/s;-><init>(Landroid/content/Context;)V

    sput-object v1, Lr3/s;->d:Lr3/s;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr3/s;->a:Lr3/c;

    invoke-virtual {v0}, Lr3/c;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lr3/s;->b:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    iput-object v0, p0, Lr3/s;->c:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr3/s;->a:Lr3/c;

    invoke-virtual {v0, p2, p1}, Lr3/c;->f(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    iput-object p2, p0, Lr3/s;->b:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    iput-object p1, p0, Lr3/s;->c:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized e()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr3/s;->b:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lr3/s;->c:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
