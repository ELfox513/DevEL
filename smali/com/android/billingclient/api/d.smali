.class public Lcom/android/billingclient/api/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/d$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/m;",
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

.method public static c()Lcom/android/billingclient/api/d$a;
    .locals 2

    new-instance v0, Lcom/android/billingclient/api/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/billingclient/api/d$a;-><init>(Lj1/n;)V

    return-object v0
.end method

.method public static synthetic d(Lcom/android/billingclient/api/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/d;->a:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic e(Lcom/android/billingclient/api/d;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/android/billingclient/api/d;->c:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic f(Lcom/android/billingclient/api/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/billingclient/api/d;->b:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic g(Lcom/android/billingclient/api/d;Ljava/util/List;)Ljava/util/List;
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/billingclient/api/d;->d:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/billingclient/api/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/billingclient/api/d;->c:Ljava/util/List;

    return-object v0
.end method
