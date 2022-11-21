.class public final Lr3/o;
.super Lr3/e;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lr3/l;


# direct methods
.method public constructor <init>(Lr3/l;)V
    .locals 0

    iput-object p1, p0, Lr3/o;->a:Lr3/l;

    invoke-direct {p0}, Lr3/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final l1(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lr3/o;->a:Lr3/l;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->h(Lu3/l;)V

    return-void
.end method
