.class public Ld1/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static e:Ld1/k;


# instance fields
.field public a:Ld1/a;

.field public b:Ld1/b;

.field public c:Ld1/i;

.field public d:Ld1/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Li1/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Ld1/a;

    invoke-direct {v0, p1, p2}, Ld1/a;-><init>(Landroid/content/Context;Li1/a;)V

    iput-object v0, p0, Ld1/k;->a:Ld1/a;

    new-instance v0, Ld1/b;

    invoke-direct {v0, p1, p2}, Ld1/b;-><init>(Landroid/content/Context;Li1/a;)V

    iput-object v0, p0, Ld1/k;->b:Ld1/b;

    new-instance v0, Ld1/i;

    invoke-direct {v0, p1, p2}, Ld1/i;-><init>(Landroid/content/Context;Li1/a;)V

    iput-object v0, p0, Ld1/k;->c:Ld1/i;

    new-instance v0, Ld1/j;

    invoke-direct {v0, p1, p2}, Ld1/j;-><init>(Landroid/content/Context;Li1/a;)V

    iput-object v0, p0, Ld1/k;->d:Ld1/j;

    return-void
.end method

.method public static declared-synchronized c(Landroid/content/Context;Li1/a;)Ld1/k;
    .locals 2

    const-class v0, Ld1/k;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ld1/k;->e:Ld1/k;

    if-nez v1, :cond_0

    new-instance v1, Ld1/k;

    invoke-direct {v1, p0, p1}, Ld1/k;-><init>(Landroid/content/Context;Li1/a;)V

    sput-object v1, Ld1/k;->e:Ld1/k;

    :cond_0
    sget-object p0, Ld1/k;->e:Ld1/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public a()Ld1/a;
    .locals 1

    iget-object v0, p0, Ld1/k;->a:Ld1/a;

    return-object v0
.end method

.method public b()Ld1/b;
    .locals 1

    iget-object v0, p0, Ld1/k;->b:Ld1/b;

    return-object v0
.end method

.method public d()Ld1/i;
    .locals 1

    iget-object v0, p0, Ld1/k;->c:Ld1/i;

    return-object v0
.end method

.method public e()Ld1/j;
    .locals 1

    iget-object v0, p0, Ld1/k;->d:Ld1/j;

    return-object v0
.end method
