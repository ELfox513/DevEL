.class public final Lj1/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Exception;

.field public final synthetic b:Lj1/f;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/b;Ljava/lang/Exception;Lj1/f;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lj1/d0;->a:Ljava/lang/Exception;

    iput-object p3, p0, Lj1/d0;->b:Lj1/f;

    iput-object p4, p0, Lj1/d0;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lj1/d0;->a:Ljava/lang/Exception;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Error consuming purchase; ex: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BillingClient"

    invoke-static {v1, v0}, Lc5/a;->l(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lj1/d0;->b:Lj1/f;

    sget-object v1, Lcom/android/billingclient/api/k;->q:Lcom/android/billingclient/api/c;

    iget-object v2, p0, Lj1/d0;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lj1/f;->onConsumeResponse(Lcom/android/billingclient/api/c;Ljava/lang/String;)V

    return-void
.end method
