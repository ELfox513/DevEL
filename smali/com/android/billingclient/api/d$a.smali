.class public Lcom/android/billingclient/api/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lj1/n;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/billingclient/api/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/android/billingclient/api/d;
    .locals 2

    iget-object v0, p0, Lcom/android/billingclient/api/d$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/billingclient/api/d$a;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/billingclient/api/d;

    invoke-direct {v0}, Lcom/android/billingclient/api/d;-><init>()V

    iget-object v1, p0, Lcom/android/billingclient/api/d$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/d;->d(Lcom/android/billingclient/api/d;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/billingclient/api/d$a;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/d;->e(Lcom/android/billingclient/api/d;Ljava/util/List;)Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/billingclient/api/d;->g(Lcom/android/billingclient/api/d;Ljava/util/List;)Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/d;->f(Lcom/android/billingclient/api/d;Ljava/lang/String;)Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SKU list or SkuWithOffer list must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SKU type must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/util/List;)Lcom/android/billingclient/api/d$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/billingclient/api/d$a;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/billingclient/api/d$a;->b:Ljava/util/List;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/android/billingclient/api/d$a;
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/d$a;->a:Ljava/lang/String;

    return-object p0
.end method
