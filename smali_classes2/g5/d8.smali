.class public final Lg5/d8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lg5/p7;

.field public final synthetic b:Lg5/w8;


# direct methods
.method public constructor <init>(Lg5/w8;Lg5/p7;)V
    .locals 0

    iput-object p1, p0, Lg5/d8;->b:Lg5/w8;

    iput-object p2, p0, Lg5/d8;->a:Lg5/p7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lg5/d8;->b:Lg5/w8;

    invoke-static {v0}, Lg5/w8;->C(Lg5/w8;)Lg5/g3;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lg5/d8;->b:Lg5/w8;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->F()Lg5/q3;

    move-result-object v0

    invoke-virtual {v0}, Lg5/q3;->m()Lg5/o3;

    move-result-object v0

    const-string v1, "Failed to send current screen to service"

    invoke-virtual {v0, v1}, Lg5/o3;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lg5/d8;->a:Lg5/p7;

    if-nez v0, :cond_1

    iget-object v0, p0, Lg5/d8;->b:Lg5/w8;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->O()Landroid/content/Context;

    move-result-object v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lg5/g3;->L3(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-wide v2, v0, Lg5/p7;->c:J

    iget-object v4, v0, Lg5/p7;->a:Ljava/lang/String;

    iget-object v5, v0, Lg5/p7;->b:Ljava/lang/String;

    iget-object v0, p0, Lg5/d8;->b:Lg5/w8;

    iget-object v0, v0, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v0}, Lg5/b5;->O()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lg5/g3;->L3(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lg5/d8;->b:Lg5/w8;

    invoke-static {v0}, Lg5/w8;->K(Lg5/w8;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lg5/d8;->b:Lg5/w8;

    iget-object v1, v1, Lg5/v5;->a:Lg5/b5;

    invoke-virtual {v1}, Lg5/b5;->F()Lg5/q3;

    move-result-object v1

    invoke-virtual {v1}, Lg5/q3;->m()Lg5/o3;

    move-result-object v1

    const-string v2, "Failed to send current screen to the service"

    invoke-virtual {v1, v2, v0}, Lg5/o3;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
