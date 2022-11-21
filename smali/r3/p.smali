.class public abstract Lr3/p;
.super Lcom/google/android/gms/common/api/internal/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lu3/l;",
        ">",
        "Lcom/google/android/gms/common/api/internal/a<",
        "TR;",
        "Lr3/h;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lu3/f;)V
    .locals 1

    sget-object v0, Ln3/a;->g:Lu3/a;

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/internal/a;-><init>(Lu3/a;Lu3/f;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lu3/l;

    invoke-super {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->h(Lu3/l;)V

    return-void
.end method
