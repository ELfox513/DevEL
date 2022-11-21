.class public final Lcom/android/billingclient/api/m$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lj1/o;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/billingclient/api/m$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/android/billingclient/api/m$a;
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/m$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Lcom/android/billingclient/api/m;
    .locals 3

    iget-object v0, p0, Lcom/android/billingclient/api/m$a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/billingclient/api/m;

    iget-object v1, p0, Lcom/android/billingclient/api/m$a;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/billingclient/api/m;-><init>(Ljava/lang/String;Ljava/lang/String;Lj1/o;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SKU must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
