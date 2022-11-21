.class public Lk7/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo7/b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk7/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo7/b0<",
        "Ljava/lang/Integer;",
        "Lk7/l;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lk7/k$a;->b(Ljava/lang/Integer;)Lk7/l;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Integer;)Lk7/l;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lk7/l;->c(I)Lk7/l;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lk7/l;->b:Lk7/l;

    :cond_0
    return-object p1
.end method
