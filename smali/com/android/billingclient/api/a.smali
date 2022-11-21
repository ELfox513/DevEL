.class public abstract Lcom/android/billingclient/api/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static f(Landroid/content/Context;)Lcom/android/billingclient/api/a$a;
    .locals 2

    new-instance v0, Lcom/android/billingclient/api/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/billingclient/api/a$a;-><init>(Landroid/content/Context;Lj1/s;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Lj1/a;Lj1/b;)V
.end method

.method public abstract b(Lj1/e;Lj1/f;)V
.end method

.method public abstract c()V
.end method

.method public abstract d()Z
.end method

.method public abstract e(Landroid/app/Activity;Lj1/d;)Lcom/android/billingclient/api/c;
.end method

.method public abstract g(Ljava/lang/String;)Lcom/android/billingclient/api/Purchase$a;
.end method

.method public abstract h(Lcom/android/billingclient/api/d;Lj1/h;)V
.end method

.method public abstract i(Lj1/c;)V
.end method
