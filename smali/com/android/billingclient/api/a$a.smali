.class public final Lcom/android/billingclient/api/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Z

.field public final b:Landroid/content/Context;

.field public c:Lj1/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/a$a;->b:Landroid/content/Context;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lj1/s;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/billingclient/api/a$a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/billingclient/api/a;
    .locals 5

    iget-object v0, p0, Lcom/android/billingclient/api/a$a;->b:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/billingclient/api/a$a;->c:Lj1/g;

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lcom/android/billingclient/api/a$a;->a:Z

    if-eqz v2, :cond_0

    new-instance v3, Lcom/android/billingclient/api/b;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v2, v0, v1}, Lcom/android/billingclient/api/b;-><init>(Ljava/lang/String;ZLandroid/content/Context;Lj1/g;)V

    return-object v3

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Support for pending purchases must be enabled. Enable this by calling \'enablePendingPurchases()\' on BillingClientBuilder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please provide a valid listener for purchases updates."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Please provide a valid Context."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()Lcom/android/billingclient/api/a$a;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/billingclient/api/a$a;->a:Z

    return-object p0
.end method

.method public final c(Lj1/g;)Lcom/android/billingclient/api/a$a;
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/a$a;->c:Lj1/g;

    return-object p0
.end method
