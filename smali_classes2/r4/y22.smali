.class public final synthetic Lr4/y22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/g31;


# instance fields
.field public final a:Lr4/t12;


# direct methods
.method public constructor <init>(Lr4/t12;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/y22;->a:Lr4/t12;

    return-void
.end method


# virtual methods
.method public final zza()Lr4/lx;
    .locals 2

    iget-object v0, p0, Lr4/y22;->a:Lr4/t12;

    :try_start_0
    iget-object v0, v0, Lr4/t12;->b:Ljava/lang/Object;

    check-cast v0, Lr4/ed0;

    invoke-interface {v0}, Lr4/ed0;->f()Lr4/lx;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lr4/mp2;

    invoke-direct {v1, v0}, Lr4/mp2;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
