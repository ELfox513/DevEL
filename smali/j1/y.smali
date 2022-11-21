.class public final Lj1/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Exception;

.field public final synthetic b:Lj1/x;


# direct methods
.method public constructor <init>(Lj1/x;Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lj1/y;->b:Lj1/x;

    iput-object p2, p0, Lj1/y;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lj1/y;->a:Ljava/lang/Exception;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Error acknowledge purchase; ex: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BillingClient"

    invoke-static {v1, v0}, Lc5/a;->l(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lj1/y;->b:Lj1/x;

    iget-object v0, v0, Lj1/x;->b:Lj1/b;

    sget-object v1, Lcom/android/billingclient/api/k;->q:Lcom/android/billingclient/api/c;

    invoke-interface {v0, v1}, Lj1/b;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/c;)V

    return-void
.end method
