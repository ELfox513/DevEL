.class public Lcom/android/billingclient/api/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/billingclient/api/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/billingclient/api/c$a;->b:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lj1/l;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/billingclient/api/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/android/billingclient/api/c;
    .locals 2

    new-instance v0, Lcom/android/billingclient/api/c;

    invoke-direct {v0}, Lcom/android/billingclient/api/c;-><init>()V

    iget v1, p0, Lcom/android/billingclient/api/c$a;->a:I

    invoke-static {v0, v1}, Lcom/android/billingclient/api/c;->c(Lcom/android/billingclient/api/c;I)I

    iget-object v1, p0, Lcom/android/billingclient/api/c$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/billingclient/api/c;->d(Lcom/android/billingclient/api/c;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/android/billingclient/api/c$a;
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/c$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public c(I)Lcom/android/billingclient/api/c$a;
    .locals 0

    iput p1, p0, Lcom/android/billingclient/api/c$a;->a:I

    return-object p0
.end method
