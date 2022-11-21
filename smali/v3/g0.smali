.class public final Lv3/g0;
.super Lv3/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lu3/a$d;",
        ">",
        "Lv3/v;"
    }
.end annotation


# instance fields
.field public final c:Lu3/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu3/e<",
            "TO;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu3/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu3/e<",
            "TO;>;)V"
        }
    .end annotation

    const-string v0, "Method is not supported by connectionless client. APIs supporting connectionless client must not call this method."

    invoke-direct {p0, v0}, Lv3/v;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lv3/g0;->c:Lu3/e;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/internal/a;)Lcom/google/android/gms/common/api/internal/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lu3/a$b;",
            "R::",
            "Lu3/l;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/a<",
            "TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lv3/g0;->c:Lu3/e;

    invoke-virtual {v0, p1}, Lu3/e;->i(Lcom/google/android/gms/common/api/internal/a;)Lcom/google/android/gms/common/api/internal/a;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/google/android/gms/common/api/internal/a;)Lcom/google/android/gms/common/api/internal/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lu3/a$b;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/a<",
            "+",
            "Lu3/l;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lv3/g0;->c:Lu3/e;

    invoke-virtual {v0, p1}, Lu3/e;->k(Lcom/google/android/gms/common/api/internal/a;)Lcom/google/android/gms/common/api/internal/a;

    move-result-object p1

    return-object p1
.end method

.method public final d()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lv3/g0;->c:Lu3/e;

    invoke-virtual {v0}, Lu3/e;->q()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method
