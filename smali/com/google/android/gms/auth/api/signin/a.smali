.class public final Lcom/google/android/gms/auth/api/signin/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lq3/b;
    .locals 1

    new-instance v0, Lq3/b;

    invoke-static {p1}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v0, p0, p1}, Lq3/b;-><init>(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lq3/b;
    .locals 1

    new-instance v0, Lq3/b;

    invoke-static {p1}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v0, p0, p1}, Lq3/b;-><init>(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .locals 0

    invoke-static {p0}, Lr3/s;->c(Landroid/content/Context;)Lr3/s;

    move-result-object p0

    invoke-virtual {p0}, Lr3/s;->e()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Intent;)Lj5/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Lj5/i<",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lr3/k;->a(Landroid/content/Intent;)Lq3/c;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/android/gms/common/api/Status;->s:Lcom/google/android/gms/common/api/Status;

    invoke-static {p0}, Lx3/b;->a(Lcom/google/android/gms/common/api/Status;)Lu3/b;

    move-result-object p0

    invoke-static {p0}, Lj5/l;->c(Ljava/lang/Exception;)Lj5/i;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lq3/c;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    invoke-virtual {p0}, Lq3/c;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->c1()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lj5/l;->d(Ljava/lang/Object;)Lj5/i;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lq3/c;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p0

    invoke-static {p0}, Lx3/b;->a(Lcom/google/android/gms/common/api/Status;)Lu3/b;

    move-result-object p0

    invoke-static {p0}, Lj5/l;->c(Ljava/lang/Exception;)Lj5/i;

    move-result-object p0

    return-object p0
.end method
