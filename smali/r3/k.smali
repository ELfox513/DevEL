.class public final Lr3/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:La4/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, La4/a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "GoogleSignInCommon"

    invoke-direct {v0, v2, v1}, La4/a;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lr3/k;->a:La4/a;

    return-void
.end method

.method public static a(Landroid/content/Intent;)Lq3/c;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-instance p0, Lq3/c;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->s:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0, v0, v1}, Lq3/c;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    return-object p0

    :cond_0
    const-string v1, "googleSignInStatus"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/Status;

    const-string v2, "googleSignInAccount"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-nez p0, :cond_2

    new-instance p0, Lq3/c;

    if-nez v1, :cond_1

    sget-object v1, Lcom/google/android/gms/common/api/Status;->s:Lcom/google/android/gms/common/api/Status;

    :cond_1
    invoke-direct {p0, v0, v1}, Lq3/c;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    return-object p0

    :cond_2
    new-instance v0, Lq3/c;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->q:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, p0, v1}, Lq3/c;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;
    .locals 3

    sget-object v0, Lr3/k;->a:La4/a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getSignInIntent()"

    invoke-virtual {v0, v2, v1}, La4/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;-><init>(Ljava/lang/String;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.auth.GOOGLE_SIGN_IN"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-class v1, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "config"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p1, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object p1
.end method

.method public static c(Lu3/f;Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;Z)Lu3/g;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu3/f;",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;",
            "Z)",
            "Lu3/g<",
            "Lq3/c;",
            ">;"
        }
    .end annotation

    sget-object v0, Lr3/k;->a:La4/a;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "silentSignIn()"

    invoke-virtual {v0, v3, v2}, La4/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lr3/k;->a:La4/a;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "getEligibleSavedSignInResult()"

    invoke-virtual {v0, v3, v2}, La4/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p2}, Lx3/q;->j(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lr3/s;->c(Landroid/content/Context;)Lr3/s;

    move-result-object v0

    invoke-virtual {v0}, Lr3/s;->f()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->u0()Landroid/accounts/Account;

    move-result-object v3

    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->u0()Landroid/accounts/Account;

    move-result-object v4

    if-nez v3, :cond_1

    if-nez v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v4}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->d1()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->c1()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->c1()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->a1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->a1()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lx3/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    new-instance v3, Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->Z0()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->Z0()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lr3/s;->c(Landroid/content/Context;)Lr3/s;

    move-result-object v0

    invoke-virtual {v0}, Lr3/s;->e()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->f1()Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Lq3/c;

    sget-object v4, Lcom/google/android/gms/common/api/Status;->q:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v3, v0, v4}, Lq3/c;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    goto :goto_1

    :cond_3
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_4

    sget-object p1, Lr3/k;->a:La4/a;

    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "Eligible saved sign in result found"

    invoke-virtual {p1, p3, p2}, La4/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v3, p0}, Lu3/i;->b(Lu3/l;Lu3/f;)Lu3/g;

    move-result-object p0

    return-object p0

    :cond_4
    if-eqz p3, :cond_5

    new-instance p1, Lq3/c;

    new-instance p2, Lcom/google/android/gms/common/api/Status;

    const/4 p3, 0x4

    invoke-direct {p2, p3}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {p1, v2, p2}, Lq3/c;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    invoke-static {p1, p0}, Lu3/i;->b(Lu3/l;Lu3/f;)Lu3/g;

    move-result-object p0

    return-object p0

    :cond_5
    sget-object p3, Lr3/k;->a:La4/a;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "trySilentSignIn()"

    invoke-virtual {p3, v1, v0}, La4/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p3, Lr3/j;

    invoke-direct {p3, p0, p1, p2}, Lr3/j;-><init>(Lu3/f;Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    invoke-virtual {p0, p3}, Lu3/f;->a(Lcom/google/android/gms/common/api/internal/a;)Lcom/google/android/gms/common/api/internal/a;

    move-result-object p0

    new-instance p1, Lv3/l;

    invoke-direct {p1, p0}, Lv3/l;-><init>(Lu3/h;)V

    return-object p1
.end method

.method public static d(Lu3/f;Landroid/content/Context;Z)Lu3/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu3/f;",
            "Landroid/content/Context;",
            "Z)",
            "Lu3/h<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    sget-object v0, Lr3/k;->a:La4/a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Signing out"

    invoke-virtual {v0, v2, v1}, La4/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lr3/k;->e(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    sget-object p1, Lcom/google/android/gms/common/api/Status;->q:Lcom/google/android/gms/common/api/Status;

    invoke-static {p1, p0}, Lu3/i;->c(Lcom/google/android/gms/common/api/Status;Lu3/f;)Lu3/h;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Lr3/l;

    invoke-direct {p1, p0}, Lr3/l;-><init>(Lu3/f;)V

    invoke-virtual {p0, p1}, Lu3/f;->b(Lcom/google/android/gms/common/api/internal/a;)Lcom/google/android/gms/common/api/internal/a;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lr3/s;->c(Landroid/content/Context;)Lr3/s;

    move-result-object p0

    invoke-virtual {p0}, Lr3/s;->a()V

    invoke-static {}, Lu3/f;->c()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu3/f;

    invoke-virtual {v0}, Lu3/f;->f()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lv3/f;->a()V

    return-void
.end method

.method public static f(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;
    .locals 3

    sget-object v0, Lr3/k;->a:La4/a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getFallbackSignInIntent()"

    invoke-virtual {v0, v2, v1}, La4/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lr3/k;->b(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "com.google.android.gms.auth.APPAUTH_SIGN_IN"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public static g(Lu3/f;Landroid/content/Context;Z)Lu3/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu3/f;",
            "Landroid/content/Context;",
            "Z)",
            "Lu3/h<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    sget-object v0, Lr3/k;->a:La4/a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Revoking access"

    invoke-virtual {v0, v2, v1}, La4/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lr3/c;->b(Landroid/content/Context;)Lr3/c;

    move-result-object v0

    invoke-virtual {v0}, Lr3/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lr3/k;->e(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    invoke-static {v0}, Lr3/g;->a(Ljava/lang/String;)Lu3/h;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Lr3/n;

    invoke-direct {p1, p0}, Lr3/n;-><init>(Lu3/f;)V

    invoke-virtual {p0, p1}, Lu3/f;->b(Lcom/google/android/gms/common/api/internal/a;)Lcom/google/android/gms/common/api/internal/a;

    move-result-object p0

    return-object p0
.end method

.method public static h(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;
    .locals 3

    sget-object v0, Lr3/k;->a:La4/a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getNoImplementationSignInIntent()"

    invoke-virtual {v0, v2, v1}, La4/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lr3/k;->b(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "com.google.android.gms.auth.NO_IMPL"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method
