.class public final Lr3/j;
.super Lr3/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr3/p<",
        "Lq3/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Landroid/content/Context;

.field public final synthetic s:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;


# direct methods
.method public constructor <init>(Lu3/f;Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .locals 0

    iput-object p2, p0, Lr3/j;->r:Landroid/content/Context;

    iput-object p3, p0, Lr3/j;->s:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {p0, p1}, Lr3/p;-><init>(Lu3/f;)V

    return-void
.end method


# virtual methods
.method public final synthetic e(Lcom/google/android/gms/common/api/Status;)Lu3/l;
    .locals 2

    new-instance v0, Lq3/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lq3/c;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public final synthetic n(Lu3/a$b;)V
    .locals 2

    check-cast p1, Lr3/h;

    invoke-virtual {p1}, Lx3/c;->B()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lr3/v;

    new-instance v0, Lr3/m;

    invoke-direct {v0, p0}, Lr3/m;-><init>(Lr3/j;)V

    iget-object v1, p0, Lr3/j;->s:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-interface {p1, v0, v1}, Lr3/v;->Q3(Lr3/t;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    return-void
.end method
