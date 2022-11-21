.class public final Lj1/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lj1/f;

.field public final synthetic b:Lcom/android/billingclient/api/c;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/b;Lj1/f;Lcom/android/billingclient/api/c;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lj1/c0;->a:Lj1/f;

    iput-object p3, p0, Lj1/c0;->b:Lcom/android/billingclient/api/c;

    iput-object p4, p0, Lj1/c0;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const-string v0, "BillingClient"

    const-string v1, "Successfully consumed purchase."

    invoke-static {v0, v1}, Lc5/a;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lj1/c0;->a:Lj1/f;

    iget-object v1, p0, Lj1/c0;->b:Lcom/android/billingclient/api/c;

    iget-object v2, p0, Lj1/c0;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lj1/f;->onConsumeResponse(Lcom/android/billingclient/api/c;Ljava/lang/String;)V

    return-void
.end method
