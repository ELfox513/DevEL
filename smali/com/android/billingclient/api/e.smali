.class public final Lcom/android/billingclient/api/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/android/billingclient/api/Purchase$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/android/billingclient/api/b;


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/e;->b:Lcom/android/billingclient/api/b;

    iput-object p2, p0, Lcom/android/billingclient/api/e;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/billingclient/api/e;->b:Lcom/android/billingclient/api/b;

    iget-object v1, p0, Lcom/android/billingclient/api/e;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/b;->o(Lcom/android/billingclient/api/b;Ljava/lang/String;)Lcom/android/billingclient/api/Purchase$a;

    move-result-object v0

    return-object v0
.end method
