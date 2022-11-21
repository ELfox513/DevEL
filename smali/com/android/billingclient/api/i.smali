.class public final Lcom/android/billingclient/api/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/billingclient/api/b$a;


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/i;->a:Lcom/android/billingclient/api/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/billingclient/api/i;->a:Lcom/android/billingclient/api/b$a;

    iget-object v0, v0, Lcom/android/billingclient/api/b$a;->k:Lcom/android/billingclient/api/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/billingclient/api/b;->k(Lcom/android/billingclient/api/b;I)I

    iget-object v0, p0, Lcom/android/billingclient/api/i;->a:Lcom/android/billingclient/api/b$a;

    iget-object v0, v0, Lcom/android/billingclient/api/b$a;->k:Lcom/android/billingclient/api/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/billingclient/api/b;->m(Lcom/android/billingclient/api/b;Lc5/c;)Lc5/c;

    iget-object v0, p0, Lcom/android/billingclient/api/i;->a:Lcom/android/billingclient/api/b$a;

    sget-object v1, Lcom/android/billingclient/api/k;->r:Lcom/android/billingclient/api/c;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/b$a;->c(Lcom/android/billingclient/api/b$a;Lcom/android/billingclient/api/c;)V

    return-void
.end method
