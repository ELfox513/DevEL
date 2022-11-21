.class public final Lv3/k1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu3/h$a;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

.field public final synthetic b:Lv3/s;


# direct methods
.method public constructor <init>(Lv3/s;Lcom/google/android/gms/common/api/internal/BasePendingResult;)V
    .locals 0

    iput-object p1, p0, Lv3/k1;->b:Lv3/s;

    iput-object p2, p0, Lv3/k1;->a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object p1, p0, Lv3/k1;->b:Lv3/s;

    invoke-static {p1}, Lv3/s;->f(Lv3/s;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lv3/k1;->a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
