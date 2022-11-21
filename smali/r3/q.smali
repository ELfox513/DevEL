.class public final Lr3/q;
.super Lr3/e;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lr3/n;


# direct methods
.method public constructor <init>(Lr3/n;)V
    .locals 0

    iput-object p1, p0, Lr3/q;->a:Lr3/n;

    invoke-direct {p0}, Lr3/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final X1(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lr3/q;->a:Lr3/n;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->h(Lu3/l;)V

    return-void
.end method
