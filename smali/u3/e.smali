.class public abstract Lu3/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu3/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lu3/a$d;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Lu3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu3/a<",
            "TO;>;"
        }
    .end annotation
.end field

.field public final d:Lu3/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field public final e:Lv3/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv3/b<",
            "TO;>;"
        }
    .end annotation
.end field

.field public final f:Landroid/os/Looper;

.field public final g:I

.field public final h:Lu3/f;

.field public final i:Lv3/o;

.field public final j:Lv3/f;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lu3/a;Lu3/a$d;Lu3/e$a;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Lu3/a;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Lu3/a$d;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p4    # Lu3/e$a;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lu3/a<",
            "TO;>;TO;",
            "Lu3/e$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null activity is not permitted."

    invoke-static {p1, v0}, Lx3/q;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    invoke-static {p2, v0}, Lx3/q;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead."

    invoke-static {p4, v0}, Lx3/q;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lu3/e;->a:Landroid/content/Context;

    invoke-static {p1}, Lu3/e;->w(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lu3/e;->b:Ljava/lang/String;

    iput-object p2, p0, Lu3/e;->c:Lu3/a;

    iput-object p3, p0, Lu3/e;->d:Lu3/a$d;

    iget-object v2, p4, Lu3/e$a;->b:Landroid/os/Looper;

    iput-object v2, p0, Lu3/e;->f:Landroid/os/Looper;

    invoke-static {p2, p3, v1}, Lv3/b;->a(Lu3/a;Lu3/a$d;Ljava/lang/String;)Lv3/b;

    move-result-object p2

    iput-object p2, p0, Lu3/e;->e:Lv3/b;

    new-instance p3, Lv3/g0;

    invoke-direct {p3, p0}, Lv3/g0;-><init>(Lu3/e;)V

    iput-object p3, p0, Lu3/e;->h:Lu3/f;

    invoke-static {v0}, Lv3/f;->n(Landroid/content/Context;)Lv3/f;

    move-result-object p3

    iput-object p3, p0, Lu3/e;->j:Lv3/f;

    invoke-virtual {p3}, Lv3/f;->o()I

    move-result v0

    iput v0, p0, Lu3/e;->g:I

    iget-object p4, p4, Lu3/e$a;->a:Lv3/o;

    iput-object p4, p0, Lu3/e;->i:Lv3/o;

    instance-of p4, p1, Lcom/google/android/gms/common/api/GoogleApiActivity;

    if-nez p4, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p4, v0, :cond_0

    invoke-static {p1, p3, p2}, Lv3/t;->t(Landroid/app/Activity;Lv3/f;Lv3/b;)V

    :cond_0
    invoke-virtual {p3, p0}, Lv3/f;->p(Lu3/e;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lu3/a;Lu3/a$d;Lv3/o;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Lu3/a;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Lu3/a$d;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p4    # Lv3/o;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lu3/a<",
            "TO;>;TO;",
            "Lv3/o;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lu3/e$a$a;

    invoke-direct {v0}, Lu3/e$a$a;-><init>()V

    invoke-virtual {v0, p4}, Lu3/e$a$a;->c(Lv3/o;)Lu3/e$a$a;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-virtual {v0, p4}, Lu3/e$a$a;->b(Landroid/os/Looper;)Lu3/e$a$a;

    invoke-virtual {v0}, Lu3/e$a$a;->a()Lu3/e$a;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lu3/e;-><init>(Landroid/app/Activity;Lu3/a;Lu3/a$d;Lu3/e$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lu3/a;Lu3/a$d;Lu3/e$a;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Lu3/a;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Lu3/a$d;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p4    # Lu3/e$a;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lu3/a<",
            "TO;>;TO;",
            "Lu3/e$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    invoke-static {p1, v0}, Lx3/q;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    invoke-static {p2, v0}, Lx3/q;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead."

    invoke-static {p4, v0}, Lx3/q;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lu3/e;->a:Landroid/content/Context;

    invoke-static {p1}, Lu3/e;->w(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lu3/e;->b:Ljava/lang/String;

    iput-object p2, p0, Lu3/e;->c:Lu3/a;

    iput-object p3, p0, Lu3/e;->d:Lu3/a$d;

    iget-object v1, p4, Lu3/e$a;->b:Landroid/os/Looper;

    iput-object v1, p0, Lu3/e;->f:Landroid/os/Looper;

    invoke-static {p2, p3, p1}, Lv3/b;->a(Lu3/a;Lu3/a$d;Ljava/lang/String;)Lv3/b;

    move-result-object p1

    iput-object p1, p0, Lu3/e;->e:Lv3/b;

    new-instance p1, Lv3/g0;

    invoke-direct {p1, p0}, Lv3/g0;-><init>(Lu3/e;)V

    iput-object p1, p0, Lu3/e;->h:Lu3/f;

    invoke-static {v0}, Lv3/f;->n(Landroid/content/Context;)Lv3/f;

    move-result-object p1

    iput-object p1, p0, Lu3/e;->j:Lv3/f;

    invoke-virtual {p1}, Lv3/f;->o()I

    move-result p2

    iput p2, p0, Lu3/e;->g:I

    iget-object p2, p4, Lu3/e$a;->a:Lv3/o;

    iput-object p2, p0, Lu3/e;->i:Lv3/o;

    invoke-virtual {p1, p0}, Lv3/f;->p(Lu3/e;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lu3/a;Lu3/a$d;Lv3/o;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Lu3/a;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p3    # Lu3/a$d;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p4    # Lv3/o;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lu3/a<",
            "TO;>;TO;",
            "Lv3/o;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lu3/e$a$a;

    invoke-direct {v0}, Lu3/e$a$a;-><init>()V

    invoke-virtual {v0, p4}, Lu3/e$a$a;->c(Lv3/o;)Lu3/e$a$a;

    invoke-virtual {v0}, Lu3/e$a$a;->a()Lu3/e$a;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lu3/e;-><init>(Landroid/content/Context;Lu3/a;Lu3/a$d;Lu3/e$a;)V

    return-void
.end method

.method public static w(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lc4/o;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-class v0, Landroid/content/Context;

    const-string v1, "getAttributionTag"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public f()Lu3/f;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iget-object v0, p0, Lu3/e;->h:Lu3/f;

    return-object v0
.end method

.method public g()Lx3/d$a;
    .locals 3
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    new-instance v0, Lx3/d$a;

    invoke-direct {v0}, Lx3/d$a;-><init>()V

    iget-object v1, p0, Lu3/e;->d:Lu3/a$d;

    instance-of v2, v1, Lu3/a$d$b;

    if-eqz v2, :cond_0

    check-cast v1, Lu3/a$d$b;

    invoke-interface {v1}, Lu3/a$d$b;->q0()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->u0()Landroid/accounts/Account;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lu3/e;->d:Lu3/a$d;

    instance-of v2, v1, Lu3/a$d$a;

    if-eqz v2, :cond_1

    check-cast v1, Lu3/a$d$a;

    invoke-interface {v1}, Lu3/a$d$a;->u0()Landroid/accounts/Account;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lx3/d$a;->c(Landroid/accounts/Account;)Lx3/d$a;

    iget-object v1, p0, Lu3/e;->d:Lu3/a$d;

    instance-of v2, v1, Lu3/a$d$b;

    if-eqz v2, :cond_3

    check-cast v1, Lu3/a$d$b;

    invoke-interface {v1}, Lu3/a$d$b;->q0()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->d1()Ljava/util/Set;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Lx3/d$a;->d(Ljava/util/Collection;)Lx3/d$a;

    iget-object v1, p0, Lu3/e;->a:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx3/d$a;->e(Ljava/lang/String;)Lx3/d$a;

    iget-object v1, p0, Lu3/e;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx3/d$a;->b(Ljava/lang/String;)Lx3/d$a;

    return-object v0
.end method

.method public h(Lv3/q;)Lj5/i;
    .locals 1
    .param p1    # Lv3/q;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lu3/a$b;",
            ">(",
            "Lv3/q<",
            "TA;TTResult;>;)",
            "Lj5/i<",
            "TTResult;>;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lu3/e;->v(ILv3/q;)Lj5/i;

    move-result-object p1

    return-object p1
.end method

.method public i(Lcom/google/android/gms/common/api/internal/a;)Lcom/google/android/gms/common/api/internal/a;
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/internal/a;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lu3/a$b;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/a<",
            "+",
            "Lu3/l;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lu3/e;->u(ILcom/google/android/gms/common/api/internal/a;)Lcom/google/android/gms/common/api/internal/a;

    return-object p1
.end method

.method public j(Lv3/q;)Lj5/i;
    .locals 1
    .param p1    # Lv3/q;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lu3/a$b;",
            ">(",
            "Lv3/q<",
            "TA;TTResult;>;)",
            "Lj5/i<",
            "TTResult;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lu3/e;->v(ILv3/q;)Lj5/i;

    move-result-object p1

    return-object p1
.end method

.method public k(Lcom/google/android/gms/common/api/internal/a;)Lcom/google/android/gms/common/api/internal/a;
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/internal/a;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lu3/a$b;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/a<",
            "+",
            "Lu3/l;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lu3/e;->u(ILcom/google/android/gms/common/api/internal/a;)Lcom/google/android/gms/common/api/internal/a;

    return-object p1
.end method

.method public l(Lv3/q;)Lj5/i;
    .locals 1
    .param p1    # Lv3/q;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lu3/a$b;",
            ">(",
            "Lv3/q<",
            "TA;TTResult;>;)",
            "Lj5/i<",
            "TTResult;>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lu3/e;->v(ILv3/q;)Lj5/i;

    move-result-object p1

    return-object p1
.end method

.method public final m()Lv3/b;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lv3/b<",
            "TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lu3/e;->e:Lv3/b;

    return-object v0
.end method

.method public n()Lu3/a$d;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    iget-object v0, p0, Lu3/e;->d:Lu3/a$d;

    return-object v0
.end method

.method public o()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iget-object v0, p0, Lu3/e;->a:Landroid/content/Context;

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNullable;
    .end annotation

    iget-object v0, p0, Lu3/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public q()Landroid/os/Looper;
    .locals 1
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    iget-object v0, p0, Lu3/e;->f:Landroid/os/Looper;

    return-object v0
.end method

.method public final r(Landroid/os/Looper;Lv3/c0;)Lu3/a$f;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lv3/c0<",
            "TO;>;)",
            "Lu3/a$f;"
        }
    .end annotation

    invoke-virtual {p0}, Lu3/e;->g()Lx3/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lx3/d$a;->a()Lx3/d;

    move-result-object v4

    iget-object v0, p0, Lu3/e;->c:Lu3/a;

    invoke-virtual {v0}, Lu3/a;->a()Lu3/a$a;

    move-result-object v0

    invoke-static {v0}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lu3/a$a;

    iget-object v2, p0, Lu3/e;->a:Landroid/content/Context;

    iget-object v5, p0, Lu3/e;->d:Lu3/a$d;

    move-object v3, p1

    move-object v6, p2

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Lu3/a$a;->a(Landroid/content/Context;Landroid/os/Looper;Lx3/d;Ljava/lang/Object;Lu3/f$a;Lu3/f$b;)Lu3/a$f;

    move-result-object p1

    invoke-virtual {p0}, Lu3/e;->p()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    instance-of v0, p1, Lx3/c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lx3/c;

    invoke-virtual {v0, p2}, Lx3/c;->N(Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    instance-of v0, p1, Lv3/j;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lv3/j;

    invoke-virtual {v0, p2}, Lv3/j;->p(Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method

.method public final s()I
    .locals 1

    iget v0, p0, Lu3/e;->g:I

    return v0
.end method

.method public final t(Landroid/content/Context;Landroid/os/Handler;)Lv3/t0;
    .locals 2

    new-instance v0, Lv3/t0;

    invoke-virtual {p0}, Lu3/e;->g()Lx3/d$a;

    move-result-object v1

    invoke-virtual {v1}, Lx3/d$a;->a()Lx3/d;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lv3/t0;-><init>(Landroid/content/Context;Landroid/os/Handler;Lx3/d;)V

    return-object v0
.end method

.method public final u(ILcom/google/android/gms/common/api/internal/a;)Lcom/google/android/gms/common/api/internal/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lu3/a$b;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/a<",
            "+",
            "Lu3/l;",
            "TA;>;>(ITT;)TT;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->k()V

    iget-object v0, p0, Lu3/e;->j:Lv3/f;

    invoke-virtual {v0, p0, p1, p2}, Lv3/f;->u(Lu3/e;ILcom/google/android/gms/common/api/internal/a;)V

    return-object p2
.end method

.method public final v(ILv3/q;)Lj5/i;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lu3/a$b;",
            ">(I",
            "Lv3/q<",
            "TA;TTResult;>;)",
            "Lj5/i<",
            "TTResult;>;"
        }
    .end annotation

    new-instance v6, Lj5/j;

    invoke-direct {v6}, Lj5/j;-><init>()V

    iget-object v0, p0, Lu3/e;->j:Lv3/f;

    iget-object v5, p0, Lu3/e;->i:Lv3/o;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lv3/f;->v(Lu3/e;ILv3/q;Lj5/j;Lv3/o;)V

    invoke-virtual {v6}, Lj5/j;->a()Lj5/i;

    move-result-object p1

    return-object p1
.end method
