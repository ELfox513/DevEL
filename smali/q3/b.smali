.class public Lq3/b;
.super Lu3/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq3/b$b;,
        Lq3/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu3/e<",
        "Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;",
        ">;"
    }
.end annotation


# static fields
.field public static final k:Lq3/b$b;

.field public static l:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lq3/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lq3/b$b;-><init>(Lq3/h;)V

    sput-object v0, Lq3/b;->k:Lq3/b$b;

    sget v0, Lq3/b$a;->a:I

    sput v0, Lq3/b;->l:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .locals 2

    sget-object v0, Ln3/a;->g:Lu3/a;

    new-instance v1, Lv3/a;

    invoke-direct {v1}, Lv3/a;-><init>()V

    invoke-direct {p0, p1, v0, p2, v1}, Lu3/e;-><init>(Landroid/app/Activity;Lu3/a;Lu3/a$d;Lv3/o;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .locals 2

    sget-object v0, Ln3/a;->g:Lu3/a;

    new-instance v1, Lv3/a;

    invoke-direct {v1}, Lv3/a;-><init>()V

    invoke-direct {p0, p1, v0, p2, v1}, Lu3/e;-><init>(Landroid/content/Context;Lu3/a;Lu3/a$d;Lv3/o;)V

    return-void
.end method


# virtual methods
.method public A()Lj5/i;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj5/i<",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lu3/e;->f()Lu3/f;

    move-result-object v0

    invoke-virtual {p0}, Lu3/e;->o()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lu3/e;->n()Lu3/a$d;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-virtual {p0}, Lq3/b;->B()I

    move-result v3

    sget v4, Lq3/b$a;->c:I

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v0, v1, v2, v3}, Lr3/k;->c(Lu3/f;Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;Z)Lu3/g;

    move-result-object v0

    sget-object v1, Lq3/b;->k:Lq3/b$b;

    invoke-static {v0, v1}, Lx3/p;->a(Lu3/h;Lx3/p$a;)Lj5/i;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized B()I
    .locals 4

    monitor-enter p0

    :try_start_0
    sget v0, Lq3/b;->l:I

    sget v1, Lq3/b$a;->a:I

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lu3/e;->o()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lt3/g;->m()Lt3/g;

    move-result-object v1

    const v2, 0xbdfcb8

    invoke-virtual {v1, v0, v2}, Lt3/g;->h(Landroid/content/Context;I)I

    move-result v2

    if-nez v2, :cond_0

    sget v0, Lq3/b$a;->d:I

    sput v0, Lq3/b;->l:I

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lt3/g;->b(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "com.google.android.gms.auth.api.fallback"

    invoke-static {v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lq3/b$a;->c:I

    sput v0, Lq3/b;->l:I

    goto :goto_0

    :cond_1
    sget v0, Lq3/b$a;->b:I

    sput v0, Lq3/b;->l:I

    :cond_2
    :goto_0
    sget v0, Lq3/b;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public x()Landroid/content/Intent;
    .locals 4

    invoke-virtual {p0}, Lu3/e;->o()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lq3/h;->a:[I

    invoke-virtual {p0}, Lq3/b;->B()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget v1, v1, v2

    if-eq v1, v3, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lu3/e;->n()Lu3/a$d;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-static {v0, v1}, Lr3/k;->h(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lu3/e;->n()Lu3/a$d;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-static {v0, v1}, Lr3/k;->b(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lu3/e;->n()Lu3/a$d;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-static {v0, v1}, Lr3/k;->f(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public y()Lj5/i;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj5/i<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lu3/e;->f()Lu3/f;

    move-result-object v0

    invoke-virtual {p0}, Lu3/e;->o()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lq3/b;->B()I

    move-result v2

    sget v3, Lq3/b$a;->c:I

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v1, v2}, Lr3/k;->g(Lu3/f;Landroid/content/Context;Z)Lu3/h;

    move-result-object v0

    invoke-static {v0}, Lx3/p;->b(Lu3/h;)Lj5/i;

    move-result-object v0

    return-object v0
.end method

.method public z()Lj5/i;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj5/i<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lu3/e;->f()Lu3/f;

    move-result-object v0

    invoke-virtual {p0}, Lu3/e;->o()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lq3/b;->B()I

    move-result v2

    sget v3, Lq3/b$a;->c:I

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v1, v2}, Lr3/k;->d(Lu3/f;Landroid/content/Context;Z)Lu3/h;

    move-result-object v0

    invoke-static {v0}, Lx3/p;->b(Lu3/h;)Lj5/i;

    move-result-object v0

    return-object v0
.end method
