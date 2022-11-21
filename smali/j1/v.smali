.class public final Lj1/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lj1/f;

.field public final synthetic b:Lj1/e;


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/b;Lj1/f;Lj1/e;)V
    .locals 0

    iput-object p2, p0, Lj1/v;->a:Lj1/f;

    iput-object p3, p0, Lj1/v;->b:Lj1/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lj1/v;->a:Lj1/f;

    sget-object v1, Lcom/android/billingclient/api/k;->r:Lcom/android/billingclient/api/c;

    iget-object v2, p0, Lj1/v;->b:Lj1/e;

    invoke-virtual {v2}, Lj1/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lj1/f;->onConsumeResponse(Lcom/android/billingclient/api/c;Ljava/lang/String;)V

    return-void
.end method
