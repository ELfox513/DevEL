.class public final Lt4/o;
.super Lt4/e;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lj5/j;


# direct methods
.method public constructor <init>(Lt4/p;Lj5/j;)V
    .locals 0

    iput-object p2, p0, Lt4/o;->a:Lj5/j;

    invoke-direct {p0}, Lt4/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final G6(Lcom/google/android/gms/common/api/Status;Lm3/f;)V
    .locals 2

    if-eqz p2, :cond_0

    new-instance v0, Lm3/c;

    invoke-virtual {p2}, Lm3/f;->Y0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lm3/f;->X0()I

    move-result p2

    invoke-direct {v0, v1, p2}, Lm3/c;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p2, p0, Lt4/o;->a:Lj5/j;

    invoke-static {p1, v0, p2}, Lv3/r;->a(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lj5/j;)V

    return-void
.end method
