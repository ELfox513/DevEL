.class public final Lr3/x;
.super Lr3/u;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lr3/u;-><init>()V

    iput-object p1, p0, Lr3/x;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final m()V
    .locals 1

    invoke-virtual {p0}, Lr3/x;->n()V

    iget-object v0, p0, Lr3/x;->a:Landroid/content/Context;

    invoke-static {v0}, Lr3/s;->c(Landroid/content/Context;)Lr3/s;

    move-result-object v0

    invoke-virtual {v0}, Lr3/s;->a()V

    return-void
.end method

.method public final n()V
    .locals 4

    iget-object v0, p0, Lr3/x;->a:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lc4/t;->a(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x34

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Calling UID "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not Google Play services."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final o()V
    .locals 3

    invoke-virtual {p0}, Lr3/x;->n()V

    iget-object v0, p0, Lr3/x;->a:Landroid/content/Context;

    invoke-static {v0}, Lr3/c;->b(Landroid/content/Context;)Lr3/c;

    move-result-object v0

    invoke-virtual {v0}, Lr3/c;->c()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->w:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lr3/c;->d()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v2

    :cond_0
    iget-object v0, p0, Lr3/x;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/google/android/gms/auth/api/signin/a;->b(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lq3/b;

    move-result-object v0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lq3/b;->y()Lj5/i;

    return-void

    :cond_1
    invoke-virtual {v0}, Lq3/b;->z()Lj5/i;

    return-void
.end method
