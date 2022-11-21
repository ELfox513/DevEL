.class public final Lj1/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lj1/h;


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/b;Lj1/h;)V
    .locals 0

    iput-object p2, p0, Lj1/t;->a:Lj1/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lj1/t;->a:Lj1/h;

    sget-object v1, Lcom/android/billingclient/api/k;->r:Lcom/android/billingclient/api/c;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lj1/h;->onSkuDetailsResponse(Lcom/android/billingclient/api/c;Ljava/util/List;)V

    return-void
.end method
