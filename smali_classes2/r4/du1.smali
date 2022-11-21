.class public final synthetic Lr4/du1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lr4/pu1;

.field public final b:Lr4/n70;


# direct methods
.method public constructor <init>(Lr4/pu1;Lr4/n70;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/du1;->a:Lr4/pu1;

    iput-object p2, p0, Lr4/du1;->b:Lr4/n70;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lr4/du1;->a:Lr4/pu1;

    iget-object v1, p0, Lr4/du1;->b:Lr4/n70;

    :try_start_0
    invoke-virtual {v0}, Lr4/pu1;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Lr4/n70;->c5(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, ""

    invoke-static {v1, v0}, Lr4/cm0;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
