.class public final Lr4/kc0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lc2/a;

.field public final synthetic b:Lr4/mc0;


# direct methods
.method public constructor <init>(Lr4/mc0;Lc2/a;)V
    .locals 0

    iput-object p1, p0, Lr4/kc0;->b:Lr4/mc0;

    iput-object p2, p0, Lr4/kc0;->a:Lc2/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lr4/kc0;->b:Lr4/mc0;

    invoke-static {v0}, Lr4/mc0;->c(Lr4/mc0;)Lr4/lb0;

    move-result-object v0

    iget-object v1, p0, Lr4/kc0;->a:Lc2/a;

    invoke-static {v1}, Lr4/nc0;->a(Lc2/a;)I

    move-result v1

    invoke-interface {v0, v1}, Lr4/lb0;->W(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lr4/cm0;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
