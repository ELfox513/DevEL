.class public final Lj1/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lj1/e;

.field public final synthetic b:Lj1/f;

.field public final synthetic c:Lcom/android/billingclient/api/b;


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/b;Lj1/e;Lj1/f;)V
    .locals 0

    iput-object p1, p0, Lj1/w;->c:Lcom/android/billingclient/api/b;

    iput-object p2, p0, Lj1/w;->a:Lj1/e;

    iput-object p3, p0, Lj1/w;->b:Lj1/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lj1/w;->c:Lcom/android/billingclient/api/b;

    iget-object v1, p0, Lj1/w;->a:Lj1/e;

    iget-object v2, p0, Lj1/w;->b:Lj1/f;

    invoke-static {v0, v1, v2}, Lcom/android/billingclient/api/b;->t(Lcom/android/billingclient/api/b;Lj1/e;Lj1/f;)V

    const/4 v0, 0x0

    return-object v0
.end method
