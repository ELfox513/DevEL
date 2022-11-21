.class public final synthetic Lr4/h62;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/dh1;


# instance fields
.field public final a:Lr4/t12;


# direct methods
.method public constructor <init>(Lr4/t12;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/h62;->a:Lr4/t12;

    return-void
.end method


# virtual methods
.method public final a(ZLandroid/content/Context;Lr4/w71;)V
    .locals 0

    iget-object p2, p0, Lr4/h62;->a:Lr4/t12;

    :try_start_0
    iget-object p3, p2, Lr4/t12;->b:Ljava/lang/Object;

    check-cast p3, Lr4/zp2;

    invoke-virtual {p3, p1}, Lr4/zp2;->v(Z)V

    iget-object p1, p2, Lr4/t12;->b:Ljava/lang/Object;

    check-cast p1, Lr4/zp2;

    invoke-virtual {p1}, Lr4/zp2;->p()V
    :try_end_0
    .catch Lr4/mp2; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Cannot show rewarded video."

    invoke-static {p2, p1}, Lr4/cm0;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p2, Lr4/ch1;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p1}, Lr4/ch1;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
