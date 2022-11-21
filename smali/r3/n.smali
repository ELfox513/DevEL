.class public final Lr3/n;
.super Lr3/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lr3/p<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lu3/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lr3/p;-><init>(Lu3/f;)V

    return-void
.end method


# virtual methods
.method public final synthetic e(Lcom/google/android/gms/common/api/Status;)Lu3/l;
    .locals 0

    return-object p1
.end method

.method public final synthetic n(Lu3/a$b;)V
    .locals 2

    check-cast p1, Lr3/h;

    invoke-virtual {p1}, Lx3/c;->B()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lr3/v;

    new-instance v1, Lr3/q;

    invoke-direct {v1, p0}, Lr3/q;-><init>(Lr3/n;)V

    invoke-virtual {p1}, Lr3/h;->k0()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lr3/v;->H5(Lr3/t;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    return-void
.end method
