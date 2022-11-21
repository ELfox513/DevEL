.class public final Lj1/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lj1/f;

.field public final synthetic d:Lcom/android/billingclient/api/c;

.field public final synthetic k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/b;ILj1/f;Lcom/android/billingclient/api/c;Ljava/lang/String;)V
    .locals 0

    iput p2, p0, Lj1/e0;->a:I

    iput-object p3, p0, Lj1/e0;->b:Lj1/f;

    iput-object p4, p0, Lj1/e0;->d:Lcom/android/billingclient/api/c;

    iput-object p5, p0, Lj1/e0;->k:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lj1/e0;->a:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x3f

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Error consuming purchase with token. Response code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BillingClient"

    invoke-static {v1, v0}, Lc5/a;->l(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lj1/e0;->b:Lj1/f;

    iget-object v1, p0, Lj1/e0;->d:Lcom/android/billingclient/api/c;

    iget-object v2, p0, Lj1/e0;->k:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lj1/f;->onConsumeResponse(Lcom/android/billingclient/api/c;Ljava/lang/String;)V

    return-void
.end method
