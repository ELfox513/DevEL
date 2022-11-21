.class public final Lr3/m;
.super Lr3/e;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lr3/j;


# direct methods
.method public constructor <init>(Lr3/j;)V
    .locals 0

    iput-object p1, p0, Lr3/m;->a:Lr3/j;

    invoke-direct {p0}, Lr3/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final J2(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lr3/m;->a:Lr3/j;

    iget-object v0, v0, Lr3/j;->r:Landroid/content/Context;

    invoke-static {v0}, Lr3/s;->c(Landroid/content/Context;)Lr3/s;

    move-result-object v0

    iget-object v1, p0, Lr3/m;->a:Lr3/j;

    iget-object v1, v1, Lr3/j;->s:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-virtual {v0, v1, p1}, Lr3/s;->b(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    :cond_0
    iget-object v0, p0, Lr3/m;->a:Lr3/j;

    new-instance v1, Lq3/c;

    invoke-direct {v1, p1, p2}, Lq3/c;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->h(Lu3/l;)V

    return-void
.end method
