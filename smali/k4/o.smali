.class public final Lk4/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv3/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lv3/d<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lx3/c$e;


# direct methods
.method public constructor <init>(Lx3/c$e;)V
    .locals 0

    iput-object p1, p0, Lk4/o;->a:Lx3/c$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    iget-object p1, p0, Lk4/o;->a:Lx3/c$e;

    invoke-interface {p1}, Lx3/c$e;->O0()V

    return-void
.end method

.method public final synthetic b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    iget-object p1, p0, Lk4/o;->a:Lx3/c$e;

    invoke-interface {p1}, Lx3/c$e;->O0()V

    return-void
.end method
