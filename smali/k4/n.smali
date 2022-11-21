.class public final Lk4/n;
.super Lk4/l$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lk4/l$a<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lv3/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lk4/l$a;-><init>(Lv3/d;)V

    return-void
.end method


# virtual methods
.method public final O0()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lh4/h;->b(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lk4/l$a;->o0(Ljava/lang/Object;)V

    return-void
.end method
