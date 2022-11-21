.class public Lv3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv3/o;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/Status;)Ljava/lang/Exception;
    .locals 0
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    invoke-static {p1}, Lx3/b;->a(Lcom/google/android/gms/common/api/Status;)Lu3/b;

    move-result-object p1

    return-object p1
.end method
