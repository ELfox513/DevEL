.class public final Lcom/android/billingclient/api/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic d:Lj1/x;


# direct methods
.method public constructor <init>(Lj1/x;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/n;->d:Lj1/x;

    iput p2, p0, Lcom/android/billingclient/api/n;->a:I

    iput-object p3, p0, Lcom/android/billingclient/api/n;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/billingclient/api/n;->d:Lj1/x;

    iget-object v0, v0, Lj1/x;->b:Lj1/b;

    invoke-static {}, Lcom/android/billingclient/api/c;->b()Lcom/android/billingclient/api/c$a;

    move-result-object v1

    iget v2, p0, Lcom/android/billingclient/api/n;->a:I

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/c$a;->c(I)Lcom/android/billingclient/api/c$a;

    move-result-object v1

    iget-object v2, p0, Lcom/android/billingclient/api/n;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/c$a;->b(Ljava/lang/String;)Lcom/android/billingclient/api/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/c$a;->a()Lcom/android/billingclient/api/c;

    move-result-object v1

    invoke-interface {v0, v1}, Lj1/b;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/c;)V

    return-void
.end method
