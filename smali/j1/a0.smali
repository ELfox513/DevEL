.class public final Lj1/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lj1/b;


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/b;Lj1/b;)V
    .locals 0

    iput-object p2, p0, Lj1/a0;->a:Lj1/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lj1/a0;->a:Lj1/b;

    sget-object v1, Lcom/android/billingclient/api/k;->r:Lcom/android/billingclient/api/c;

    invoke-interface {v0, v1}, Lj1/b;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/c;)V

    return-void
.end method
