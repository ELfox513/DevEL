.class public final Lj/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Landroid/graphics/PorterDuff$Mode;

.field public static c:Lj/i;


# instance fields
.field public a:Lj/i1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Lj/i;->b:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    sget-object v0, Lj/i;->b:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public static declared-synchronized b()Lj/i;
    .locals 2

    const-class v0, Lj/i;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lj/i;->c:Lj/i;

    if-nez v1, :cond_0

    invoke-static {}, Lj/i;->h()V

    :cond_0
    sget-object v1, Lj/i;->c:Lj/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized e(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    const-class v0, Lj/i;

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1}, Lj/i1;->l(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

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

.method public static declared-synchronized h()V
    .locals 3

    const-class v0, Lj/i;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lj/i;->c:Lj/i;

    if-nez v1, :cond_0

    new-instance v1, Lj/i;

    invoke-direct {v1}, Lj/i;-><init>()V

    sput-object v1, Lj/i;->c:Lj/i;

    invoke-static {}, Lj/i1;->h()Lj/i1;

    move-result-object v2

    iput-object v2, v1, Lj/i;->a:Lj/i1;

    sget-object v1, Lj/i;->c:Lj/i;

    iget-object v1, v1, Lj/i;->a:Lj/i1;

    new-instance v2, Lj/i$a;

    invoke-direct {v2}, Lj/i$a;-><init>()V

    invoke-virtual {v1, v2}, Lj/i1;->u(Lj/i1$e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static i(Landroid/graphics/drawable/Drawable;Lj/r1;[I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lj/i1;->w(Landroid/graphics/drawable/Drawable;Lj/r1;[I)V

    return-void
.end method


# virtual methods
.method public declared-synchronized c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lj/i;->a:Lj/i1;

    invoke-virtual {v0, p1, p2}, Lj/i1;->j(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lj/i;->a:Lj/i1;

    invoke-virtual {v0, p1, p2, p3}, Lj/i1;->k(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized f(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lj/i;->a:Lj/i1;

    invoke-virtual {v0, p1, p2}, Lj/i1;->m(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized g(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lj/i;->a:Lj/i1;

    invoke-virtual {v0, p1}, Lj/i1;->s(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
